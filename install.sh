#!/bin/sh
# Create a new directory somewhere in your machine, let's say `fermi`:  
mkdir fermi
cd fermi
echo "Created fermi dir"

# Clone the repository with the lesson notebook.
git clone https://github.com/black-hole-group/fermipy-tutorial.git
echo "Downloaded lesson files from github"
# You should now have a new directory called `fermi/fermipy-tutorial`.

# Download the data files with observations.
# These file contain all the observations (about 2GB).
# DM lesson data
mkdir -p ./fermipy-tutorial/data/DM
wget -O ./fermipy-tutorial/data/dm-data.tar.bz2 https://www.dropbox.com/s/g6qbj7es0v9djv5/dm-data.tar.bz2?dl=0
tar -xvjf ./fermipy-tutorial/data/dm-data.tar.bz2 -C ./fermipy-tutorial/data/DM
echo "Downloaded dark matter files"
# blazar lesson data
mkdir -p ./fermipy-tutorial/data/blazar
wget -O ./fermipy-tutorial/data/blazar-data.tar.bz2 https://www.dropbox.com/s/96t6rbl9gguhz9x/blazar-data.tar.bz2?dl=0
tar -xvjf ./fermipy-tutorial/data/blazar-data.tar.bz2 -C ./fermipy-tutorial/data/blazar
echo "Downloaded blazar files"

echo "Done! :) "

# If the download gets interrupted, you can resume the download from where it stopped:
#
#    wget -c -O ./fermipy-tutorial/data/fermi-data.tar.bz2 https://www.dropbox.com/s/g6qbj7es0v9djv5/fermi-data.tar.bz2?dl=0

# (_optional_) Check file integrity.
#
# If you want to check the file integrity, you can use the command
#
#    md5sum fermipy-tutorial/data/fermi-data.tar.bz2

#(replace `md5sum` with `md5` if using a Mac). This command will spit a string. The string should match this one:  149b2e7d499a78f18bec22ad40fd3d98. If they are different, your file was corrupted during the download and you need to restart the download.
