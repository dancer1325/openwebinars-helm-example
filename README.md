# Chart Example
* Create a chart via helm

## How to create it?
* `helm create chart-example`
* Delete all content into 'templates' folder to be created from scratch
* Create a typical deployment.yaml file for nginx, adding variables to template it


## How to deploy it?
* Navigate to the path which contains Chart.yaml
* `helm install NameToGive .`

## How to upgrade chart's characteristics?
* `helm upgrade NameOfTheRelease . --set VariableToAdjust=Value`
  * Example: `helm upgrade myrelease . --set replicas=3`

## How to make rollbacks?
* Check history
  * `helm history NameOfTheRelease`
* Make the rollback
  * `helm rollback NameOfTheRelease versionToRollBack`
