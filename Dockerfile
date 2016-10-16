FROM scratch

# Add CA Certificates this is different depending on distribution
ADD ca-certificates.crt /etc/ssl/certs/

# Build with the following line to get a static binary
# CGO_ENABLED=0 GOOS=linux go build -a --ldflags="-s" --installsuffix cgo -o main

ADD main /

# Should match App port
EXPOSE 3000

ENTRYPOINT ["/main"]
