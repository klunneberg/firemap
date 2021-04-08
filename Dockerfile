# Base installation on current rocker/rstudio image
FROM rocker/rstudio

# Add conda installer and run
ADD conda/Miniconda3-latest-Linux-x86_64.sh /home/rstudio/Downloads/
RUN chmod +x /home/rstudio/Downloads/Miniconda3-latest-Linux-x86_64.sh
RUN bash /home/rstudio/Downloads/Miniconda3-latest-Linux-x86_64.sh

# Add r package requirements and run
ADD add_r_kernel.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/add_r_kernel.sh
RUN /usr/local/bin/add_r_kernel.sh
