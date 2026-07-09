FROM quay.io/jupyter/base-notebook:python-3.11.9

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        man-db \
        manpages \
        less \
        sudo \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir bash_kernel==0.9.3 \
    && python -m bash_kernel.install

RUN printf '%s\n' \
    'jovyan ALL=(root) NOPASSWD: /usr/sbin/useradd, /usr/sbin/usermod, /usr/sbin/groupadd, /usr/sbin/groupmod, /usr/bin/passwd, /usr/sbin/chpasswd, /usr/bin/getent' \
    > /etc/sudoers.d/jovyan-user-management \
    && chmod 0440 /etc/sudoers.d/jovyan-user-management

WORKDIR /home/jovyan

USER ${NB_UID}