FROM python:3.10-buster
COPY . /Interview9
WORKDIR /Interview9
RUN apt install google-chrome-stable
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null