for region in cn-north-1 cn-northwest-1; do
  echo "==== Load Balancers in $region ===="
  aws elbv2 describe-load-balancers \
    --region $region \
    --query 'LoadBalancers[].{
      Name: LoadBalancerName,
      Type: Type,
      Scheme: Scheme,
      State: State.Code,
      DNS: DNSName
    }' \
    --output table
done

