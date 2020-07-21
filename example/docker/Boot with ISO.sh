docker run -d --privileged --cpus=2 \
    -v ${PWD}:/data \
    -e VM_DISK_IMAGE=/data/win10img \
    -e VM_DISK_IMAGE_SIZE=50G \
    -e REMOTE_ACCESS=spice \
    -e VM_RAM=4096 \
    -e ISO=windows-guest.iso \
    -p 5000:5000 \
    khjde1207/qemunovnc
    
    
    
    
    -p 5900:5900 \