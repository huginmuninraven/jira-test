# This is a test Jira installation that shows how to configure certain flags. 


# Done 

- resources/requests (Already set in the Helm chart)
- check JVM settings (Already set in the Helm chart)
  - https://atlassian.github.io/data-center-helm-charts/userguide/resource_management/REQUESTS_AND_LIMITS/


# TO DO
- scale across nodes
  - add pod antiaffinity? 
  - https://medium.com/@johnjjung/building-a-kubernetes-daemonstatefulset-30ad0592d8cb
- logging? Looks like it's currently telling fluentd to pick up data....
- Set an httpproxy ingress automatically? 