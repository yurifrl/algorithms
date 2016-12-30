FROM openjdk

ENV HOME /root

WORKDIR /usr/local/algs4

ADD http://algs4.cs.princeton.edu/code/algs4.jar .
ADD http://algs4.cs.princeton.edu/linux/javac-algs4 /usr/local/bin
ADD http://algs4.cs.princeton.edu/linux/java-algs4 /usr/local/bin

ADD http://algs4.cs.princeton.edu/linux/checkstyle.zip .
ADD http://algs4.cs.princeton.edu/linux/checkstyle-algs4.xml .
ADD http://algs4.cs.princeton.edu/linux/checkstyle-suppressions.xml .
ADD http://algs4.cs.princeton.edu/linux/checkstyle-algs4 /usr/local/bin
RUN unzip checkstyle.zip

ADD http://algs4.cs.princeton.edu/linux/findbugs.zip .
ADD http://algs4.cs.princeton.edu/linux/findbugs.xml .
ADD http://algs4.cs.princeton.edu/linux/findbugs-algs4 /usr/local/bin
RUN unzip findbugs.zip

ADD http://algs4.cs.princeton.edu/linux/drjava.jar .
ADD http://algs4.cs.princeton.edu/linux/drjava /usr/local/bin
ADD http://algs4.cs.princeton.edu/linux/.drjava $HOME
RUN sed -i -- 's/#last.dir = INSTALL_DIR/last.dir = INSTALL_DIR/g' $HOME/.drjava
RUN sed -i -- 's/#last.interactions.dir = INSTALL_DIR/last.interactions.dir = INSTALL_DIR/g' $HOME/.drjava

ADD data/algs4-data.zip .
RUN unzip algs4-data.zip

RUN chmod 775 /usr/local/bin/*

WORKDIR /usr/src/app

ENV INSTALL_DIR /usr/src/app

COPY build/libs/app.jar /usr/src/app

CMD ["java", "-cp", "/usr/src/app/app.jar", "com.app.App"]

