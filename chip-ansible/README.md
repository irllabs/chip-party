# Raspbian Bootstrap

This is simple ansible playbook to setup one or more of your Raspberry Pis running a fresh Raspbian installation on it. I used the  image from March 2016 available to download from the official website. This playbook bootstraps your Raspberry Pi 3 to be used over your WPA Wifi network, if you provide a correct SSID and password as a playbook variable. It will additionally install software required to use Amazon's AWS IoT NodeJS SDK. (http://docs.aws.amazon.com/iot/latest/developerguide/iot-device-sdk-node.html).

After the first time boot of your Raspberry Pi, follow these few steps in order to bootstrap your machine.
* Install Ansible and Git on your "Controller" machine.
* Clone this git repository.
* Configure hostname/IP address in the "hosts" file
* Unfortunately: Login to Raspi and expand SD card with "sudo raspi-config" -
  This will be automated in the future!
* Exectute playbook

```bash
# Install Ansible and Git on the machine.
sudo apt-get install python-pip git python-dev sshpass
sudo pip install ansible

# Clone this repo:
git clone https://github.com/Condla/ansible-playground.git
cd ansible-playground/raspbian-bootstrap/

# Configure IP address in "hosts" file. If you have more than one
# Raspberry Pi, add more lines and enter details

# Execute playbook
./playbook.yml
```

