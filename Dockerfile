FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install -y python3
RUN sudo apt-get install -y python3.8-distutils
RUN sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN sudo python3.8 get-pip.py
COPY . /Interview9
WORKDIR /Interview9
RUN sudo pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null