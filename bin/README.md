# simple-java-maven-app-project

This is the simple maven java based project.

# Install the Maven Wrapper dependencies
```bash
mvn wrapper:wrapper
```

# Build

```bash
./mvnw clean package         #For Linux machine 
```

or

```bash
./mvnw.bat clean package    # For Windows Machine
```

# Command to Create docker images

```bash
docker build -t dmspoc:v1 .
```
# Run the Container
```bash
docker run -d dmspoc:v1 
```