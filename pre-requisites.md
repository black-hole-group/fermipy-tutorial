Pre-requisites
=================

# Python and Linux preparation

This hands-on activity will make considerable use of Python and Linux. If you are not familiar with the Python programming language or Linux, we recommend that you study them *before* the hands-on session. Some suggested  preparatory material on the basics of Python as a scientific computing language or Linux: 

- [Lectures on scientific computing with Python](https://github.com/jrjohansson/scientific-python-lectures)
- [UNIX tutorial for beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)


# Hardware requirements

To participate in the tutorial we recommend that you bring your laptop. Your laptop should have at least 4GB of RAM. You will need about 15 GB of free space in your computer. 

# Installation instructions

All the analysis software and data files required for this hands-on activity are already installed in a ready-to-use, self-contained Docker image. The Docker image contains the Fermi `ScienceTools` and `Fermipy` and should run on Windows, Linux and MacOS. 

We recommend that you start downloading early the files, given their large file size. *Please do not download large files during the tutorial or the WIFI network will overload*. 

## Install Docker

Think of [Docker](https://www.docker.com) as a convenient virtual machine environment. Docker has been getting very popular lately because it allows developers to ship images with a lot of pre-installed software. If you are interested in learning what Docker images are available, browse the [Docker Store](https://store.docker.com). 

Thanks to Docker, we will not need to worry about installing the necessary Linux environment and the Fermi ScienceTools for our lesson—there is an image pre-built with everything we need! 

To get started you should first install [Docker](https://www.docker.com/community-edition) (you want the Community Edition). Once Docker is installed in your laptop, you should...

## Get the `Fermipy` Docker image

Open a terminal and issue the command

    docker pull fermipy/fermipy

This should take a while because >2GB of software will be downloaded and installed.

## Download the supporting files for the lesson

1. Create a new directory somewhere in your machine, let's say `fermi`:  

```  
mkdir fermi
cd fermi
```

2. Clone the repository with the lesson notebook and data files:

```
git clone https://github.com/black-hole-group/fermipy-tutorial.git
``` 

You should now have a new directory called `fermipy-tutorial` inside `fermi`.

## Launch a Docker container instance

1. Launch Docker in your computer. 
2. Switch to the `fermi` directory which contains the lesson files and where we plan to run our analysis. 
3. Execute the following command to launch a docker container instance:

```
docker run -it --rm -p 8888:8888 -v $PWD:/workdir -w /workdir fermipy/fermipy
```

This will start an Jupyter notebook server that will be attached to port 8888. The `-v $PWD:/workdir` argument mounts the current directory to the working area of the container. Once you start the server it will print a URL similar to the following one:

```
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://721f57bdddfd:8888/?token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5&token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5
```

4. Copy and paste the address above in your web browser, and replace the string between `http://` and `:8888` with `localhost`; in our case, we would use the following address in our browser (your address will be different):

```     
http://localhost:8888/?token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5&token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5
```

Your browser should now display something similar to this:

UPDATE WITH SCREENSHOT OF JUPYTER WINDOW

![](./figures/virtualbox.png "VirtualBox window listing the VM after successfull import")

Note that the same docker image may be used to launch python, ipython, or a bash shell by passing the command as an argument to docker run:

```
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy ipython
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy python
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy /bin/bash
```

- - - 

Now you can proceed and follow the instructions for the tutorial.

If you interrupt the activity and want to resume it later, just make sure to launch the Docker container instance inside the `fermi` directory.









# Data files for observations

All the data files required for the tutorial are pre-installed in the VM. However, if you are *not* using the VM to run the activity, you can download the data files [here](https://figshare.com/articles/Fermi_LAT_Hands-on_activity_Sao_Paulo_CTA_School_2017/5027513).
