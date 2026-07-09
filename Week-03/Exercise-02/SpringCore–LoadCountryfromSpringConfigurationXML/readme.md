# Spring Core - Load Country from Spring Configuration XML

## Objective

The objective of this hands-on is to understand how Spring Core uses XML configuration to create and manage beans. In this project, I configured a `Country` bean in an XML file and loaded it into the application using the Spring IoC container.

---

## Technologies Used

- Java 17
- Spring Boot 3
- Spring Core
- Maven
- IntelliJ IDEA

---

## Project Structure

```
spring-learn-2
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── cognizant
│   │   │           └── spring_learn
│   │   │               ├── Country.java
│   │   │               └── SpringLearnApplication.java
│   │   │
│   │   └── resources
│   │       ├── application.properties
│   │       └── country.xml
│   │
│   └── test
│
└── pom.xml
```

---

## Implementation

### 1. Created the Country Class

The `Country` class contains:

- `code`
- `name`
- Default constructor
- Getters and Setters
- `toString()` method

Debug logs were added inside the constructor and setter/getter methods.

---

### 2. Created XML Configuration

A `country.xml` file was created inside the `resources` folder.

The Country bean was configured as:

```xml
<bean id="country" class="com.cognizant.spring_learn.Country">
    <property name="code" value="IN"/>
    <property name="name" value="India"/>
</bean>
```

---

### 3. Loaded the Bean

The bean was loaded using:

```java
ApplicationContext context =
        new ClassPathXmlApplicationContext("country.xml");

Country country = context.getBean("country", Country.class);
```

The country details were displayed using the logger.

---

## Spring Concepts Learned

### Bean

A bean is an object that is created and managed by the Spring IoC container.

### id

The unique name used to identify a bean.

### class

Specifies the class whose object Spring should create.

### property

Used to inject values into the bean.

### ApplicationContext

The Spring container responsible for creating and managing beans.

### ClassPathXmlApplicationContext

Loads bean definitions from an XML configuration file present in the classpath.

### getBean()

Returns the bean object from the Spring container. If the bean already exists, the existing instance is returned.

---

## Output

The application loads the Country bean from `country.xml` and displays the configured country details in the console.

---

## What I Learned

- Creating beans using XML configuration.
- Loading Spring configuration files.
- Using `ApplicationContext`.
- Retrieving beans using `getBean()`.
- Understanding how the Spring IoC container creates and manages objects.
