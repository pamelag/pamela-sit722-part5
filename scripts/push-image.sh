# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

docker push $CONTAINER_REGISTRY/book-catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory-management:$VERSION