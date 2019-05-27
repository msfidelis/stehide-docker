FROM debian:buster


RUN apt-get update && \
    apt-get install -y --no-install-recommends steghide && \
    apt-get clean autoclean && \
    apt-get autoremove -y --purge && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/


ENTRYPOINT ["steghide"]

