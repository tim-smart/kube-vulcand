Introduction
===============

This tool watches the Kubernetes API server for Pod (de)registration. New Pods are registered to
Vulcan by setting the correct etcd keys. A deleted Pod is deleted from Vulcan as well by removing it's key in etcd.
Pods will be registered using the following key pattern in etcd: /vulcan/backends/[pod label name]/servers/[pod IP]. Make sure
your Vulcan backend/frontend configuration is configured to use backend servers based on the pod name.

Running
===============

Run as Docker container as follows:

    docker run -d amdatu/amdatu-vulcanized -pods "ws://[kubernetes-server]:8080/api/v1beta3/namespaces/default/pods?watch=true" -etcd "[etcd-address]:2375"