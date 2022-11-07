FROM python:3.10-slim
COPY . /Interview9
WORKDIR /Interview9/tests
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get install -yqq unzip curl
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null