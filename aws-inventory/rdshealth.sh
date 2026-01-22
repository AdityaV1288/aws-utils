echo "RDS health in Region: cn-north-1"
aws rds describe-db-instances \
  --region cn-north-1 \
  --query 'DBInstances[].{
    ID: DBInstanceIdentifier,
    Status: DBInstanceStatus,
    MultiAZ: MultiAZ
  }' \
  --output table

echo "  "
echo "RDS health in Region: cn-northwest-1"
aws rds describe-db-instances \
  --region cn-northwest-1 \
  --query 'DBInstances[].{
    ID: DBInstanceIdentifier,
    Status: DBInstanceStatus,
    MultiAZ: MultiAZ
  }' \
  --output table

