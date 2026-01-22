echo "SQS list queues" list
for region in cn-north-1 cn-northwest-1; do
  echo "==== SQS in $region ===="
  aws sqs list-queues --region $region
done
echo "====="
echo "SNS topics list"
echo "SNS Region cn-north-1"
aws sns list-topics --region cn-north-1
echo "== "
echo "SNS Region cn-northwest-1"
aws sns list-topics --region cn-northwest-1
