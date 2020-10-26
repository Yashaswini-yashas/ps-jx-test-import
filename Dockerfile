FROM openjdk:8-jdk-slim
ENV PORT 8020
EXPOSE 8020
COPY build/libs/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "app.jar"]
