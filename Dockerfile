FROM debian 

RUN apt update && apt install -y libsndfile1-dev libasound2

COPY . /app
WORKDIR /app

RUN cp ./bin/Analog_Bridge.amd64 ./Analog_Bridge 

CMD ["./Analog_Bridge", "./Analog_Bridge.ini"]
