for region in cn-north-1 cn-northwest-1; do
  echo "==== EKS Clusters in $region ===="
  aws eks list-clusters --region $region --output table
done

