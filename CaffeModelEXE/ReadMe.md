
#Windows exe of caffe to extract deep learning features

#### **Want to build the exe by yourself?**
You can find the windows version of caffe project at [Caffe Windows]( https://github.com/niuzhiheng/caffe).

####**Prerequisites**
- Windows-64 bit
- Please download the image net DCNN model file here: [DCNN models](http://dl.caffe.berkeleyvision.org/)  and put it into the same folder with the exe. Currently, we only support you to  use the caffe_reference_imagenet_model here.

####**Usage**
Please remember to keep all the files or sub folders in the same folder with the exe.
You have 3 choices to use this exe, first please open the cmd window and input one of the following commands:

- ExtractDeepFeat.exe imagePath layame
- ExtractDeepFeat.exe indexFilePath layerName
- ExtractDeepFeat.exe imageFolderPath layerName
    
####**Input**
- **imagePath**:  the absolute path of your image.
- **indexFilePath**: the index file of your images, which should be in txt format and one image path per line.
- **imageFolderPath**: absolute path of your image folder, it will scan all the images in this folder and its sub folders.
- **layerName**: the layer of the [DCNN](http://caffe.berkeleyvision.org/gathered/examples/feature_extraction.html) that you want to  extract feature of, including conv1 ~ conv5, pool1 ~ pool5, fc6 ~ fc8( normally we use fc7 to extract the 4096-D feature of images), prob(probability distribution of 1000 labels).

####**Output**
- The format of the feature data is float.
- The deep learning feature of every image will be saved into a binary file with the same path as the image and named by  "the image name" + ".feat" .

####**Sample command**
    ExtractDeepFeat.exe E:\\myimages fc7  
    ExtractDeepFeat.exe E:\\imageIndex.txt  prob
    ExtractDeepFeat.exe E:\\test.jpg   pool5