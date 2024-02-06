# Nghi Vu
# Script to display the list of users currently logged in on a server.
# executed with `bash whos_on.sh`



echo -e "\n" && w | awk 'FNR == 1 {print $6, substr($7, 1, length($7)-1), "currently logged in";} FNR>1 {print $1}' && echo -e "\n"
