Data Science Docker
===================

Docker container for the IPython notebook and Development environment for Data Science.

## Quickstart

Assuming you have docker installed (https://docs.docker.com/install/), to clone the docker container 

```
docker pull somyamohanty/datascience
```

The above command is going to pull down the docker image from the Docker Hub. It will take some time to get it transferred. 

After the download is complete, to run this container to start up a notebook server over HTTPS.

```
docker run -d -p 443:8888 -e "PASSWORD=Apa$$word" ipython/notebook
```

You'll now be able to access your notebook at https://localhost with password Apa$$word (please change the environment variable above).

## Using HTTP
This docker image by default runs IPython notebook in HTTPS.  If you'd like to run this in HTTP,
you can use the `USE_HTTP` environment variable.  Setting it to a non-zero value enables HTTP.

Example:
```
docker run -d -p 80:8888 -e "PASSWORD=MakeAPassword" -e "USE_HTTP=1" ipython/notebook