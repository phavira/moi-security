from 	ubuntu:22.04

RUN 	apt-get update;

ENV 	8ACCOUNT_NAME=vira

RUN 	adduser $ACCOUNT_NAME && \
	LC_ALL=en_US.UTF-8 && \
	apt-get install locales software-properties-common && \
	locale-gen en_US.UTF-8 && \
	curl https://artifactory.niis.org/api/gpg/key/public | sudo apt-key add - && \
	

Expose 4000
