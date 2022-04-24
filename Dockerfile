FROM ryoishin/asterix:debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/dreambotsproduction/AsterixUB/master/requirements.txt
COPY . .
COPY ./Asterix.sh .
ADD ./Asterix.sh .
CMD ["bash","Asterix.sh"]
