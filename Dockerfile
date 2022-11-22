FROM nvcr.io/nvidia/pytorch:22.10-py3

# -------------------------------------
# init
#
RUN python3 -m pip install --upgrade pip
WORKDIR /home

# -------------------------------------
# mmcv
#
RUN pip install -U openmim
RUN pip install mmcv-full==1.5.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.13.0/index.html
RUN pip install mmdet
RUN pip install opencv-python==4.5.5.64

# -------------------------------------
# MMDetection
#
RUN git clone https://github.com/open-mmlab/mmdetection.git ; exit 0
RUN cd mmdetection && pip install -v -e .

RUN pip install redis
RUN pip install rq
RUN pip install boto3

# -------------------------------------
# notebook
#
RUN pip install notebook

# -------------------------------------
# ML Backend
#
RUN git clone https://github.com/heartexlabs/label-studio-ml-backend ; exit 0
RUN cd label-studio-ml-backend && pip install -U -e .

# -------------------------------------
# Download checkpoints
#
RUN mim download mmdet --config faster_rcnn_r50_fpn_1x_coco --dest ./checkpoints ; exit 0

# -------------------------------------
# utils
#
RUN apt-get update
RUN apt-get install -y libgl1-mesa-dev