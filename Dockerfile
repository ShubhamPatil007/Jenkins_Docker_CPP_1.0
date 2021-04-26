FROM gcc:latest

COPY . usr/src/jenkins_docker_cpp_1.0

WORKDIR usr/src/jenkins_docker_cpp_1.0

RUN g++ -o main main.cpp

CMD ["main"]
