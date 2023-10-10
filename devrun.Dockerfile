# sudo docker build -f devrun.Dockerfile .

FROM loremipsum2254/dpw-devenv

WORKDIR /opt/scalaappdev

CMD ["mvn", "compile", "exec:java"]