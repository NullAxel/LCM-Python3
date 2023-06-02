FROM ubuntu
RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN wget "https://github.com/tsl0922/ttyd/releases/download/1.7.1/ttyd.aarch64" -O /bin/ttyd
RUN chmod +x /bin/ttyd
CMD [ "/bin/ttyd", "-W", "bash" ]
EXPOSE 7681
