FROM ubuntu
RUN apt-get update
RUN apt-get install -y ttyd
CMD ["ttyd" "-W" "bash"]
