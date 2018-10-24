# Recommended local setup for JavaEE Applications
## Downloading the IDE
-  It is recommended you use IntelliJ, however any other IDE is acceptable
- Install the [latest JDK](https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html)
- Download and save the latest [Java EE server](https://www.oracle.com/technetwork/java/javaee/downloads/index.html). We want the full version, not web profile. Proceed to extract this
- Set the run configuration to use the glassfish server found in the Java EE folder 

## Running unit tests locally
Unit tests can be run from the command line or through the IDE using Maven. This will also run some static analysis too

- Ensure maven in installed
- If using the IDE set the startup to maven and add `test` to the command line parameters
- If using a shell then run the following in your repository: `mvn test`
