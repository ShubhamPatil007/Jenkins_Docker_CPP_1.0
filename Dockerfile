FROM gcc:latest

COPY . usr/src/jenkins_docker_cpp_1.0

WORKDIR usr/src/jenkins_docker_cpp_1.0

RUN cd usr/src/jenkins_docker_cpp_1.0; cmake . -G "MinGW Makefiles"; make; main

CMD ["main"]
