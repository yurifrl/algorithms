FROM java

WORKDIR /usr/src/app

COPY build/libs/app.jar /usr/src/app

COPY src/main/resources/algs4.jar /usr/src/app

COPY src/main/resources/stdlib.jar /usr/src/app

# RUN java -jar /usr/src/app/algs4.jar

# RUN java -jar /usr/src/app/stdlib.jar

CMD java -cp /usr/src/app/app.jar com.app.App

