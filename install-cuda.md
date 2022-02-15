
For Ubuntu 20.04
```
# install nvidia-driver
sudo apt install nvidia-driver-460

# install cuda
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda_11.2.0_460.27.04_linux.run
sudo sh cuda_11.2.0_460.27.04_linux.run

# install cudnn
CUDNN_TAR_FILE="cudnn-11.2-linux-x64-v8.1.1.33.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v8.1.1/${CUDNN_TAR_FILE}

# reinstall nvidia-driver
sudo apt remove nvidia-driver-460
(sudo apt autoremove)
sudo apt install nvidia-driver-460
reboot
```


