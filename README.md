# Chartmuseum
* Reference: https://chartmuseum.com/

## Content
* 'values.yaml'
  * Set property variables for installing it

## How to run it?
  * `helm install chartmuseumrepo  stable/chartmuseum --values values.yaml`
    * Problems:
        * Problem1: "kubelet does not have ClusterDNS IP configured and cannot create Pod using "ClusterFirst" policy. Falling back to "Default" policy."
            * Solution: ?
  * `helm install stable/chartmuseum --name myrepo --values values.yaml`
    * Problems:
        * Problem1: "Error: INSTALLATION FAILED: must either provide a name or specify --generate-name:
            * Solution: Run the previous command

