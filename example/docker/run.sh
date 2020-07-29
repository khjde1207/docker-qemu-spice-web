docker run -d --privileged --cpus=2 \
    -v ${PWD}:/data \
    -e VM_DISK_IMAGE=/data/win10img \
    -e VM_DISK_IMAGE_SIZE=50G \
    -e VM_RAM=4096 \
    -e ISO= \
    -p 5959:5959 \
    -p 5900:5900 \
    khjde1207/qemu

    