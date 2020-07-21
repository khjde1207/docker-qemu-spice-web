docker run -d --privileged --cpus=2 \
    -v ${PWD}:/data \
    -e VM_DISK_IMAGE=/data/win10img \ 
    -e VM_DISK_IMAGE_SIZE=50G \
    -e VM_RAM=4096 \
    -e ISO=win10.iso \
    -p 6080:6080 \
    -p 5900:5900 \
    khjde1207/qemunovnc