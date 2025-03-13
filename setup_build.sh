sudo apt-get update
sudo apt-get upgrade
sudo apt install python3.10
sudo apt-get install -y \
    ca-certificates \
    libicu-dev \
    git \
    curl \
    sudo \
    pre-commit \
    wget \
    jq \
    apt-transport-https \
    lsb-release \
    gnupg \
    software-properties-common

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az bicep install && az aks install-cli

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm ./get_helm.sh

wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq \
    && chmod +x /usr/bin/yq

rm -rf /var/lib/apt/lists/* \
    && apt-get purge -y --auto-remove \
    && apt-get autoremove \
    && apt-get clean

curl -sSL https://install.python-poetry.org | python3 -
