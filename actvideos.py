import os

Acts = os.listdir('../openpose_test/result/Act_Videos2/')
for act in Acts:
    Videos = os.listdir('../openpose_test/result/Act_Videos2/'+act)
    os.system('mkdir ~/codes/openpose_test/result/videos/'+act)
    for video in Videos:
        os.system('mkdir ~/codes/openpose_test/result/videos/'+act+'/'+video)
        os.system('./build/examples/openpose/openpose.bin --model_pose COCO --image_dir ../openpose_test/result/Act_Videos2/'+act+'/'+video+'/ --write_json ~/codes/openpose_test/result/videos/'+act+'/'+video+' --write_images ~/codes/openpose_test/result/videos/'+act+'/'+video)
