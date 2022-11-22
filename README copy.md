# label-studio-ml-backend


```bash

pip install mmcv
pip install mmcv-full==1.5.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.10.0/index.html
pip install mmcv-full==1.5.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.13.0/index.html
pip install opencv-python==4.5.5.64
apt-get install -y libgl1-mesa-dev

git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e .
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without reinstallation.

# -------------------------------------
# MMCV
#
pip install mmcv-full==1.5.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.13.0/index.html
pip install opencv-python==4.5.5.64

# -------------------------------------
# MMDetection
#
pip install redis
pip install rq
pip install boto3

# -------------------------------------
# mm package
#



label-studio-ml start coco-detector --with \
config_file=/home/checkpoints/faster_rcnn_r50_fpn_1x_coco.py \
checkpoint_file=/home/checkpoints/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth \
device=gpu:0 \
LABEL_STUDIO_HOSTNAME=http://192.168.0.100:8080/


LABEL_STUDIO_HOSTNAME=http://192.168.0.100:8080/ label-studio-ml start coco-detector --with \
config_file=/home/checkpoints/faster_rcnn_r50_fpn_1x_coco.py \
checkpoint_file=/home/checkpoints/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth \
device=cuda:0 \
--port=7777 

--host=http://192.168.0.100:8080/



```

apt-get update

        # config_file = config_file or os.environ['config_file']
        config_file = "/home/checkpoints/faster_rcnn_r50_fpn_1x_coco.py"
        # checkpoint_file = checkpoint_file or os.environ['checkpoint_file']
        checkpoint_file = "/home/checkpoints/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth"

# ping
apt-get install iputils-ping net-tools -y

http://192.168.0.100:8080/

```bash=322
    def get_local_path(self, url, project_dir=None):
        print("==========================================================")
        print("url : {}".format(url))
        self.hostname = "http://192.168.0.100:8080"
        print("self.hostname : {}".format(self.hostname))
        return get_local_path(url, project_dir=project_dir, hostname=self.hostname, access_token=self.access_token)


```