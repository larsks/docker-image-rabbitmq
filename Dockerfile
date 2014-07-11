FROM larsks/runit
MAINTAINER lars@oddbit.com

RUN yum -y install \
	git \
	crudini \
	yum-utils \
	rabbitmq-server

RUN mkdir -p /etc/rabbitmq
ADD rabbitmq.config /etc/rabbitmq/
ADD rabbitmq-env.conf /etc/rabbitmq/

EXPOSE 5672

