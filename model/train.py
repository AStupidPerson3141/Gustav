import tensorflow as tf
from PIL import Image
import numpy as np

pre_img = Image.open("/workspaces/Gustav/dog.jpeg")
numpydata = np.array(pre_img)
input_shape = numpydata.shape
numpydata = np.expand_dims(numpydata, 0)