# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Delete the microservice deployments
envsubst < ./scripts/kubernetes/$SERVICE_NAME/deployment.yaml | kubectl delete -f -
envsubst < ./scripts/kubernetes/$SERVICE_NAME/service.yaml | kubectl delete -f -