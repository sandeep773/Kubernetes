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
