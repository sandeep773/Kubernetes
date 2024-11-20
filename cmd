kubectl top node

→ This command displays resource utilization (CPU/Memory/Storage) for nodes. 
→ It is a great way to find any potential bottlenecks in the node.

kubectl top pod

→ This command displays resource utilization (CPU/Memory/Storage) for pods. 
→ It helps to identify potential performance issues in pod.

kubectl logs POD_NAME [-c CONTAINER_NAME] [flags]

→ This command displays the logs for a pod. 
→ Troubleshoot problems with your pods and see what is happening inside of them.

kubectl describe RESOURCE_TYPE RESOURCE_NAME [flags]

→ This command provides detailed information about a Kubernetes resource. 
→ This is used to have detailed view of a resource and its properties.

kubectl edit RESOURCE_TYPE RESOURCE_NAME [flags]

→ This command opens a text editor so you can edit the definition of a Kubernetes resource. 
→ Make changes to a resource without having to recreate it.

kubectl exec POD_NAME [-c CONTAINER_NAME] -- COMMAND

→ This command executes a command in a pod. 
→ Troubleshoot problems with your pods by running commands in pod.

kubectl port-forward POD_NAME LOCAL_PORT:REMOTE_PORT [flags]

→ This command forwards a port from a pod to your local machine. 
→ Access the application running in a pod from your local machine.


Ubuntu!@#213

aws sts get-session-token --serial-number arn:aws:iam::797824967004:mfa/<username> --token-code <google authenticator code>


aws sts get-session-token --serial-number arn:aws:iam::797824967004:mfa/sandeep.kumar3@mobikwik.com --token-code 193987
add access , secret and token value in credentials 

aws sts assume-role --role-arn "arn:aws:iam::836163115243:role/AWS-PowerUser-RoleSwitch-Whirlpool" --role-session-name AWSCLI-Session

aws ecr get-login-password --region ap-south-1 --profile draco | docker login --username AWS --password-stdin 155235264790.dkr.ecr.ap-south-1.amazonaws.com

To login inside container/pod 
kubectl exec --stdin --tty mbk-msync-stag-deployment-578745fd49-sgczt -n mobikwik -- /bin/bash

kubectl exec -it pod/upi-service-prod-99fffb6dd-8wvb2 -n prod bash

To list containers inside pods.
kubectl get pods POD_NAME_HERE -o jsonpath='{.spec.containers[*].name}'

aws eks update-kubeconfig --name <cluser-name> --region <region> --profile <profile-name>

aws eks  update-kubeconfig --name zaakpay-beta-eks --region ap-south-1 --profile shield




git config --global -e

If you are not given a pod definition file, you may extract the definition to a file using the below command:

kubectl get pod <pod-name> -o yaml > pod-definition.yaml

helm upgrade --install internal-ingress -f ingress-nginx/values-internal-zaakpaypci.yaml -n ingress-controller ingress-nginx

kubectl get ClusterRoleBinding -n kube-system
vim dashboard-adminuser.yml

kubectl create token k8sadmin
kubectl apply -f dashboard-adminuser.yml 
kubectl create token admin-user
kubectl create token admin-user -n kube-system
vim k8sadmin-secret.yaml
kubectl apply -f k8sadmin-secret.yaml -n kube-system
kubectk get secrets -n kube-system
kubectl get secrets -n kube-system
kubectl get kubeconfig
kubectl get ingressconfig
kubectl get ingress test-ingress
kubectl -n ${NAMESPACE} describe secret $(kubectl -n ${NAMESPACE} get secret | (grep ${K8S_USER} || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n
kubectl -n ${NAMESPACE} describe secret $(kubectl -n ${NAMESPACE} get secret | (grep kubectl -n ${NAMESPACE} describe secret $(kubectl -n ${NAMESPACE} get secret | (grep ${K8S_USER} || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n

kubectl -n ${NAMESPACE} describe secret $(kubectl -n ${NAMESPACE} get secret | (grep ${K8S_USER} || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | (grep k8sadmin || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n
  

kubectl get hpa
kubectl describe hpa myapp-test

cmd for hpa
kubectl autoscale deployment myapp-test --cpu-percent=50 --min=1 --max=3
kubectl autoscale deployment zaakpay-self-onboarding-prod -n prod --cpu-percent=50 --min=1 --max=3

kubectl delete hpa myapp-test
kubectl delete deployment myapp-test

To export hpa file 
k get hpa zaakpay-self-onboarding-prod -n prod -o yaml > self-onboarding-hpa.yaml

kubectl get nodes --show-labels | grep spot
 k get pod zaakpay-auth-prod-775787b77-npw5r -n prod -o wide



zJFS6zbHX6M0}8
   
   k get cm prometheus-server -n monitoring -o yaml | grep vcb


  
  helm upgrade --install prometheus-blackbox-exporter -f prometheus-blackbox-exporter/values.yaml -n monitoring prometheus-blackbox-exporter
  
  helm upgrade --install prometheus -f prometheus/values.yaml -n monitoring prometheus
  
  helm upgrade --install ingress-controller -f ingress-nginx/values-internal-zaakstag.yaml -n ingress-controller ingress-nginx
  
 helm upgrade --install ingress-controller -f ingress-nginx/values-internal-zaakpaypci.yaml -n ingress-controller ingress-nginx

 helm upgrade --install zaakpay-key -f estap-zaakpay/zaakpay-key.yaml -n estap 	
  
  
  
  kubectl get pods --all-namespaces -o wide | grep 10.10.131.110
  
  kubectl get pods -A --field-selector spec.nodeName=ip-10-10-131-33.ap-south-1.compute.internal -o wide

  

