FROM debian:buster-slim
MAINTAINER anthony.batucan@gmail.com

RUN apt-get update \
  && apt install -y \
  libgstrtspserver-1.0-0 \
  libgstreamer1.0-0 \
  libgstreamer-plugins-bad1.0-0 \
  gstreamer1.0-plugins-good \
  gstreamer1.0-plugins-bad \
  && mkdir /config \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
COPY neolink.toml /config/neolink.toml
COPY neolink /usr/local/bin/neolink
RUN chmod +x /usr/local/bin/neolink && chmod +x /entrypoint.sh

CMD ["/usr/local/bin/neolink", "rtsp", "--config", "/config/neolink.toml"]
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8554
