Fermi LAT data analysis: Hands on session
==============================================

**⚠️Please [download the files](./pre-requisites.md) before the tutorial**  
We ask the participants of the school to not leave the downloads for the last minute. The required files involve over 2GB of downloads. This will overload the wifi network at the school if everybody does this at the same time.   
*You will not be able to follow the activity without downloading the files*

# Introduction

Welcome to the hands-on tutorial on the analysis of *Fermi* LAT gamma-ray observations. This activity has a total duration of 4 hours. Given the somewhat short duration of these sessions, we will not have time to get into the details of all the fascinating science behind the analysis. The emphasis is on getting started on the analysis of Fermi LAT observations as soon as possible, such that you will be able to perform your own analysis in the future if desired. 

# Install analysis software and lesson files

In order to proceed with the tutorial, you will need a working installation of:

- Fermi Science Tools
- `Fermipy` Python package 
- Jupyter notebook and supporting data files 

For your convenience, we prepared this activity such that with just a few commands everything can be easily installed. Please visit [pre-requisites](./pre-requisites.md) for the instructions.

Once the Docker installation is finished and the lesson files are downloaded, you can move forward with the tutorial.

# Schedule


- 4:30-5:00: [Introduction, overview of activities and tools (slides)](https://speakerdeck.com/rsnemmen/analysis-of-fermi-lat-data-hands-on-day-1)
- 5:00-5:30: [Obtaining and preparing LAT data for your favorite source](./prepare.md)
- 5:30-6:30: [Exploring LAT data: Plotting the counts map](./explore.md)


- 4:30-5:00: Overview of activity, basic theory of spectral modeling: [slides](https://speakerdeck.com/rsnemmen/analysis-of-fermi-lat-data-day-2), [jupyter notebook](./fermi_likelihood_lecture.ipynb)
- 5:00-5:30: [Getting a flux: Likelihood analysis](./likelihood.md)
- 5:30-6:30: [Creating a spectrum (SED)](./sed.md)
- Bonus: [Producing a light-curve](./lc.md)


# Acknowledgements

- LAT Collaboration, particularly Matt Wood and Jeremy Perkins: for inspiration on the activities (very helpful [analysis threads](https://fermi.gsfc.nasa.gov/ssc/data/analysis/scitools/)) and the idea of the VM

# TODO (future)


# Contact 

[`rodrigo.nemmen -> iag usp br`](http://rodrigonemmen.com/contact)

[Author's web page](https://rodrigonemmen.com/)

Twitter: [@nemmen](https://twitter.com/nemmen)