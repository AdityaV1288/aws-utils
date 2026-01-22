for region in cn-north-1 cn-northwest-1; do
  echo "==== EC2 in $region ===="
  aws ec2 describe-instances \
    --region $region \
    --query 'Reservations[].Instances[].{
      InstanceId: InstanceId,
      State: State.Name,
      Type: InstanceType,
      AZ: Placement.AvailabilityZone,
      Name: Tags[?Key==`Name`].Value | [0],
      Service: Tags[?Key==`Service`].Value | [0],
      App: Tags[?Key==`App`].Value | [0]
    }' \
    --output table
done

