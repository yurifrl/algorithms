# Ref
- http://www.mkyong.com/maven/how-to-create-a-java-project-with-maven/

# To compile and run
mvn package
java -cp target/app-1.0-SNAPSHOT.jar com.app.App
java -cp target/app-1.0-SNAPSHOT.jar com.app.BinarySearch

# Tolls
- Algorithms web tools:
    - http://algo-visualizer.jasonpark.me
- Repl web tools:
    - https://repl.it/languages/java
    - http://www.javarepl.com/term.html
- Docker repl Tools:
    - http://joao-parana.com.br/blog/java-9-no-docker-java-playground-com-repl/
    - https://github.com/passy/java-repl
    - https://github.com/albertlatacz/java-repl

# Useful comands
docker run --rm -it passy/java-repl
docker run --rm -it parana/java-jdk9 jshell

# Maven init project
mvn archetype:generate -DgroupId={project-packaging}
                       -DartifactId={project-name}
                       -DarchetypeArtifactId=maven-archetype-quickstart
                       -DinteractiveMode=false

mvn archetype:generate -DgroupId=com.app \
                       -DartifactId=app \
                       -DarchetypeArtifactId=maven-archetype-quickstart \
                       -DinteractiveMode=false
