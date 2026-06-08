FROM eclipse-temurin:21-jre

EXPOSE 8070

ENV APP_HOME /usr/src/app

RUN mvn clean package

COPY target/shopping-cart-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar
