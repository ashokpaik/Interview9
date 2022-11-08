FROM selenium/standalone-chrome
RUN sudo apt install python3
RUN sudo apt update
RUN sudo apt install python-pip
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null