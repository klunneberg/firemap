# Base installation on current rocker/rstudio image
FROM rocker/rstudio

# Add conda installer and run
ADD conda/Miniconda3-latest-Linux-x86_64.sh /home/rstudio/
RUN chmod +x /home/rstudio/Miniconda3-latest-Linux-x86_64.sh && \ 
  bash /home/rstudio/Miniconda3-latest-Linux-x86_64.sh -b -p home/rstudio/miniconda3/ && \
  rm /home/rstudio/Miniconda3-latest-Linux-x86_64.sh

# Add r package requirements and run
ADD add_r_kernel.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/add_r_kernel.sh && \
#  /usr/local/bin/add_r_kernel.sh

# move bashrc file in and reload the shell
ADD .bashrc /home/rstudio/
CMD /bin/bash -c "source /home/rstudio/.bashrc"
