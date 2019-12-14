#!/bin/bash

ok=$(echo -ne 'HEAD / HTTP/1.0\n\n' | nc $1 80 | grep "200 OK" | awk '{print $2}')

if [ "$USER" == "root" ]

then

 if [[ $ok -eq 200 ]]

  then

   echo OK

  else

   exit 7

 fi

else

echo "Uzgunum $USER sadece Root kullanicisi bu script'i calistirabilir."

exit 4

fi
