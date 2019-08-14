Pre-requisites
=================

# Python and Linux preparation

This hands-on activity will make considerable use of Python, Jupyter Notebook and Linux. If you are not familiar with the Python programming language, Jupyter or Linux, we recommend that you study them *before* the hands-on session. 

Some suggested  preparatory material on the basics of Python as a scientific computing language or Linux: 

- [Lectures on scientific computing with Python](https://github.com/jrjohansson/scientific-python-lectures)
- [UNIX tutorial for beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)
- [Getting started with Jupyter Notebook](https://medium.com/codingthesmartway-com-blog/getting-started-with-jupyter-notebook-for-python-4e7082bd5d46)


# Requirements

To participate in the tutorial we recommend that you bring your laptop. The minimum hardware requirements for are: 

- at least 4GB of RAM 
- ~10 GB of free disk space

We recommend Linux or MacOS. This tutorial was not tested on a windows machine, so we cannot guarantee it will work on windows.

# Installation instructions

In order to proceed with the lesson, you will need a working installation of several packages. Fortunately, all the analysis software and data files required for the lesson are conveniently pre-installed in a ready-to-use, self-contained Docker image (see [step 1](#1-install-docker) below). The Docker image should run on Windows, Linux and MacOS. 

The software already contained in the Docker image are:

- [Fermi Science Tools](https://fermi.gsfc.nasa.gov/ssc/data/analysis/software/)
- [`Fermipy`](https://fermipy.readthedocs.io/en/latest/) Python package 

We recommend that you start downloading early the files, given their large file size. *Please do not download large files during the tutorial or the WIFI network will overload*. 

## 1. Install Docker

[Docker](https://www.docker.com) is a convenient virtual machine environment which has been getting very popular lately because it allows developers to ship images conveniently with pre-installed software. If you are interested, browse the [Docker Store](https://store.docker.com) to learn what kind of Docker images are available. Thanks to Docker, we will not need to worry about installing the Linux environment and Fermi ScienceTools for our lesson—there is an image pre-built with everything we need! 

To get started you should first [install Docker Desktop if using Windows or MacOS](https://www.docker.com/products/docker-desktop) or [Docker Engine Community](https://docs.docker.com/install/linux/docker-ce/ubuntu/) if using Linux. 

Once Docker is installed in your laptop, you should...

## 2. Get the `Fermipy` Docker image

Open a terminal and issue the command

    sudo docker pull fermipy/fermipy:11-05-02

This should take a while because >2GB of software will be downloaded and installed.

> Linux pro tip: if you add your user to the `docker` group, you do not need to use `sudo` to run Docker . The command to perform this task on linux is `sudo usermod -a -G docker yourusername` (you only need to run it once)

## 3. Download the supporting files for the lesson

You will need `wget` installed in order to proceed. Issue the following commands in the terminal to download all supporting data files for the lesson:

    wget -O install.sh https://gist.github.com/rsnemmen/f97823e466583d7d1101b5dd579cda8c/raw
    sh install.sh

After the command is done, you should have all files which are necessary for the lesson available locally in your machine.

## 4. Test the installation by launching a Docker container instance

i. Open Docker. 

- Linux: the Docker service should already be running in the background, so no action required.
- Mac/Windows: Look for the Docker icon in your computer and click on it to open the application. ![](https://www.brianweet.com/assets/docker-blog-1/docker-logo.png "Docker icon")

ii. `cd fermi` to the directory which contains the lesson files and where we plan to run our analysis. 

iii. Launch a docker container instance.

Run the following command in the terminal:

```
sudo docker run -it --rm -p 8888:8888 -v $PWD:/workdir -w /workdir fermipy/fermipy:11-05-02
```

This will start a Jupyter notebook server that will be attached to port 8888. The `-v $PWD:/workdir` argument mounts the current directory to the working area of the container. Once you start the server it will print a URL similar to the following one:

```
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=8e09274cb649d659abce695ab6481242670d9edbcf24f095
```

iv. Copy and paste the http address printed in the above step in your web browser (your address will be different):

```     
http://localhost:8888/?token=8e09274cb649d659abce695ab6481242670d9edbcf24f095
```

Your browser should now display something similar to this: ![](./Screenshot-jupyter.png "Web browser after successful launching of Jupyter Notebook from Docker instance")

Note that the same docker image may be used to launch python, ipython, or a bash shell by passing the command as an argument to docker run:

```
sudo docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy ipython
sudo docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy python
sudo docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy /bin/bash
```

- - - 

If you interrupt the activity and want to resume it later, just make sure to launch the Docker container instance inside the `fermi` directory. All your progress will be saved there.

Now you can proceed with the lesson.
