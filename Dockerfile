FROM python:3.9.7-alpine3.13

WORKDIR /app

COPY src/. .

RUN adduser -D speedtest
RUN pip3 install -r requirements.txt && \
    rm requirements.txt

RUN chown -R speedtest:speedtest /app

USER speedtest

CMD ["python", "-u", "test.py"]

HEALTHCHECK --timeout=10s CMD wget --no-verbose --tries=1 --spider http://localhost:${SPEEDTEST_PORT:=9798}/