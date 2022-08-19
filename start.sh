if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AK4111/link-convertor.git /link-convertor
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /link-convertor
fi
cd /link-convertor
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 -m main
