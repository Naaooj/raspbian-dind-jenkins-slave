FROM resin/rpi-raspbian:jessie

MAINTAINER johann.bernez@gmail.com

RUN apt-get update && \
    apt-get install -y openssh-server curl iptables git ca-certificates libdevmapper-dev libc6-dev && \
    apt-get install -y openjdk-8-jdk --no-install-recommends && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* && \
    set -i 's|session required pam_loginuid.so|session optional pam_loginuid.so|g' /etc/pam.d/sshd && \
    mkdir -p /var/run/sshd && \
    adduser --quiet jenkins && \
    echo "jenkins:jenkins" | chpasswd && \
    curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | sudo bash && \
    apt-get install docker-hypriot=1.10.3-1

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
