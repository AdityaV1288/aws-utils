for region in cn-north-1 cn-northwest-1; do
  for cluster in $(aws ecs list-clusters --region $region --query 'clusterArns[]' --output text); do
    echo "==== ECS Services in $cluster ($region) ===="
    aws ecs list-services --cluster $cluster --region $region --query 'serviceArns[]' --output text
  done
done

