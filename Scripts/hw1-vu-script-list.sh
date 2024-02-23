# Nghi Vu
# This is a list of scripts that I used for hw1
date
cal -1
echo -e "\n" && w | awk 'FNR == 1 {print $6, substr($7, 1, length($7)-1), "currently logged in";} FNR>1 {print $1}' && echo -e "\n"
echo -e "\nLogin process PID" && ps -f | awk 'FNR ==1, FNR ==2' && echo -e "\nLogin process PPID" && ps -f | ps -f $(awk 'FNR ==2 {print $3}') && echo -e "\n"
pwd
mkdir csci3751 && cd $_ && cp /var/tmp/CSCI3751/src.3e.tar.gz .
ls -lah
tar -xf src.3e.tar.gz
ls -lah apue.3e/ --sort time
echo -e "\n" >> find-result.txt && find apue.3e/ -maxdepth 1 -type f  -iname "*a*" -print | tee -a find-result.txt >(echo -e "\n"$(wc -l) "files with 'a' in the filename.\n" >> find-result.txt) 
mv find-result.txt ~/find-result
ls -lah ~
ln -s ~/find-result .find-result-clone
ls -liah ~/find-result .find-result-clone 
date
