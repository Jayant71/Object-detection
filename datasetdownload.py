from roboflow import Roboflow
import os

os.chdir('/workspace/objectdet/datasets')
# rf = Roboflow(api_key="09fuHnf66MqJbmzHnAjP")
# project = rf.workspace("helo-rgfls").project("box-wpqeg")
# version = project.version(1)
# dataset = version.download("coco-mmdetection")


# from roboflow import Roboflow
rf = Roboflow(api_key="09fuHnf66MqJbmzHnAjP")
# project = rf.workspace("helo-rgfls").project("box-wpqeg")
# version = project.version(1)
project = rf.workspace("large-benchmark-datasets").project("logistics-sz9jr")
version = project.version(2)
dataset = version.download("coco-mmdetection")
