# sudo docker build -f run.Dockerfile .

FROM loremipsum2254/dpw-devenv as devenv

FROM amazoncorretto:8
WORKDIR /opt/scalaapp
COPY --from=devenv /opt/scalaappdev/target/dockertest.jar .
CMD ["java", "-jar", "/opt/scalaapp/dockertest.jar"]