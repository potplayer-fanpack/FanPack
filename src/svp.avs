# SVPflow plugin for PotPlayer
# Check https://www.svp-team.com/wiki/Manual:SVPflow for more details
# This script was created by zub35 and 7sh3

Try{svp}Catch(err){svp=0} Try{alg}Catch(err){alg=0} Try{fim}Catch(err){fim=0}
Try{bf}Catch(err){bf=0} Try{gpu}Catch(err){gpu=0} Try{fps}Catch(err){fps=60}

SetMemoryMax(2700)
global threads = (gpu==1 || gpu==2) ? 7 : 5

LoadPlugin("svpflow1.dll")
LoadPlugin("svpflow2.dll")

SetFilterMTMode("DEFAULT_MT_MODE",2)
SetFilterMTMode("SVSuper",1)
SetFilterMTMode("SVAnalyse",1)
SetFilterMTMode("potplayer_source",3)

potplayer_source()

fps == 2 ? eval("""
rate = "num:2,den:1"
""") : fps == 3 ? eval("""
rate = "num:3,den:1"
""") : fps == 4 ? eval("""
rate = "num:4,den:1"
""") : fps == 5 ? eval("""
rate = "num:5,den:1"
""") : fps >= 50 ? eval("""
rate = "num:"+String(ContinuedNumerator(fps/Framerate,limit=10))+",den:"+String(ContinuedDenominator(fps/Framerate,limit=10))
""") : eval("""
rate = "num:1,den:1"
""")

alg == 1 ? eval("""
algo = (gpu==1 || gpu==2) ? "algo:11" : "algo:11,block:true"
""") : alg == 2 ? eval("""
algo = (gpu==1 || gpu==2) ? "algo:13" : "algo:13,block:true"
""") : alg == 3 ? eval("""
algo = (gpu==1 || gpu==2) ? "algo:23" : "algo:23,block:true"
""") : eval("""
algo = "algo:2"
""")

fim == 1 ? eval("""
scene = (bf==1) ? "blend:true,mode:1" : "mode:1"
""") : fim == 2 ? eval("""
scene = (bf==1) ? "blend:true,mode:3" : "mode:3"
""") : fim == 3 ? eval("""
scene = (bf==1) ? "blend:true,mode:0" : "mode:0"
""") : eval("""
scene = (bf==1) ? "blend:true,limits:{m1:0}" : "limits:{m1:0}"
""")

pel1 = (gpu==1 || gpu==2) ? "pel:1,scale:{up:0},gpu:1,full:false" : "pel:1,scale:{up:2},gpu:0,full:false"
pel2 = (gpu==1 || gpu==2) ? "pel:2,scale:{up:0},gpu:1" : "pel:2,scale:{up:2},gpu:0"
block = (gpu==1 || gpu==2) ? "w:8" : "w:8,overlap:0"
overlap = (gpu==1 || gpu==2) ? "overlap:1" : "overlap:0"
distance = (gpu==1 || gpu==2) ? "distance:-6," : "distance:-1,"
coarse = "satd:false,bad:{range:0},width:530"
penalty = (gpu==1 || gpu==2) ? ",penalty:{pnew:10},levels:4" : ",penalty:{plevel:1.7,lsad:6000,pnew:10,pglobal:0,pzero:10,pnbour:10,prev:10},levels:4"
refine = (gpu==1 || gpu==2) ? ",refine:[{thsad:250}]" : ",refine:[{thsad:1000}]"
gpuid = (gpu==1) ? "gpuid:0," : (gpu==2) ? "gpuid:21," : ""
gpucl = (gpu==1 || gpu==2) ? "cubic:0,linear:false," : ""
mask = (alg==0 && fim==0) ? "area:100" : (gpu==1 || gpu==2) ? "area:50" : (alg==1 || alg==2 || alg==3) ? "cover:0" : ""

svp0_preset = (svp==0 && alg==0 && fim==0) ? "vectors:2,block:{w:32,overlap:0},main:{search:{coarse:{type:2,"+coarse+"},distance:0}}" : \
(svp==0 && alg==0) ? "block:{w:32},main:{search:{coarse:{"+coarse+"},type:2}"+penalty+"}" : \
"block:{"+overlap+"},main:{search:{coarse:{"+coarse+"},type:2}"+penalty+"}"
algo0 = (svp==0 && alg==0 && fim==0) ? "algo:1" : (svp==0 && alg==0) ? "algo:2" : "algo:13"
mask0 = (svp==0 && alg==0 && fim==0) ? "area:100" : (svp==0 && alg==0) ? "area:100" : "area:200"
scene0 = (svp==0 && alg==0 && fim==0 && bf==1) ? "blend:true,mode:1" : (svp==0 && alg==0 && fim==0) ? "mode:1" : \
(svp==0 && alg==0 && bf==1) ? "blend:true,mode:3" : (svp==0 && alg==0) ? "mode:3" : \
(svp==0 && bf==1) ? "blend:true,limits:{m1:0}" : "limits:{m1:0}"

svp == 0 || svp == 1 ? eval("""
super_params_sd = "{"""+pel1+"""}"
""") : eval("""
super_params_sd = "{"""+pel2+"""}"
""")
svp == 1 ? eval("""
analyse_params_sd = "{block:{},main:{search:{coarse:{"""+coarse+"""},type:2}"""+penalty+"""}}"
""") : svp == 2 ? eval("""
analyse_params_sd = "{block:{},main:{search:{coarse:{"""+distance+"""bad:{}}}"""+penalty+"""},refine:[{}]}"
""") : svp == 3 ? eval("""
analyse_params_sd = "{block:{"""+block+"""},main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}"""+penalty+"""},refine:[{thsad:250}]}"
""") : eval("""
analyse_params_sd = "{"""+svp0_preset+"""}"
""")
svp == 1 || svp == 2 || svp == 3 ? eval("""
smoothfps_params_sd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo+""",mask:{"""+mask+"""},scene:{"""+scene+"""}}"
""") : eval("""
smoothfps_params_sd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo0+""",mask:{"""+mask0+"""},scene:{"""+scene0+"""}}"
""")

svp == 0 || svp == 1 ? eval("""
super_params_hd = "{"""+pel1+"""}"
""") : eval("""
super_params_hd = "{"""+pel2+"""}"
""")
svp == 1 ? eval("""
analyse_params_hd = "{block:{"""+overlap+"""},main:{search:{coarse:{"""+coarse+"""},type:2}"""+penalty+"""}}"
""") : svp == 2 ? eval("""
analyse_params_hd = "{block:{},main:{search:{coarse:{"""+distance+"""bad:{sad:2000}}}"""+penalty+"""}"""+refine+"""}"
""") : svp == 3 ? eval("""
analyse_params_hd = "{block:{},main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}"""+penalty+"""},refine:[{thsad:250}]}"
""") : eval("""
analyse_params_hd = "{"""+svp0_preset+"""}"
""")
svp == 1 || svp == 2 || svp == 3 ? eval("""
smoothfps_params_hd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo+""",mask:{"""+mask+"""},scene:{"""+scene+"""}}"
""") : eval("""
smoothfps_params_hd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo0+""",mask:{"""+mask0+"""},scene:{"""+scene0+"""}}"
""")

svp == 0 || svp == 1 ? eval("""
super_params_fhd = "{"""+pel1+"""}"
""") : eval("""
super_params_fhd = "{"""+pel2+"""}"
""")
svp == 1 ? eval("""
analyse_params_fhd = "{block:{w:32,"""+overlap+"""},main:{search:{coarse:{"""+coarse+"""},type:2}"""+penalty+"""}}"
""") : svp == 2 ? eval("""
analyse_params_fhd = "{block:{"""+overlap+"""},main:{search:{coarse:{"""+distance+"""bad:{sad:2000}}}"""+penalty+"""}"""+refine+"""}"
""") : svp == 3 ? eval("""
analyse_params_fhd = "{block:{},main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}"""+penalty+"""}"""+refine+"""}"
""") : eval("""
analyse_params_fhd = "{"""+svp0_preset+"""}"
""")
svp == 1 || svp == 2 || svp == 3 ? eval("""
smoothfps_params_fhd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo+""",mask:{"""+mask+"""},scene:{"""+scene+"""}}"
""") : eval("""
smoothfps_params_fhd = "{"""+gpuid+"""rate:{"""+rate+"""},"""+algo0+""",mask:{"""+mask0+"""},scene:{"""+scene0+"""}}"
""")

super_params_uhd = """""{"""+pel1+"""}"""""
svp == 1 ? eval("""
analyse_params_uhd = "{block:{w:32,overlap:0},main:{search:{coarse:{"""+coarse+"""},type:2}"""+penalty+"""}}"
""") : svp == 2 ? eval("""
analyse_params_uhd = "{block:{w:32,overlap:0},main:{search:{coarse:{"""+distance+"""bad:{sad:2000}}}"""+penalty+"""}}"
""") : svp == 3 ? eval("""
analyse_params_uhd = "{block:{w:32,overlap:0},main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}"""+penalty+"""}}"
""") : eval("""
analyse_params_uhd = "{"""+svp0_preset+"""}"
""")
svp == 1 || svp == 2 || svp == 3 ? eval("""
smoothfps_params_uhd = "{"""+gpuid+""""""+gpucl+"""rate:{"""+rate+"""},"""+algo+""",mask:{"""+mask+"""},scene:{"""+scene+"""}}"
""") : eval("""
smoothfps_params_uhd = "{"""+gpuid+""""""+gpucl+"""rate:{"""+rate+"""},"""+algo0+""",mask:{"""+mask0+"""},scene:{"""+scene0+"""}}"
""")

z = width * height

z <= 450000 ? eval("""
global super_params = """"+super_params_sd+""""
global analyse_params = """"+analyse_params_sd+""""
global smoothfps_params = """"+smoothfps_params_sd+""""
""") : z <= 1100000 ? eval("""
global super_params = """"+super_params_hd+""""
global analyse_params = """"+analyse_params_hd+""""
global smoothfps_params = """"+smoothfps_params_hd+""""
""") : z <= 2305000 ? eval("""
global super_params = """"+super_params_fhd+""""
global analyse_params = """"+analyse_params_fhd+""""
global smoothfps_params = """"+smoothfps_params_fhd+""""
""") : eval("""
global super_params = """"+super_params_uhd+""""
global analyse_params = """"+analyse_params_uhd+""""
global smoothfps_params = """"+smoothfps_params_uhd+""""
""")

Try{demo}Catch(err){demo=0} Try{up60}Catch(err){up60=0} Try{uhd}Catch(err){uhd=0} Try{sh}Catch(err){sh=0}

global dm = (demo==1) ? 1 : 0
global fn = (fps==2) ? 2 : (fps==3) ? 3 : (fps==4) ? 4 : (fps==5) ? 5 : (fps>=50) ? Round(ContinuedNumerator(fps/Framerate,limit=10)) : 1
global fd = (fps==2) ? 1 : (fps==3) ? 1 : (fps==4) ? 1 : (fps==5) ? 1 : (fps>=50) ? Round(ContinuedDenominator(fps/Framerate,limit=10)) : 1

function demo(clip src, clip smooth)
{
srcd = src.crop(0,0,-Int(src.width/4)*2-2,0)
srcd = srcd.ChangeFPS(FramerateNumerator(src)*fn,FramerateDenominator(src)*fd)
res = smooth.crop(Int(src.width/4)*2,0,0,0)
return StackHorizontal(srcd.Subtitle("Source",align=2),srcd.BlankClip(width=2),res.Subtitle("Smooth",align=2))
}

function interpolate(clip src)
{
super = SVSuper(src, super_params)
vectors = SVAnalyse(super, analyse_params, src)
smooth = SVSmoothFps(src, super, vectors, smoothfps_params, mt=threads)
return dm==0 ? smooth : demo(src, smooth)
}

fr = (up60==1) ? 60.5 : 30.5

Framerate > fr ? eval("""

""") : z < 2305000 ? eval("""
interpolate()
""") : z < 8300000 && uhd == 1 ? eval("""
interpolate()
""") : eval("""

""")

sh == 1 ? eval("""
Sharpen(0.3)
""") : sh == 2 ? eval("""
Sharpen(0.5)
""") : sh == 3 ? eval("""
Sharpen(0.7)
""") : eval("""

""")

Prefetch(threads)

# WriteFileStart("params.txt","super_params","chr(10)","analyse_params","chr(10)","smoothfps_params")