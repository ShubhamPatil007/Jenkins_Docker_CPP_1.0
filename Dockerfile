FROM gcc:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install cmake;

COPY . usr/src/jenkins_docker_cpp_1.0

WORKDIR usr/src/jenkins_docker_cpp_1.0

RUN cmake . -G "Unix Makefiles"; make;

CMD ["./main"]                                      # run shell command inside container
