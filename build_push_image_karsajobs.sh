# Build docker image backend
docker build -t ghcr.io/fitrahasfar/karsajobs:latest .

# Login ke gitHub packages menggunakan PAT
echo $GITHUB_TOKEN | docker login ghcr.io -u fitrahasfar --password-stdin

# Push docker image ke gitHub container registry
docker push ghcr.io/fitrahasfar/karsajobs:latest
