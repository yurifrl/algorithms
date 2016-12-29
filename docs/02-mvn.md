# Ref
- http://www.mkyong.com/maven/how-to-create-a-java-project-with-maven/
- Maven auto run plugin:
    - http://stackoverflow.com/questions/15869784/how-to-run-a-maven-created-jar-file-using-just-the-command-line
    - https://www.tutorialspoint.com/maven/maven_plugins.htm
- https://github.com/aistrate/AlgorithmsSedgewick
- http://stackoverflow.com/questions/4955635/how-to-add-local-jar-files-in-maven-project
- http://stackoverflow.com/questions/4491199/build-maven-project-with-propriatery-libraries-included/4491343#4491343

# To compile and run
mvn package
java -cp target/app-1.0-SNAPSHOT.jar com.app.App
java -cp target/app-1.0-SNAPSHOT.jar com.app.BinarySearch

## Compile and run using tool
mvn clean compile exec:java

# Maven init project
mvn archetype:generate -DgroupId={project-packaging}
                       -DartifactId={project-name}
                       -DarchetypeArtifactId=maven-archetype-quickstart
                       -DinteractiveMode=false

mvn archetype:generate -DgroupId=com.app \
                       -DartifactId=app \
                       -DarchetypeArtifactId=maven-archetype-quickstart \
                       -DinteractiveMode=false

# Maven add jar
mvn install:install-file  -Dfile=./vendor/algs4.jar \
                          -DgroupId=com.algs4 \
                          -DartifactId=com.algs4 \
                          -Dversion=1.0 \
                          -Dpackaging=jar

mvn install:install-file -Dfile=./vendor/algs4.jar \
                         -DgroupId=com.algs4 \
                         -DartifactId=com.algs4 \
                         -Dversion=1.0 \
                         -Dpackaging=jar \
                         -DgeneratePom=true


## Pom.xml
```

```
