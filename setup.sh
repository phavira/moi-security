#!/bin/bash
	apt-get update && \
	sudo apt-get -y install locales software-properties-common && \
	apt-get install -y zip && \
	apt-get install -y curl && \
	curl http://103.12.160.213:9000/expense/storage/xroad-package.zip && \
	cp xroad-package.zip /var/cache/apt/archives && \
	unzip /var/cache/apt/archives/xroad-package.zip /var/cache/apt/archives && \
	LC_ALL=en_US.UTF-8 && \
	sudo apt-add-repository -y "deb https://artifactory.niis.org/xroad-release-deb 7.4.2 main" && \
	apt-get update && \
	apt-get install -y xroad-securityserver
	

