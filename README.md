# kubernetes-configurations

This is an experiment to deploy kubernetes services with configurations stored directly in git. Kubernetes configs can then enjoy direct and strict version control

runme.sh will create a namespace and then deploy the elements in the ingress-controller within. These files can be updated and the cluster updates by rerunning the `kubectl apply -f ingress-controller -n dev-andrew-1` command.

The ingress and service can be deployed with 'kubectl apply -f service -n dev-andrew-1'

There seems to be a bug updating some of the elements:

```
$kubectl apply -f ingress-controller -n dev-andrew-2
configmap "prodding-hydra-nginx-ingress-controller" configured
deployment "prodding-hydra-nginx-ingress-controller" configured
deployment "prodding-hydra-nginx-ingress-default-backend" configured
Error from server (Invalid): error when applying patch:
{"spec":{"clusterIP":""}}
to:
&{0x4237f2a80 0x42377b730 dev-andrew-2 prodding-hydra-nginx-ingress-controller-metrics ingress-controller/controller-metrics-service.yaml 0x423560260 0x4240a4000 11557644 false}
for: "ingress-controller/controller-metrics-service.yaml": Service "prodding-hydra-nginx-ingress-controller-metrics" is invalid: spec.clusterIP: Invalid value: "": field is immutable
Error from server (Invalid): error when applying patch:
{"spec":{"clusterIP":""}}
to:
&{0x4237f2c00 0x423733ea0 dev-andrew-2 prodding-hydra-nginx-ingress-controller ingress-controller/controller-service.yaml 0x423560310 0x4240a4070 11557661 false}
for: "ingress-controller/controller-service.yaml": Service "prodding-hydra-nginx-ingress-controller" is invalid: spec.clusterIP: Invalid value: "": field is immutable
Error from server (Invalid): error when applying patch:
{"spec":{"clusterIP":""}}
to:
&{0x4234c2600 0x42369bb90 dev-andrew-2 prodding-hydra-nginx-ingress-controller-stats ingress-controller/controller-stats-service.yaml 0x4240a4110 0x4240a4168 11557654 false}
for: "ingress-controller/controller-stats-service.yaml": Service "prodding-hydra-nginx-ingress-controller-stats" is invalid: spec.clusterIP: Invalid value: "": field is immutable
Error from server (Invalid): error when applying patch:
{"spec":{"clusterIP":""}}
to:
&{0x4234c29c0 0x42381fe30 dev-andrew-2 prodding-hydra-nginx-ingress-default-backend ingress-controller/default-backend-service.yaml 0x4240a43d0 0x4240a4428 11557675 false}
for: "ingress-controller/default-backend-service.yaml": Service "prodding-hydra-nginx-ingress-default-backend" is invalid: spec.clusterIP: Invalid value: "": field is immutable
```   
