echo ' _    ____  ___   __  __          __      __'
echo '| |  / /  |/  /  / / / /___  ____/ /___ _/ /____  _____'
echo '| | / / /|_/ /  / / / / __ \/ __  / __ `/ __/ _ \/ ___/'
echo '| |/ / /  / /  / /_/ / /_/ / /_/ / /_/ / /_/  __/ /'
echo '|___/_/  /_/   \____/ .___/\__,_/\__,_/\__/\___/_/ v1.0.0-host'
echo
wget https://launchpencil.f5.si/update.sh;
for ((i=101;i<106;i++));
do
    echo 'Updating VM '$i;
    echo '----------';
    echo "debian" | ssh -i /home/debian/.ssh/id_ed25519 debian@192.168.0.$i < update.sh;
    echo '----------';
done
echo 'done';
