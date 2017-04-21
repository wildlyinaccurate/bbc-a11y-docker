FROM node
MAINTAINER joseph.wynn@bbc.co.uk

RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb && \
    apt-get clean

RUN npm install --global bbc-a11y

RUN rm /usr/local/bin/bbc-a11y

ADD bbc-a11y /usr/local/bin/bbc-a11y

ENTRYPOINT ["bbc-a11y"]
