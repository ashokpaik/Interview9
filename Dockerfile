FROM selenium/standalone-chrome
COPY . /Interview9
WORKDIR /Interview9
RUN sudo usermod -aG sudo seluser
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3.8-distutils
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.8 get-pip.py
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null