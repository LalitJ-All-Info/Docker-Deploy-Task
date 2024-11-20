# Docker Installation and Website Deployment Guide

## Step 1: Log in to Your VM
Access your Virtual Machine through SSH or any remote connection method you prefer.
![Screenshot (30)](https://github.com/user-attachments/assets/07748e6d-09ee-45dc-ae4c-9fa8f0b80614)

## Step 2: Switch to the Root User
Once logged in, elevate your privileges to the root user:
```
sudo -i
```
![Screenshot (31)](https://github.com/user-attachments/assets/a056f008-5459-42f5-8553-202b538b3c88)

## Step 3: Check if Docker is Installed
Verify if Docker is already installed by checking the Docker version:
```
docker -v
```
![Screenshot (32)](https://github.com/user-attachments/assets/f849af8e-6650-4c7d-9605-99f73d658120)

If Docker is not installed, proceed to the next step.

## Step 4: Install Docker
Follow the steps below to install Docker on your Ubuntu system.


### 4.1 Install Dependencies
Install required packages for Docker installation:
```
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
```
![Screenshot (34)](https://github.com/user-attachments/assets/ad677aee-8ecd-4106-a474-0cecd8e9485a)

### 4.2 Add Docker's Official GPG Key
Add Docker’s official GPG key to ensure the packages are authentic:
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
![Screenshot (35)](https://github.com/user-attachments/assets/d8b0e655-aa64-45eb-a9c0-3338cd2d2337)

### 4.3 Add Docker’s Stable Repository
Add Docker’s official stable repository to your system:
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
![Screenshot (36)](https://github.com/user-attachments/assets/fb1d4af4-81d3-4721-b146-2ac3b773c054)

### 4.4 Install Docker Engine
Update your package list and install Docker:
```
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
```
![Screenshot (37)](https://github.com/user-attachments/assets/d626e96a-d288-4cce-8ece-1e59542e6755)

![Screenshot (38)](https://github.com/user-attachments/assets/d507e144-a877-4112-9f10-53b5b88e567b)

## Step 5: Verify Docker Installation
```
docker -version
```
![Screenshot (40)](https://github.com/user-attachments/assets/798c3ddb-4eb1-47e9-a789-957279d3d800)

## Step 6: Start Docker Engine
Start the Docker service and check its status to ensure it is running properly:
```
systemctl start docker
systemctl status docker
```
![Screenshot (42)](https://github.com/user-attachments/assets/9bcfdc14-3023-457e-93f9-831aa60768c5)

## Step 7: Clone Your Website Code
Clone your website repository from GitHub:
```
git clone https://github.com/LalitJ-All-Info/Docker-Deploy-Task.git
ls
cd
ls
```
![Screenshot 2024-11-21 002057](https://github.com/user-attachments/assets/e3b15731-82a5-4d12-912a-68e5fae3114b)

![Screenshot (43)](https://github.com/user-attachments/assets/19f40238-b0b1-4a3e-9fb3-9c30eb2c2565)

## Step 8: Add Dockerfile for Nginx Server
Create or edit the Dockerfile to configure the Nginx server for your website. Open the file using the text editor:
```
vim Dockerfile
```
![Screenshot (46)](https://github.com/user-attachments/assets/f88fb491-5d06-466f-8050-0da9d7089ac4)

## Step 9: Build a Docker Image
After configuring the Dockerfile, build the Docker image:
```
docker build -t ca-task2 .
```
![Screenshot (47)](https://github.com/user-attachments/assets/2b1a4ee6-ec7b-4ad7-a05c-0e82ad748673)

### You can verify the image has been created successfully by running:
```
docker images
```
![Screenshot (48)](https://github.com/user-attachments/assets/fb034dc8-cd8a-4f29-9410-11f1f9bf21e9)

## Step 10: Run a Docker Container
Run a container based on the Docker image and map port 8080 on the host to port 80 in the container:
```
docker run -dit -p 8080:80 ca-task2
```
```
docker ps
```
![Screenshot (49)](https://github.com/user-attachments/assets/d000e784-23a1-4f86-87b2-ddc5c53192c6)

## Step 11: Configure Firewall
Ensure your firewall allows traffic on port 8080 to access the website. You can use the following command to open port 8080:

![Screenshot (50)](https://github.com/user-attachments/assets/336f8eb5-f6b4-459a-b82f-dbc879701ba6)

## Step 12: Test Your Deployment
To test the deployment, open a browser and navigate to your server's IP address on port 8080:
Eg: http://35.244.13.195:8080/

![Screenshot (51)](https://github.com/user-attachments/assets/38735a2a-4c76-4577-b1e4-2f07564315da)
