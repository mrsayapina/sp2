FROM ubuntu
RUN apt-get update; exit 0
RUN apt-get install build-essential gdb gcc-multilib; exit 0
RUN apt install nano; exit 0
RUN apt install vim; exit 0
COPY ./smi2.s /home/smi2.s
COPY ./smi2_c.c /home/smi2_c.c