# mm-kali-linux-docker
MM Kali Linux Docker Image, Specially for CTF Players

Tools Lists

Top-Ten Tools and some useful Tools
1.kali-linux-top10 
2.exploitdb 
3.man-db 
4.dirb 
5.nikto 
6.wpscan 
7.uniscan 
8.enum4linux

Forensic & Stegno Tools

forensics-all 
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

*Build Command 

docker build -t yourname/imagename path/to/Dockerfile

*Run Command with working directory to solve challenge files 
 sudo docker run -it --rm -v $(pwd)/kali-file:/root kaungthant/mmkali
