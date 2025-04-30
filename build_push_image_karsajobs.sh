# Build Docker Image Backend
docker build -t ghcr.io/fitrahasfar/karsajobs:latest .

# Login ke GitHub Packages menggunakan token akses pribadi (Personal Access Token)
# Pastikan Anda telah membuat token dengan akses ke container registry di GitHub
echo $GITHUB_TOKEN | docker login ghcr.io -u fitrahasfar --password-stdin

# Push Docker Image ke GitHub Container Registry (GitHub Packages)
docker push ghcr.io/fitrahasfar/karsajobs:latest
