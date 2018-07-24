FROM jenkinsci/blueocean:1.7.1

USER root
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev \
      && rm -rf /var/lib/apt/lists/*
	  

USER jenkins
# Here you can install some Jenkins plugins if you want
