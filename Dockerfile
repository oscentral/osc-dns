FROM dspeed/nvm
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl
ADD http://localhost:55000/frank-git /root/.ssh/frank-git
ADD http://localhost:55000/config /root/.ssh/config
RUN /bin/sh
RUN git clone ssh://git@direktspeed.github:oscentral/osc-dns /osc-dns
#RUN source ~/.profile
RUN nvm install 0.10.13
RUN nvm use 0.10.13
