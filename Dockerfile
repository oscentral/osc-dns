FROM dspeed/nvm
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl
ADD http://localhost:55000/frank-git /root/.ssh/frank-git
ADD http://localhost:55000/config /root/.ssh/config
RUN echo > /usr/local/bin/manpath
RUN chmod +x /usr/local/bin/manpath
RUN git clone http://github.com/oscentral/osc-dns /osc-dns
#RUN source ~/.profile
RUN exec /bin/bash /.nvm/nvm.sh
RUN nvm install 0.10.13
RUN nvm use 0.10.13
RUN apt-get clean -y