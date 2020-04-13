curl -s http://admin:admin@178.136.183.25/httpAuth/app/rest/builds/?locator=buildType:GitPush_Test,status:FAILURE,count:1,number:66 > jira.txt
$SEND = Select-String .\jira.txt -Pattern  'count="1"' -SimpleMatch -Quiet
if($SEND) {
   C:\Users\vasss\ACLI\acli.bat default --action createIssue --project "TIP" --type "task" --summary "test-11111"
}else {
  echo $SEND
}