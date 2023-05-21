FROM node:16.15.1

RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN mkdir -p /code/fe_qr_code

WORKDIR /code/fe_qr_code

ADD ./package.json /code/fe_qr_code/

RUN yarn