FROM python:3.10-slim
COPY . /Interview9
WORKDIR /Interview9
RUN sudo apt-get -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install ./google-chrome-stable_current_amd64.deb
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null