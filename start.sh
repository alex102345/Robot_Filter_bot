if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/alex102345/Robot_Filter_bot /Robot_Filter_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Robot_Filter_bot
fi
cd /Robot_Filter_bot
pip3 install -U -r requirements.txt
echo "Starting Zsearcherbot....🔥"
python3 bot.py
