#From Kali Linux Base Image 
FROM kalilinux/kali-linux-docker 

ENV DEBIAN_FRONTEND noninteractive 
#Do APT Update 
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean 
#Install Kali Linux "Top 10 Tools" & Useful Tools
RUN apt-get -y install kali-linux-top10 exploitdb man-db dirb nikto wpscan uniscan enum4linux
#Install Forensics & Stegno Tools
RUN apt-get install -y apt-utils \
                       forensics-all \
                       foremost \
                       binwalk \
                       exiftool \
                       outguess \
                       pngtools \
                       pngcheck \
                       stegosuite \
                       git \
                       hexedit \
                       python3-pip \
                       python-pip \
                       autotools-dev \
                       automake \
                       libevent-dev \
                       bsdmainutils \
                       ffmpeg \
                       crunch \
                       cewl \
                       xxd \
                       hashcat \
                       gdb \
                       wordlists

# initialize Metasploit databse
RUN service postgresql start && msfdb init && service postgresql stop
VOLUME /root /var/lib/postgresql


# Other installs
RUN pip install pwntools

# Set entrypoint and working directory
WORKDIR /root/

# Indicate we want to expose ports 80 and 443
EXPOSE 4444

WORKDIR /root
CMD ["/bin/bash"]
