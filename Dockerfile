FROM python:3.10-alpine
LABEL maintainer="####"
COPY . /Interview9
WORKDIR /Interview9
RUN python -m ven v en v
RUN call ./en v/Scripts/activate.bat
RUN pip install --no-cache-dir -r requirements.txt
sbase install chromedriver latest
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null
