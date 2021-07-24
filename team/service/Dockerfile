FROM java:8
WORKDIR /app
RUN echo "Asia/Shanghai" > /etc/timezone
ADD app.jar app.jar
EXPOSE 8081
CMD ["java", "-Xmx600m", "-jar", "app.jar"]
