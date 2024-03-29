FROM maven:3.5.2-jdk-8
#debian based
RUN apt-get update -qqy \
    && apt-get -qqy install libglu1 qemu-kvm libvirt-dev virtinst bridge-utils msr-tools kmod \
    && wget -q http://security.ubuntu.com/ubuntu/pool/main/c/cpu-checker/cpu-checker_0.7-0ubuntu7_amd64.deb \
    && dpkg -i cpu-checker_0.7-0ubuntu7_amd64.deb \
    && apt-get install -f \
    && kvm-ok