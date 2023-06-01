FROM ubuntu
RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN LINKDOWNLOAD="https://github.com/tsl0922/ttyd/releases/latest/download/ttyd."$TARGETARCH wget "$LINKDOWNLOAD" -O /bin/ttyd
CMD ["ttyd" "-W" "bash"]
EXPOSE 7681
