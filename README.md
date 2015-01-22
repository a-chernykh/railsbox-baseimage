# Run container

docker run --rm -t -i andreychernih/railsbox-baseimage /sbin/my_init -- bash -l

# Build new image

```bash
docker build -t andreychernih/railsbox-baseimage:latest .
```

# Push image to Docker Hub

```bash
docker push andreychernih/railsbox-baseimage:latest
```

# Pull image from Docker Hub

```bash
docker pull andreychernih/railsbox-baseimage:latest
```
