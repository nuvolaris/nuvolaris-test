# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
FROM ghcr.io/nuvolaris/nuvolaris-devkit:0.2.0-trinity.22030813
RUN curl -sL "https://github.com/go-task/task/releases/latest/download/task_linux_$(dpkg --print-architecture).tar.gz" |\
    sudo tar xzf - -C /usr/bin
RUN cd /tmp ;\
    curl -LO https://launchpad.net/juju/2.9/2.9.0/+download/juju-2.9.0-linux-$(dpkg --print-architecture).tar.xz ;\
    sudo tar xJvf juju-* ;\
    sudo install -o root -g root -m 0755 juju /usr/local/bin/juju ;\
    sudo rm -f juju*
RUN /bin/bash -c 'source /home/nuvolaris/.bashrc ; pip install linode-cli'
