FROM ubuntu
RUN apt-get update
RUN apt-get install ttyd
CMD ["ttyd" "-W" "bash"]
