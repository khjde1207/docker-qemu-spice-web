docker run  --privileged --cpus=2 \
    -v ${PWD}:/data \
    -e VM_DISK_IMAGE=/data/win10img \
    -e VM_DISK_IMAGE_SIZE=50G \
    -e VM_RAM=4096 \
    -e ISO=win10.iso \
    -p 5959:5959 \
    khjde1207/qemu