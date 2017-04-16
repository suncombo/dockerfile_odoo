FROM odoo:10.0

MAINTAINER suncombo@gmail.com

USER root

# Install selected extensions and other stuff
RUN apt-get update && apt-get install -y ttf-wqy-zenhei ttf-wqy-microhei \
&& apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*


COPY ./pfbfer/* /usr/lib/python2.7/dist-packages/reportlab/fonts/
COPY ./sitecustomize.py /usr/lib/python2.7/site-packages/sitecustomize.py

USER odoo
