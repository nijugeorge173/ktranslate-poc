
Create environment variables for 
 - SNMP Community named 'COMMUNITY'
 - NewRelic account id name 'NR_ACCOUNT_ID'
 - NewRelic API Key named 'NR_API_KEY'

Run the below helm install command to generate
  helm install ktranslate-poc <PATH TO KTRANSLATE FOLDER>/ktranslate-poc --set env.community=$COMMUNITY --set env.nr_account_id=$NR_ACCOUNT_ID --set env.nr_api_key=$NR_API_KEY
