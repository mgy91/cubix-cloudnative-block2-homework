FROM quay.io/drsylent/cubix/block2/homework-base:java25

ARG APP_FOLDER

LABEL cubix.homework.owner="Merza György"

ENV CUBIX_HOMEWORK="Merza György"
ENV APP_DEFAULT_MESSAGE=""

WORKDIR /opt/app
COPY ${APP_FOLDER}/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
