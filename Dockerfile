FROM fedora:28

RUN yum -y install java-1.8.0-openjdk-devel maven

WORKDIR bugreport

COPY src src

COPY pom.xml pom.xml

RUN chmod 775 src/main/resources/script.sh

RUN mvn clean install

RUN ls -alh src/main/resources/script.sh

RUN ls -alh target/classes/script.sh