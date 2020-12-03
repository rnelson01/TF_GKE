gcloud container clusters get-credentials $(terraform output kubernetes_cluster_name) --region $(terraform output region)
