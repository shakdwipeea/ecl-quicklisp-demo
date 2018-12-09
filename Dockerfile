FROM ubuntu:18.04

RUN apt update && apt -y install make autoconf git g++

RUN git clone https://gitlab.com/embeddable-common-lisp/ecl

WORKDIR ecl

RUN ls

RUN ./configure

RUN make

RUN make install

CMD ["ecl"]