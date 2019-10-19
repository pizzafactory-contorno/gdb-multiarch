FROM pizzafactory0contorno/piatto:debian-10.1

USER root
RUN apt-get update && \
    apt-get install -y gdb-multiarch && \
    apt-get autoremove -y && \
    rm -fr /var/lib/apt/lists/*
USER user
