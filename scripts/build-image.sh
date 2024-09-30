# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$SERVICE_API"
: "$SERVICE_NAME"

# build the desired microservice
docker build -t $CONTAINER_REGISTRY/$SERVICE_API:$VERSION --file ./$SERVICE_NAME/Dockerfile .