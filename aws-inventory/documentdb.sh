aws docdb describe-db-clusters \
  --region cn-north-1 \
  --query 'DBClusters[].{
    ID: DBClusterIdentifier,
    Status: Status,
    Engine: Engine
  }' \
  --output table

