FROM dspeed/osc-nodejs
ADD http://localhost:55000/frank-git /root/.ssh/frank-git
ADD http://localhost:55000/config /root/.ssh/config
RUN git clone http://github.com/oscentral/osc-dns /osc-dns