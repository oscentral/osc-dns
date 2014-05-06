FROM dspeed/nvm
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl
ADD /home/frank/.ssh /root/.ssh/
RUN git clone git@direktspeed.github:oscentral/osc-dns /osc-dns
#RUN source ~/.profile
RUN nvm install 0.10.13
RUN nvm use 0.10.13
