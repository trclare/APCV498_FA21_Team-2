#!/bin/bash
echo Thank you for running the GitHub Repository Upload Script for Linux by William Wilhelm. Please have your Personal Access Token for your Github account ready. If you need to set up a personal access token, follow this tutorial: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
echo -n "Enter Your Repository URL : "
read answer
git remote remove origin
git remote add origin $answer
git branch -M main
git push -u origin main


