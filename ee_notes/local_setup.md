# Recommended local setup for JavaEE Applications
## Downloading the IDE
-  It is recommended you use IntelliJ, however any other IDE is acceptable
- Install the [latest JDK](https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html)
- Download and save the latest [Java EE server](https://www.oracle.com/technetwork/java/javaee/downloads/index.html). We want the full version, not web profile. Proceed to extract this
- Set the run configuration to use the glassfish server found in the Java EE folder 

## Running unit tests locally
Unit tests can be run from the command line or through the IDE using Maven. This will also enforce style checks too as part of the test suite.

- Ensure maven in installed
- If using the IDE set the startup to maven and add `test` to the command line parameters
- If using a shell then run the following in your repository: `maven test`


## Check style IDEA plugin

It is recommended to install the check-style plugin so the IDE can help you fix style errors before pushing to CI:

- Download the plugin [here](https://plugins.jetbrains.com/plugin/1065-checkstyle-idea)
- In IntelliJ go to File->Settings->Plugins
- Load the downloading plugin from disk
- Restart IntelliJ and go to File->Settings->Checkstyle
- Ensure the `Sun Checks` are enabled
- Under Editor->Inspections untick and tick `Checkstyle real-time scan` to actually get it to start checking

