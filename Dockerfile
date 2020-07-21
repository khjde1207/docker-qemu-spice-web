FROM alpine

ENV HOME /root
ENV	DEBIAN_FRONTEND noninteractive 
ENV	LANG en_US.UTF-8 
ENV	LANGUAGE en_US.UTF-8 
ENV	LC_ALL C.UTF-8 
ENV	REMOTE_HOST localhost 
ENV	REMOTE_PORT 5900

ENV VM_RAM=2048
ENV VM_DISK_IMAGE_SIZE=30G
ENV VM_DISK_IMAGE=/data/diskImage
ENV VM_DISK_IMAGE_CREATE_IF_NOT_EXIST=1
ENV ISO=http://releases.ubuntu.com/14.04.2/ubuntu-14.04.2-desktop-amd64.iso
ENV ISO_FORCE_DOWNLOAD=0
ENV NETWORK=
ENV REMOTE_ACCESS=vnc



RUN apk --update --upgrade add \
      nodejs-npm \
      nodejs \
      bash \
      fluxbox \
      git \
      supervisor \
      xvfb \
      x11vnc \
      python2 \
      libvirt-daemon \
      qemu-img \
      qemu-system-x86_64 \
      qemu \
      wget \
      bridge-utils \
      dnsmasq \
      nano \ 
    # Install noVNC
    && git clone https://github.com/khjde1207/svelte-spice-web /root/svelte-spice-web \
	&& rm -rf /root/svelte-spice-web/.git \
	&& cd /root/svelte-spice-web \
	&& npm install \
	&& npm run build 
	# && cp /root/noVNC/node_modules/requirejs/require.js /root/noVNC/build \
    # && ln -s /root/noVNC/build/vnc.html /root/noVNC/build/index.html \
	# && sed -i -- "s/ps -p/ps -o pid | grep/g" /root/noVNC/utils/launch.sh \
	# && apk del git nodejs-npm nodejs


EXPOSE 5000

VOLUME /data



ADD startup.sh /

ENTRYPOINT ["/startup.sh"]
