FROM fedora:23
RUN dnf install -y git
# this is the private key you DON'T want to get leaked
COPY id_rsa /
# just for the demo; we are not using the key actually
RUN git clone https://github.com/TomasTomecek/sen /project && \
    cd /project && \
    python3 ./setup.py build
    # make clean would make sense here
