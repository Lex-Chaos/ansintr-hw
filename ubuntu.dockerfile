FROM ubuntu:20.04
RUN apt update && apt install python3 -y
CMD ["bash"]