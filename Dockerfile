FROM ubuntu:latest

RUN apt-get -qq update && apt-get install -y apt-utils
RUN apt-get -y --no-install-recommends install build-essential vim python3 \
            python3-yaml python3-jinja2 pandoc ca-certificates dvipng xzdec \
            texlive texlive-binaries texlive-bibtex-extra texlive-xetex biber \
            texlive-fonts-extra fonts-font-awesome curl wget pybtex
RUN apt-get clean

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

CMD ["/bin/bash"]

