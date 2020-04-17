# Rebuild SDK Evaluation

Evaluation version of the Glasswall Rebuild SDK expires 14/05/2020

## Library

The Rebuild SDK library (.so) file can be located [Here](https://github.com/filetrust/Glasswall-Rebuild-SDK-Evaluation/blob/master/Lib/libglasswall.classic.so)

## SDK Documentation

For the Rebuild SDK documentation [Click Here](https://github.com/filetrust/Glasswall-Rebuild-SDK-Evaluation/blob/master/sdk.documentation.pdf)

## Getting Started

#### Docker
This is built on a CentOS7 image, containing the Glasswall Rebuild engine. The engine is configured to run files in protect modes. File are processed from a mounted directory and regenerated into a separate output directory.
Begin by downloading the files to a clean workspace. Check that the dockerfile is in the same directory as the release package (The lib folder containing the Core library).

#### Ubuntu

There is a shell script for getting the Glasswall Rebuild SDK running on Ubuntu, configured to run files in Protect modes, please [Click Here](https://github.com/filetrust/Glasswall-Rebuild-SDK-Evaluation/blob/master/Getting-Started/Ubuntu_Classic.sh)

#### Windows

If you haven’t used docker before you will need to install it now. You will need to share the drive you want to input and output data from with your instance of docker. To do this right click docker in the system tray. Click 'settings'. Click 'Shared Drives' and share the appropriate drive. Click 'Apply'.

To build the image open a PowerShell window in the dockerfile directory. Run the following command:
docker build -t *imageName*:0.1 .     (include the white space and trailing period)
This will produce a docker image with the configured *imageName*.

Before we run a container of the image lets create an input directory and an output directory, for instance:

•	C:\data\input – Place files to be processed here.

•	C:\data\output – Note that your output directory must be empty or Glasswall will fail to produce an output and will destroy any data present in there.

Now let’s mount the input and output directories and run a container of our image, using the following command:
docker run -it -v C:\data\input:/input -v C:\data\output:/output *imageName*:0.1

This command will build the container and mount "C:\data\input" to "/input" on the container and "C:\data\output" to "/output" and then immediately process the contents of "/input" and place the regenerated files and analysis reports in "/output".

A prebuilt Docker image is availible from: https://hub.docker.com/repository/docker/glasswallsolutions/evaluationsdk

### Tags
- :1 is Glasswall 1.X 
- :2 is Glasswall 2.X
