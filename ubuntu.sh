#!/bin/bash

apt update

apt install python3-pip libpq-dev libcups2-dev

apt install build-essential openjdk-8-jdk-headless fp-compiler \
    postgresql postgresql-client python3.6 cppreference-doc-en-html \
    cgroup-lite libcap-dev zip

apt install nginx-full python2.7 php7.2-cli php7.2-fpm \
    phppgadmin texlive-latex-base a2ps haskell-platform rustc \
    mono-mcs

git checkout "v1.4"
git submodule update --init

python3 prerequisites.py install

pip3 install -r requirements.txt
