# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$SERVICE_API"

docker push $CONTAINER_REGISTRY/$SERVICE_API:$VERSION