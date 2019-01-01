FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libssl1.0-dev
RUN apt-get install -y bison
RUN apt-get install -y libgdbm-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y libreadline-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y ruby
RUN mkdir /ruby
WORKDIR /ruby
