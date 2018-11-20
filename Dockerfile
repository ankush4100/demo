FROM anapsix/alpine-java
LABEL maintainer="ankush4100@gmail.com"
COPY /target/jenkins-example-2.3-SNAPSHOT.jar /home/springbootquickstart.jar
CMD ["java","-jar","/home/springbootquickstart.jar"]
