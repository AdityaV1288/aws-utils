echo "EC2 Health in Region: cn-north-1"
aws ec2 describe-instance-status \
  --include-all-instances \
  --region cn-north-1 \
  --query 'InstanceStatuses[].{
    Instance: InstanceId,
    System: SystemStatus.Status,
    Instance: InstanceStatus.Status
  }' \
  --output table

echo "   "
echo "EC2 health in cn-northwest-1"
aws ec2 describe-instance-status \
  --include-all-instances \
  --region cn-northwest-1 \
  --query 'InstanceStatuses[].{
    Instance: InstanceId,
    System: SystemStatus.Status,
    Instance: InstanceStatus.Status
  }' \
  --output table

