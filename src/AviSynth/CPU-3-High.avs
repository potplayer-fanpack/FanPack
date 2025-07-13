svp=3		# 1 - low | 2 - medium (default) | 3 - high
alg=3		# 1 - simple | 2 - standard (default) | 3 - complex
fim=3		# 1 - average | 2 - adaptive (default) | 3 - uniform
bf=0		# 0 - off (default) | 1 - blending frames
gpu=0		# 0 - off (default) | 1 - first gpu | 2 - second gpu
fps=60		# 60 (default) | 2 - x2 fps | 50 ... 120 - target fps

sh=0		# 0 - off (default) | 1 - avisynth sharpness
uhd=0		# 0 - off (default) | 1 - ultra hd video support
up60=0		# 0 - off (default) | 1 - source support up to 60 fps
demo=0		# 0 - off (default) | 1 - svp demo mode

import("svp.avs")

/*
advanced settings (values)
svp=0 : less smoothness and artifacts (1st fixed preset)
svp=0 + alg=0 : less smoothness and artifacts (2nd fixed preset)
svp=0 + alg=0 + fim=0 : very low cpu usage (3rd fixed preset)
alg=0 : algorithm for 2d animations (slightly less artifacts)
fim=0 : limits scene change detection (slightly less smoothness)
*/