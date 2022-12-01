VERSION=$1
echo "Construyendo version: $VERSION"
# localhost:32000  is the microk8s' docker registry port
docker build -t "localhost:32000/myapp:$VERSION" .
docker push "localhost:32000/myapp:$VERSION"
# Problems: microk8s Get "http://localhost:32000/v2/": dial tcp [::1]:32000: connect: connection refused
helm dependency update helm-chart
# Download the chart's dependencies and add them to your chart
helm push helm-chart --version="$VERSION" myrepo
# Push the chart to a private chart repo
