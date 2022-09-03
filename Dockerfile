FROM python:3.10.6-alpine3.16

# install requirements
RUN pip install "black[d]"

## set working directory
WORKDIR /usr/src/app

## add app
COPY . /usr/src/app

RUN chmod 755 start.sh
EXPOSE $PORT

CMD ["sh", "/usr/src/app/start.sh"]