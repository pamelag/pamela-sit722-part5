# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$SERVICE_NAME"

envsubst < ./scripts/kubernetes/$SERVICE_NAME/deployment.yaml | kubectl apply -f -
envsubst < ./scripts/kubernetes/$SERVICE_NAME/service.yaml | kubectl apply -f -