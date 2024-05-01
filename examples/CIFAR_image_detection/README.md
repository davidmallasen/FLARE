# CIFAR image detection example

First, you need to download the CIFAR-10 dataset. You can download it from <https://github.com/YoongiKim/CIFAR-10-images>.

~~~bash
cd examples/CIFAR_image_detection
git clone https://github.com/YoongiKim/CIFAR-10-images.git
~~~

You also need OpenCV to run this example. You can install it in Ubuntu by:

~~~bash
sudo apt-get install libopencv-dev
~~~

Then, you can run the example by:

~~~bash
mkdir build && cd build
cmake ..
make
./CIFAR_image_detection
~~~
