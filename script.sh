#!/bin/bash

# Delete existing folders
rm -rf fol_1 fol_2

# Create two folders
mkdir fol_1 fol_2

# Create files in fol_1
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt

# Create files in fol_2
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/2_3.txt

# Set permissions
chmod 600 fol_1/1_1.txt fol_1/1_3.txt fol_2/2_1.txt fol_2/2_3.txt
chmod 777 fol_1/1_2.txt fol_2/2_2.txt

# Initialize Git
git init

# Create .gitignore file to ignore fol_1 and fol_2
echo -e "fol_1/\nfol_2/" > .gitignore

# Add all files and commit
git add .
git commit -m "Initial commit with script.sh and .gitignore"

# Connect to remote GitHub repository (replace with your repository URL)
git remote add origin https://github.com/Hope52411/devops-lab-2-task.git

# Push the commit to GitHub
git push -u origin master

# Create README.md with the required content
echo -e "# Week 2 Lab – Bash & Git\n\nXiangze Xue - 23361123\n\n[GitHub Repository](https://github.com/Hope52411/devops-lab-2-task)\n\n---\n\nTo run the script.sh run: \`bash script.sh\`" > README.md

# Add README.md and push it to GitHub
git add README.md
git commit -m "Added README.md"
git push origin master


echo "Job completed"