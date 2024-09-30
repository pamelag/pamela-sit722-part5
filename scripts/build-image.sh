# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# build the book-catalog microservice
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile .

# build the inventory-management microservice
docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory_management/Dockerfile .