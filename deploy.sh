name=$(grep cluster_name slurm-cluster.yaml | awk -F ' +' '{print $4}')
gcloud deployment-manager deployments create $name --config slurm-cluster.yaml

echo "on gcp, you will need to allow account to run on slurm"
echo "$ sacctmgr -Q add user brlife account=default"
