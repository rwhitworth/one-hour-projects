PASSWD=''
EMAIL=''
SMTPPORT=587
SMTPHOST=smtp.gmail.com
HTTP=$(curl -sL -w "%{http_code}" https://www.gwinnettcounty.com/portal/gwinnett/Departments/FireandEmergencyServices/OutdoorBurningInformation -o /tmp/burn)
if [[ $HTTP -eq 200 ]]
then
  # if [[ $(grep -c 'BURN' /tmp/burn) -eq 1 ]]
  if [[ $(grep -c -E 'BURN|No Burn' /tmp/burn) -eq 1 ]]
  then
    BURNSTR=$(cat /tmp/burn | grep -E 'BURN|No Burn' | perl -pe 's/<.*?>//g' | sed -e '/^$/d' | sed -e 's/\&nbsp\;/ /g' | perl -pe 's/.*?\ ([A-Za-z].*?)\..*/$1/g')
    echo $BURNSTR | email -f ${EMAIL} -s 'burn day' -n ${EMAIL} -r ${SMTPHOST} -p ${SMTPPORT} -u ${EMAIL} -i ${PASSWD} -tls -m login ${EMAIL} 
  # elif [[ $(grep -c 'No Burn' /tmp/burn) -eq 1 ]]
  # then
    # BURNSTR=$(cat /tmp/burn | grep 'No Burn' | perl -pe 's/<.*?>//g' | sed -e '/^$/d' | sed -e 's/\&nbsp\;/ /g' | perl -pe 's/.*?\ ([A-Za-z].*?)\..*/$1/g')
  else
    # send email about how no details found...
    echo 'Problem finding the word BURN in the HTML.' | email -f ${EMAIL} -s 'burn day' -n ${EMAIL} -r ${SMTPHOST} -p ${SMTPPORT} -u ${EMAIL} -i ${PASSWD} -tls -m login ${EMAIL} 
  fi
fi

