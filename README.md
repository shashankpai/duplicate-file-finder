# duplicate-file-finder
python-application to find duplicate files in a folder


To Run this script in a docker container 

Clone the repo 

create Docker image from Docker file . Below is an example

docker build -t python-dupfinder .

Then in your current directory where you wnat to test your folders for duplicate files run the container with arguments as your folder

example

docker run --rm -v $PWD:/data python-dupfinder:latest /data/{name-of-your-folder}

sample docker run :

docker run --rm -v $PWD:/data python-dupfinder:latest /data/docker-volume/folder1


Scanning /data/docker-volume/folder1...
Duplicates Found:
The following files are identical. The name could differ, but the content is identical
___________________
                /data/docker-volume/folder1/1.txt
                /data/docker-volume/folder1/11.txt
___________________
                /data/docker-volume/folder1/2.txt
                /data/docker-volume/folder1/22.txt


sample docker run2:

docker run --rm -v $PWD:/data python-dupfinder:latest /data/docker-volume/folder2



Scanning /data/docker-volume/folder2...
Duplicates Found:
The following files are identical. The name could differ, but the content is identical
___________________
                /data/docker-volume/folder2/1.txt
                /data/docker-volume/folder2/11.txt
___________________
                /data/docker-volume/folder2/2.txt
                /data/docker-volume/folder2/22.txt
