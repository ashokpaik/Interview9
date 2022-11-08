FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install -y python3
RUN sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null