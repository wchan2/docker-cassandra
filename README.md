## A Docker Container for Cassandra

A Docker container for a C*. The current version installs Cassandra 2.1.4.

### Building the image

```
docker build -t cassandra-container .
```

### Running the image

```
docker run -p 9042:9042 --name cassandra-1 -td cassandra-container
```

