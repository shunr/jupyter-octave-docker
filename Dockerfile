FROM jupyter/scipy-notebook

USER root
RUN apt-get update && \
    apt-get install -y octave
USER $NB_UID

RUN conda config --add channels conda-forge && \
    conda install --quiet --yes \
    octave_kernel \
    texinfo && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER