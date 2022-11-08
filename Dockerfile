FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install --no-cache-dir -y python3
RUN sudo apt-get install --no-cache-dir -y python3.8-distutils
RUN sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN sudo python3.8 get-pip.py
RUN exit
COPY . /Interview9
WORKDIR /Interview9
RUN export PATH="/home/seluser/.local/bin:$PATH"
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null