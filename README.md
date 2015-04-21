## A Docker Container for Cassandra

A Docker container for a C*. The current version is installs Cassandra 2.1.4.

### Building the image

```
docker build -t cassandra-container .
```

### Running the image

```
docker run -p 9042:9042 -td cassandra-container:latest
```

