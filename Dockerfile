FROM python:3.10-slim
COPY . /Interview9
WORKDIR /Interview9
# Installing Unzip
RUN apt-get install -yqq unzip

# Download the Chrome Driver
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`
curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE
`/chromedriver_linux64.zip

# Unzip the Chrome Driver into /usr/local/bin directory
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# Set display port as an environment variable
ENV DISPLAY=:99
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null