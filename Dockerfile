FROM ghcr.io/nuvolaris/nuvolaris-devkit:0.2.0-trinity.22030813
RUN curl -sL "https://github.com/go-task/task/releases/latest/download/task_linux_$(dpkg --print-architecture).tar.gz" |\
    sudo tar xzf - -C /usr/bin
RUN cd /tmp ;\ 
    curl -sL "https://awscli.amazonaws.com/awscli-exe-linux-$(arch).zip" -o "awscliv2.zip" ;\
    unzip awscliv2.zip ;\
    sudo ./aws/install ;\
    rm -Rvf aws
RUN curl -sL "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_$(dpkg --print-architecture).tar.gz" |\
    sudo tar xzf - -C /usr/bin
RUN cd /tmp ;\
    curl -LO https://launchpad.net/juju/2.9/2.9.0/+download/juju-2.9.0-linux-$(dpkg --print-architecture).tar.xz ;\
    sudo tar xJvf juju-* ;\
    sudo install -o root -g root -m 0755 juju /usr/local/bin/juju ;\
    sudo rm -f juju*
RUN /bin/bash -c 'source /home/nuvolaris/.bashrc ; pip install linode-cli'
