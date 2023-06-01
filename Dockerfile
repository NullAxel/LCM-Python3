FROM ubuntu
RUN wget https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.${TARGETARCH} -O /bin/ttyd
CMD ["ttyd" "-W" "bash"]
EXPOSE 7681
