FROM python:3.7.2
ARG branch=develop

RUN git clone -b $branch https://github.com/ishmelev23/blockchain_proxy \
	&& pip3 install -r blockchain_proxy/requirements.pip \
	&& pip3 install gunicorn psycopg2==2.7.3.2

WORKDIR /blockchain_proxy/
ADD entrypoint.sh ./entrypoint.sh
RUN chmod +x worker.py
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
