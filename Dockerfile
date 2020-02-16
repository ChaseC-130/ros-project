FROM ros:melodic-ros-base
# install packages
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/opt/lists
