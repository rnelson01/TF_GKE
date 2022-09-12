gcloud container clusters get-credentials $(terraform output kubernetes_cluster_name) --region $(terraform output region) 
echo terraform.kubernetes_cluster_name | grep "server:"
echo terraform.kubernetes_cluster_name | grep "- cluster:"
