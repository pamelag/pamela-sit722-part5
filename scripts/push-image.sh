# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$SERVICE_API"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/$SERVICE_API:$VERSION