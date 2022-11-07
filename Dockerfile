FROM python:3.10-slim
LABEL maintainer="####"
COPY . /Interview9
WORKDIR /Interview9
python -m ven v en v
call ./en v/Scripts/activate.bat
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null