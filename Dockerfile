FROM gcc:latest

COPY . usr/src/jenkins_docker_cpp_1.0

WORKDIR usr/src/jenkins_docker_cpp_1.0

RUN cmake . -G "MinGW Makefiles" && make

CMD ["main"]
