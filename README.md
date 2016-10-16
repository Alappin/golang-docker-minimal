# Example on building a minimal GO Docker container
# LINUX

1. Copy Certificate to the working dir 
```bash
cp /etc/ssl/certs/ca-certificates.crt .
```

2. Build the application with as a statically linked binary:

```bash
CGO_ENABLED=0 GOOS=linux go build -a --ldflags="-s" --installsuffix cgo -o main
```

3. Build the Docker container

```bash
docker build -t YOURNAME/APPNAME -f ./Dockerfile .
```

4. Run it `docker run -d -p 3000:3000 YOURNAME/APPNAME`
