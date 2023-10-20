
In this techub we can see  how to build a maven wrapper based project and dockerized it.
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