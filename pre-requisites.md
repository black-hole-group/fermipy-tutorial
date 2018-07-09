Pre-requisites
=================

# Hardware requirements

To participate in the tutorial we recommend that you bring your laptop. Your laptop should have at least 4GB of RAM. You will need about 15 GB of free space in your computer. 

# Installation instructions

All the analysis software and data files required for this hands-on activity are already installed in a ready-to-use, self-contained Docker image. The Docker image contains the Fermi `ScienceTools` and `FermiPy` and should run on Windows, Linux and MacOS. 

We recommend that you start downloading early the files, given their large file size. *Please do not download large files during the tutorial or the WIFI network will overload*. 

## Install Docker

Think of [Docker](https://www.docker.com) as a convenient virtual machine environment. Docker has been getting very popular lately because it allows developers to ship images with a lot of pre-installed software. If you are interested in learning what Docker images are available, browse the [Docker Store](https://store.docker.com). 

Thanks to Docker, we will not need to worry about installing the necessary Linux environment and the Fermi ScienceTools for our lesson—there is an image pre-built with everything we need! 

To get started you should first install [Docker](https://www.docker.com/community-edition) (you want the Community Edition). Once Docker is installed in your laptop, you should...

## Download the supporting files for the lesson

1. Create a new directory somewhere in your machine, let's say `fermi`:  

```  
mkdir fermi
cd fermi
```

2. Clone the repository with the lesson notebook and data files *inside the newly created directory*:

```
git clone <tutorial repo>UPDATE
``` 

You should now have a new directory called XXXXXX.

## 



run docker, change to `localhost` to access jupyter from docker
follow instructions for tutorial

next time, you just need to change to the folder where you downloaded the activity, and run the docker command above




![](./figures/virtualbox.png "VirtualBox window listing the VM after successfull import")





# Python and Linux background

This hands-on activity will make considerable use of Python and Linux. If you are not familiar with the Python programming language or Linux, we recommend that you study them *before* the hands-on session. Some suggested  preparatory material on the basics of Python as a scientific computing language or Linux: 

- [Lectures on scientific computing with Python](https://github.com/jrjohansson/scientific-python-lectures)
- [UNIX tutorial for beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)




# Data files for observations

All the data files required for the tutorial are pre-installed in the VM. However, if you are *not* using the VM to run the activity, you can download the data files [here](https://figshare.com/articles/Fermi_LAT_Hands-on_activity_Sao_Paulo_CTA_School_2017/5027513).
