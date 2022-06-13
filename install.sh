# This is a test Jira installation that shows how to configure certain flags. 

## Add the Atlassian helm repo
# helm repo add atlassian-data-center \
#  Docs: https://atlassian.github.io/data-center-helm-charts
#  Code: https://github.com/atlassian/data-center-helm-charts/tree/main/src/main/charts

# Update the repo 
# helm repo update

# Show all of the charts
# helm search repo atlassian-data-center

# VERSION
VERSION="1.4.1"

# Download the version set above
# helm pull atlassian-data-center/jira --version $VERSION

# Use helm upgrade, so you can upgrade from version to version
helm --debug upgrade --install jira ./jira-$VERSION.tgz \
--set image.tag=8.20.9 \
--set jira.clustering.enabled=true \
--set volumes.localHome.persistentVolumeClaim.create=true \
--set volumes.localHome.persistentVolumeClaim.storageClassName=generic \
--set volumes.sharedHome.persistentVolumeClaim.create=true \
--set volumes.sharedHome.persistentVolumeClaim.storageClassName=nfs \
--create-namespace \
--namespace jira


# Command to delete, do not uncomment
# helm delete jira -n jira