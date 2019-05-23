# Provides videos with skeletal tracking 

import os

Videos = os.listdir('../../Downloads/Act_Videos2/videos/')
for video in Videos:
    os.system('./build/examples/openpose/openpose.bin --model_pose COCO --video ~/Downloads/Act_Videos2/videos/'+video+' --write_video ~/Downloads/Act_Videos2/tracked_videos/'+video)
