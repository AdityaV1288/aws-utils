echo "Cloudwatch Alarams in Region: cn-north-1"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
aws cloudwatch describe-alarms \
  --region cn-north-1 \
  --query 'MetricAlarms[].{
    Name: AlarmName,
    State: StateValue,
    Reason: StateReason
  }' \
  --output table
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "   "
echo "Cloudwatch Alarams in Region:cn-northwest-1"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
aws cloudwatch describe-alarms \
  --region cn-northwest-1 \
  --query 'MetricAlarms[].{
    Name: AlarmName,
    State: StateValue,
    Reason: StateReason
  }' \
  --output table
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
