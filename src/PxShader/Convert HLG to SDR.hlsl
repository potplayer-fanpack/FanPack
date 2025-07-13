
// Convert HDR to SDR for ARIB STD-B67 (HLG)

// Source code from MPC-VR, adapted by Iron_Butterfly

#define SRC_LUMINANCE_PEAK     1000.0

#define DISPLAY_LUMINANCE_PEAK 300.0

//------------------------------------------------------------------------------

float3 inverse_HLG(float3 x)

{
   
    const float B67_a = 0.17883277;

    const float B67_b = 0.28466892;
 
    const float B67_c = 0.55991073;
   
    const float B67_inv_r2 = 4.0;

 
    x = (x <= 0.5)
    
    ? x * x * B67_inv_r2
     
    : exp((x - B67_c) / B67_a) + B67_b;



    return x;

}

//------------------------------------------------------------------------------
float3 hable(float3 x)

{
    
    const float A = 0.15, B = 0.50, C = 0.10, D = 0.20, E = 0.02, F = 0.30;



    return ((x * (A * x + (C * B)) + (D * E)) / (x * (A * x + B) + (D * F))) - E / F;

}


//------------------------------------------------------------------------------
float3 ToneMappingHable(const float3 rgb)

{
   
   static const float3 HABLE_DIV = hable(4.8);


 
   return hable(rgb) / HABLE_DIV;

}

//------------------------------------------------------------------------------
static const float REC_709_PRIMARIES[3][2]  = { { 0.640, 0.330 }, { 0.300, 0.600 }, { 0.150, 0.060 } };

static const float REC_2020_PRIMARIES[3][2] = { { 0.708, 0.292 }, { 0.170, 0.797 }, { 0.131, 0.046 } };


static const float ILLUMINANT_D65[2] = { 0.3127, 0.3290 };
//------------------------


const float det2(const float a00, const float a01, const float a10, const float a11)

{
    
    return a00 * a11 - a01 * a10;

}


//------------------------------------------------------------------------------
const float determinant(const float3x3 m)

{
    
    float det = 0;

    det += m[0][0] * det2(m[1][1], m[1][2], m[2][1], m[2][2]);

    det -= m[0][1] * det2(m[1][0], m[1][2], m[2][0], m[2][2]);

    det += m[0][2] * det2(m[1][0], m[1][1], m[2][0], m[2][1]);



    return det;

}


//------------------------------------------------------------------------------
const float3x3 inverse(const float3x3 m)

{
    
    float3x3 ret;


    const float det = determinant(m);


    ret[0][0] = det2(m[1][1], m[1][2], m[2][1], m[2][2]) / det;

    ret[0][1] = det2(m[0][2], m[0][1], m[2][2], m[2][1]) / det;

    ret[0][2] = det2(m[0][1], m[0][2], m[1][1], m[1][2]) / det;

    ret[1][0] = det2(m[1][2], m[1][0], m[2][2], m[2][0]) / det;
 
    ret[1][1] = det2(m[0][0], m[0][2], m[2][0], m[2][2]) / det;

    ret[1][2] = det2(m[0][2], m[0][0], m[1][2], m[1][0]) / det;
    ret[2][0] = det2(m[1][0], m[1][1], m[2][0], m[2][1]) / det;

    ret[2][1] = det2(m[0][1], m[0][0], m[2][1], m[2][0]) / det;

    ret[2][2] = det2(m[0][0], m[0][1], m[1][0], m[1][1]) / det;



    return ret;

}


//------------------------------------------------------------------------------
const float3 xy_to_xyz(const float x, const float y)

{
    
    float3 ret;



    ret[0] = x / y;

    ret[1] = 1.0;

    ret[2] = (1.0 - x - y) / y;



    return ret;

}


//------------------------------------------------------------------------------
const float3 get_d65_xyz()

{
    
    return xy_to_xyz(ILLUMINANT_D65[0], ILLUMINANT_D65[1]);

}


//------------------------------------------------------------------------------
const float3x3 get_primaries_xyz(const float primaries_xy[3][2])

{
    
    // Columns: R G B
 
    // Rows: X Y Z

 
    float3x3 ret;

 
    ret[0] = xy_to_xyz(primaries_xy[0][0], primaries_xy[0][1]);

    ret[1] = xy_to_xyz(primaries_xy[1][0], primaries_xy[1][1]);

    ret[2] = xy_to_xyz(primaries_xy[2][0], primaries_xy[2][1]);



    return transpose(ret);

}

//------------------------------------------------------------------------------
const float3x3 gamut_rgb_to_xyz_matrix(const float primaries_xy[3][2])

{
   
    const float3x3 xyz_matrix = get_primaries_xyz(primaries_xy);

    const float3 white_xyz = get_d65_xyz();


    const float3 s = mul(inverse(xyz_matrix), white_xyz);
 
    const float3x3 m = { xyz_matrix[0] * s, xyz_matrix[1] * s, xyz_matrix[2] * s };

    return m;

}


//------------------------------------------------------------------------------

static const float3x3 gamut_xyz_color_matrix_2020 = gamut_rgb_to_xyz_matrix(REC_2020_PRIMARIES);

static const float3x3 gamut_xyz_color_matrix_709  = gamut_rgb_to_xyz_matrix(REC_709_PRIMARIES);

static const float3x3 convert_matrix_2020_to_709  = mul(inverse(gamut_xyz_color_matrix_709), gamut_xyz_color_matrix_2020);



//------------------------------------------------------------------------------
float3 Colorspace_Gamut_Conversion_2020_to_709(const float3 rgb)

{
    
     return mul(convert_matrix_2020_to_709, rgb);

} 
//------------------------------------------------------------------------------


//---------------------------------------------
float4 correct_HLG(float4 pixel)

{
   
 	// HLG to Linear

    pixel.rgb = inverse_HLG(pixel.rgb);

    pixel.rgb /= 12.0;



	// HDR tone mapping
 
   pixel.rgb = ToneMappingHable(pixel.rgb);


	// Colorspace Gamut Conversion

    pixel.rgb = Colorspace_Gamut_Conversion_2020_to_709(pixel.rgb);
 
  	// Peak luminance
    pixel.rgb = pixel.rgb * (SRC_LUMINANCE_PEAK / DISPLAY_LUMINANCE_PEAK);

 

   	// Linear to sRGB
   
    pixel.rgb = saturate(pixel.rgb);
   
    pixel.rgb = pow(pixel.rgb, 1.0 / 2.2);



    return pixel;

} 
//------------------------------------------------------------------------------

sampler s0 : register(s0);


float4 main(float2 tex : TEXCOORD0) : COLOR

{
   
    float4 color = tex2D(s0, tex); // original pixel


 
    color = correct_HLG(color);



    return color;

}

//------------------------------------------------------------------------------