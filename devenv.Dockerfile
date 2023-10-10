# tag: loremipsum2254/dpw-devenv
# sudo docker build -f devenv.Dockerfile -t loremipsum2254/dpw-devenv .

FROM maven:3.9.4-amazoncorretto-8

WORKDIR /opt/scalaappdev

COPY . .

RUN ["mvn", "clean", "package"]