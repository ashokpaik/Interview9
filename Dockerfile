FROM selenium/standalone-chrome
USER root
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null
