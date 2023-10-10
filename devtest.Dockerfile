# sudo docker build -f devtest.Dockerfile .

FROM loremipsum2254/dpw-devenv

WORKDIR /opt/scalaappdev

CMD ["mvn", "test"]