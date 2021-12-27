echo ' _    ____  ___   __  __          __      __'
echo '| |  / /  |/  /  / / / /___  ____/ /___ _/ /____  _____'
echo '| | / / /|_/ /  / / / / __ \/ __  / __ `/ __/ _ \/ ___/'
echo '| |/ / /  / /  / /_/ / /_/ / /_/ / /_/ / /_/  __/ /'
echo '|___/_/  /_/   \____/ .___/\__,_/\__,_/\__/\___/_/ v1.0.0'
echo 
echo 'package is updating...'
echo $password | sudo -S apt update -yqq
echo
echo 'packagelist was updated'
echo 'package is upgrading...'
echo $password | sudo -S apt full-upgrade -yqq
echo
echo 'package was upgraded'
echo 'package is removing...'
echo $password | sudo -S apt-get autoremove -yqq
echo
echo 'package was removed'
echo 'package is cleaning...'
echo $password | sudo -S apt-get autoclean -yqq

echo
echo 'package was cleaned'
echo 'rebooting...'
rm -f update.sh*
echo $password | sudo -S reboot
