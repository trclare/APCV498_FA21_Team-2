#!/bin/bash
echo Welcome to the setup for the U of A Senior Capstone WAEDD Project for Mac and Linux.
git clone https://github.com/williamwilhem/WAEDD_Linux-Mac.git /home/$USER/Documents/WAEDD
cd /home/$USER/Documents/WAEDD
read -p "Repo Cloned, please open created folder in VSC and press enter to Continue."
echo -n "Enter Your API Key : "
read answer
export BLS_API_KEY='$answer'
echo -n "Enter your desired environment name: "
read name
python -m venv $name
source /home/$USER/Documents/WAEDD/$name/bin/activate
cd /home/$USER/Documents/WAEDD10
read -p "Please set your Python interpreter to WAEDD/$name/bin/python3. Press enter when done."
pip install -r requirements.txt
python section_3.py
python section_5.py
read -p "Activate your environment by running: source $name/bin/activate. You can now launch your environment with Live Server in VSC."
