VERSION=$1
ENVIRONMENT=$2
# numeric value to distinguish the stage
CUSTOM_VAR=$3

echo "Desplegando version $VERSION en el entorno $ENVIRONMENT"
helm repo update
# Guarantee that latest chart versions are selected
helm upgrade --install "$ENVIRONMENT-app-example" myrepo/app-example \
--namespace $ENVIRONMENT \
--version $VERSION \
--set image=localhost:32000/myapp:$VERSION \
--set customVar=$CUSTOM_VAR
# helm upgrade --install  === helm install or update in case it exists
# image     === image pushed to the docker registry