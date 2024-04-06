FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel

# Copy files
COPY . /workspace

# Set working directory
WORKDIR /workspace

# Install dependencies
RUN apt update -yy && apt install -yy libsndfile1 git
RUN pip install -r mmdetection/requirements.txt
RUN pip install -r mmyolo/requirements.txt
# RUN pip install -q torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu118
RUN pip install -q mmcv==2.0.0 -f https://download.openmmlab.com/mmcv/dist/cu117/torch2.0.0/index.html
RUN pip install -q mmdet
RUN pip install -q mmyolo

EXPOSE 22
ENV PROJECT_PATH=/workspace/my-project 
ENTRYPOINT ["/bin/bash"]
