Pre-requisites
=================

# Python and Linux preparation

This hands-on activity will make considerable use of Python, Jupyter Notebook and Linux. If you are not familiar with the Python programming language, Jupyter or Linux, we recommend that you study them *before* the hands-on session. 

Some suggested  preparatory material on the basics of Python as a scientific computing language or Linux: 

- [Lectures on scientific computing with Python](https://github.com/jrjohansson/scientific-python-lectures)
- [UNIX tutorial for beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)
- [Getting started with Jupyter Notebook](https://medium.com/codingthesmartway-com-blog/getting-started-with-jupyter-notebook-for-python-4e7082bd5d46)


# Hardware requirements

To participate in the tutorial we recommend that you bring your laptop. The minimum hardware requirements for are: 

- at least 4GB of RAM 
- ~10 GB of free disk space

# Installation instructions

In order to proceed with the lesson, you will need a working installation of:

- [Fermi Science Tools](https://fermi.gsfc.nasa.gov/ssc/data/analysis/software/)
- [`Fermipy`](https://fermipy.readthedocs.io/en/latest/) Python package 
- Lesson supporting files: Jupyter notebook and observations 

Fortunately, all the analysis software and data files required for the lesson are conveniently pre-installed in a ready-to-use, self-contained Docker image. The Docker image should run on Windows, Linux and MacOS. 

We recommend that you start downloading early the files, given their large file size. *Please do not download large files during the tutorial or the WIFI network will overload*. 

## 1. Install Docker

[Docker](https://www.docker.com) is a convenient virtual machine environment which has been getting very popular lately because it allows developers to ship images conveniently with pre-installed software. If you are interested, browse the [Docker Store](https://store.docker.com) to learn what kind of Docker images are available. Thanks to Docker, we will not need to worry about installing the Linux environment and Fermi ScienceTools for our lesson—there is an image pre-built with everything we need! 

To get started you should first [install the Community Edition of Docker by following these instructions](https://www.docker.com/community-edition). 

Once Docker is installed in your laptop, you should...

## 2. Get the `Fermipy` Docker image

Open a terminal and issue the command

    docker pull fermipy/fermipy

This should take a while because >2GB of software will be downloaded and installed.

## 3. Download the supporting files for the lesson

i. Create a new directory somewhere in your machine, let's say `fermi`:  

```  
mkdir fermi
cd fermi
```

ii. Clone the repository with the lesson notebook.

```
git clone https://github.com/black-hole-group/fermipy-tutorial.git
``` 

You should now have a new directory called `fermi/fermipy-tutorial`.

iii. Download the data files with observations.

Issue the following commands to download the file `fermi-data.tar.bz2` and unpack it. This file contains all the observations (828 MB).

```
mkdir ./fermipy-tutorial/data
wget -O ./fermipy-tutorial/data/fermi-data.tar.bz2 https://www.dropbox.com/s/g6qbj7es0v9djv5/fermi-data.tar.bz2?dl=0
tar -xvjf ./fermipy-tutorial/data/fermi-data.tar.bz2 -C ./fermipy-tutorial/data
```

If the download gets interrupted, you can resume the download from where it stopped:

    wget -c -O ./fermipy-tutorial/data/fermi-data.tar.bz2 https://www.dropbox.com/s/g6qbj7es0v9djv5/fermi-data.tar.bz2?dl=0

iv. (_optional_) Check file integrity.

If you want to check the file integrity, you can use the command

    md5sum fermipy-tutorial/data/fermi-data.tar.bz2

(replace `md5sum` with `md5` if using a Mac). This command will spit a string. The string should match this one:  149b2e7d499a78f18bec22ad40fd3d98. If they are different, your file was corrupted during the download and you need to restart the download.

## 4. Launch a Docker container instance

i. Launch Docker in your computer. 

- Mac/Windows: Look for the Docker icon in your computer and click on it to open the application. ![](https://www.brianweet.com/assets/docker-blog-1/docker-logo.png "Docker icon")
- Linux: the Docker service should already be running in the background, so no action required.

ii. `cd` to the `fermi` directory which contains the lesson files and where we plan to run our analysis. 
iii. Launch a docker container instance.

Run the following command in a new terminal:

```
docker run -it --rm -p 8888:8888 -v $PWD:/workdir -w /workdir fermipy/fermipy
```

This will start a Jupyter notebook server that will be attached to port 8888. The `-v $PWD:/workdir` argument mounts the current directory to the working area of the container. Once you start the server it will print a URL similar to the following one:

```
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://721f57bdddfd:8888/?token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5&token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5
```

iv. Copy and paste the address above in your web browser, and replace the string between `http://` and `:8888` with `localhost`; in our case, we would use the following address in our browser (your address will be different):

```     
http://localhost:8888/?token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5&token=36376320b1d20c0937deaf606d6a8134be8c54d3cf0fa5f5
```

Your browser should now display something similar to this: ![](./Screenshot-jupyter.png "Web browser after successful launching of Jupyter Notebook from Docker instance")

Note that the same docker image may be used to launch python, ipython, or a bash shell by passing the command as an argument to docker run:

```
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy ipython
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy python
docker run -it --rm -v $PWD:/workdir -w /workdir fermipy/fermipy /bin/bash
```

- - - 

If you interrupt the activity and want to resume it later, just make sure to launch the Docker container instance inside the `fermi` directory. All your progress will be saved there.

Now you can proceed with the lesson and move on to the [overview of activities](https://speakerdeck.com/rsnemmen/analysis-of-fermi-lat-data-hands-on-day-1).



