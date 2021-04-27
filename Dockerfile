FROM gcc:latest

COPY . usr/src/jenkins_docker_cpp_1.0

WORKDIR usr/src/jenkins_docker_cpp_1.0

# RUN cmake . -G "MinGW Makefiles"; make; main
RUN g++ -o main main.cpp

CMD ["main"]                                      # run command inside container
