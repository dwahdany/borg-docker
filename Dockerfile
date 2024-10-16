FROM debian
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    openssh-client \
    borgbackup && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "borg" ]
