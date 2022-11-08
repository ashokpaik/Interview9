FROM python:3.10-buster
COPY . /Interview9
WORKDIR /Interview9
RUN cat << EOF > /etc/apt/sources.list.d/google-chrome.list deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main EOF
RUN wget -O- https://dl.google.com/linux/linux_signing_key.pub |gpg --dearmor > /etc/apt/trusted.gpg.d/google.gpg
RUN apt install google-chrome-stable
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=report.xml"]
CMD tail -f /dev/null