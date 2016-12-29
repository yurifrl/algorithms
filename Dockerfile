# FROM maven
FROM frekele/gradle

WORKDIR /usr/src/app

ONBUILD ADD . /usr/src/app

# ONBUILD RUN mvn install
