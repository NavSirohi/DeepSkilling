# Spring Learn

## Hands-on 1: Create a Spring Web Project using Maven

### Objective

The objective of this hands-on is to create a Spring Boot Web project using Maven and understand the basic project structure, dependencies, and configuration.

---

## Tools Used

- Java 21
- Spring Boot
- Maven
- Eclipse IDE

---

## Project Details

| Property     | Value         |
| ------------ | ------------- |
| Group        | com.cognizant |
| Artifact     | spring-learn  |
| Project Type | Maven         |
| Language     | Java          |
| Packaging    | Jar           |

---

## Dependencies Added

While creating the project from Spring Initializr, I added the following dependencies:

- Spring Web
- Spring Boot DevTools

Spring Boot also added the Spring Boot Starter Test dependency automatically.

---

# Project Structure

```
spring-learn
│
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   │
│   └── test
│       └── java
│
├── pom.xml
├── mvnw
├── mvnw.cmd
└── README.md
```

---

# Explanation of Important Folders

## src/main/java

This folder contains all the Java source code of the application.

Currently it contains the main class:

```
SpringLearnApplication.java
```

In future, controllers, services, repositories and model classes will also be placed here.

---

## src/main/resources

This folder contains configuration files required by the application.

In this project it contains:

```
application.properties
```

This file is used to configure application settings such as server port, logging, database configuration, etc.

---

## src/test/java

This folder contains test classes used for testing the application.

Spring Boot creates a sample test class automatically.

---

# SpringLearnApplication.java

```java
package com.cognizant.spring_learn;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringLearnApplication {

    private static final Logger LOGGER =
            LoggerFactory.getLogger(SpringLearnApplication.class);

    public static void main(String[] args) {

        LOGGER.info("START");

        SpringApplication.run(SpringLearnApplication.class, args);

        LOGGER.info("END");
    }
}
```

---

# Explanation of main() Method

The `main()` method is the starting point of the Spring Boot application.

When the application runs,

- It starts the Spring Framework.
- It creates the Application Context.
- It scans all Spring components.
- It loads the configuration files.
- It starts the embedded Tomcat server.
- Finally, the application becomes ready to receive HTTP requests.

---

# Logging

I added the following log statements:

```java
LOGGER.info("START");
LOGGER.info("END");
```

These logs help verify that the `main()` method is executed successfully.

---

# @SpringBootApplication

The `@SpringBootApplication` annotation is the main annotation used in a Spring Boot application.

It is a combination of three annotations:

### @Configuration

Marks the class as a configuration class.

### @EnableAutoConfiguration

Automatically configures the application based on the dependencies available in the project.

### @ComponentScan

Scans the package and automatically detects Spring components like:

- Controller
- RestController
- Service
- Repository
- Component

---

# pom.xml

The `pom.xml` file is the Maven configuration file.

It contains:

- Project information
- Dependencies
- Plugins
- Build configuration

Important sections include:

- Group ID
- Artifact ID
- Version
- Parent
- Dependencies
- Build Plugins

The project uses the following important dependencies:

- Spring Boot Starter Web
- Spring Boot DevTools
- Spring Boot Starter Test

---

# Maven Build

To build the project I used the following command:

```bash
mvn clean package
```

This command:

- Cleans the previous build.
- Compiles the project.
- Runs tests.
- Generates the executable JAR file.

---

# Running the Application

The application can be run by:

```
Right Click
↓

SpringLearnApplication.java

↓

Run As

↓

Java Application
```

After running successfully, the console shows logs indicating that the Spring Boot application has started.

---

# Dependency Hierarchy

The Dependency Hierarchy can be viewed in Eclipse using:

```
Right Click pom.xml

↓

Maven

↓

Show Dependency Hierarchy
```

This shows both direct and transitive dependencies used in the project.

Some important dependencies are:

- spring-boot-starter-web
- spring-web
- spring-webmvc
- spring-context
- spring-core
- jackson
- tomcat
- spring-boot-devtools

---

# What I Learned

From this hands-on, I learned:

- How to create a Spring Boot project using Spring Initializr.
- How Maven manages dependencies.
- The purpose of the `pom.xml` file.
- The role of the `@SpringBootApplication` annotation.
- The structure of a Spring Boot project.
- How to build the project using Maven.
- How to run the application in Eclipse.
- How to use logging to verify that the application starts successfully.

---

# Conclusion

In this hands-on, I successfully created a Spring Boot Web project using Maven, imported it into Eclipse, built the project, ran the application, and understood the project structure, Maven configuration, dependency hierarchy, and the purpose of the main Spring Boot application class.
