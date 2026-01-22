for region in cn-north-1 cn-northwest-1; do
  echo "==== RDS in $region ===="
  aws rds describe-db-instances \
    --region $region \
    --query 'DBInstances[].{
      ID: DBInstanceIdentifier,
      Engine: Engine,
      Status: DBInstanceStatus,
      Class: DBInstanceClass
    }' \
    --output table
done

