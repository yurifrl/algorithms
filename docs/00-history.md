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
or
mvn clean compile exec:java

# Remember
- C-a + s

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

# Code snipets (i don't remenber java)
```
  public void testMainCall() {
    App.main(new String[] {  });
  }

  public void testSqrt() {
    App obj = new App();
    assertTrue( obj.sqrt(4) == 2  );
  }

  public static void main( String[] args ) {
    System.out.println("Hello from main");
  }
```


mvn install:install-file -Dfile=./vendor/algs4.jar -DgroupId=com.algs4 -DartifactId=com.algs4 -Dversion=1.0 -Dpackaging=jar
mvn install:install-file \
 -Dfile=./vendor/algs4.jar \
 -DgroupId=com.algs4 \
 -DartifactId=com.algs4 \
 -Dversion=1.0 \
 -Dpackaging=jar \
 -DgeneratePom=true

 http://rick-hightower.blogspot.com.br/2015/05/using-docker-gradle-to-create-java.html

