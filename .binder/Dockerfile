FROM quay.io/jupyter/base-notebook:python-3.11.9

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        less \
        man-db \
        manpages \
        nano \
    && set +o pipefail \
    && yes | unminimize \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir bash_kernel==0.9.3 \
    && python -m bash_kernel.install \
    && rm -rf /home/jovyan/.ipython

COPY --chown=${NB_UID}:${NB_GID} lesson-content/ /home/jovyan/
COPY --chown=${NB_UID}:${NB_GID} .binder/workspaces/ /tmp/shell-basics-workspaces/

WORKDIR /home/jovyan

USER ${NB_UID}

RUN for workspace in /tmp/shell-basics-workspaces/*.jupyterlab-workspace; do \
        workspace_name="$(basename "${workspace}" .jupyterlab-workspace)"; \
        jupyter lab workspaces import --name "${workspace_name}" "${workspace}"; \
    done \
    && rm -rf /tmp/shell-basics-workspaces
