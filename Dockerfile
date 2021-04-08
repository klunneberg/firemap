FROM rocker/rstudio

RUN sudo apt-get install python3.8
RUN sudo apt-get install anaconda

ADD add_r_kernel.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/add_r_kernel.sh
RUN /usr/local/bin/add_r_kernel.sh
