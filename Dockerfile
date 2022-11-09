FROM ubuntu
COPY . /Interview9
WORKDIR /Interview9
RUN apt-get update
#Install PIP
RUN apt-get install -y python3-pip
#Install Chrome
RUN apt-get install -y wget
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install -y ./google-chrome-stable_current_amd64.deb

#Install ChromeDriver
RUN apt-get install -y unzip
RUN wget -q https://chromedriver.storage.googleapis.com/107.0.5304.62/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver
RUN chown root:root /usr/bin/chromedriver
RUN chmod +x /usr/bin/chromedriver




RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--html=/testreports/report.html", "-v", "--junit-xml=report.xml"]
CMD tail -f /dev/null