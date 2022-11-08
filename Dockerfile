FROM selenium/standalone-chrome
COPY . /Interview9
WORKDIR /Interview9
RUN sudo usermod -aG sudo seluser
RUN seluser apt-get update
RUN seluser apt-get install -y python3
RUN seluser apt-get install -y python3.8-distutils
RUN seluser curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN seluser python3.8 get-pip.py
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null