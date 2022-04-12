FROM kalilinux/kali-rolling
ENTRYPOINT [ "/bin/bash" ]
#RUN && apt -y install kali-linux-headless
RUN apt-get update && apt-get -y install ltrace