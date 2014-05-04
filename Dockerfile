FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl
RUN curl https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN git clone git@direktspeed.github:oscentral/osc-dns
RUN source ~/.profile
RUN nvm install 0.10.13
RUN nvm use 0.10.13

