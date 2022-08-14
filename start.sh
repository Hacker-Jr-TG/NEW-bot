if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hacker-Jr-TG/NEW-bot.git /NEW-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NEW-bot
fi
cd /NEW-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
