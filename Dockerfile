FROM jupyter/minimal-notebook
MAINTAINER Brendan Rius <ping@brendan-rius.com>

USER root

WORKDIR /tmp

COPY ./ jupyter_CbC_kernel/

RUN pip install --no-cache-dir jupyter_CbC_kernel/
RUN cd jupyter_CbC_kernel && install_c_kernel --user

WORKDIR /home/$NB_USER/

USER $NB_USER
