#!/usr/bin/env ansible-playbook
---
- hosts: berry1
  gather_facts: yes
  vars:
    wifi:
      ssid: "Cthulhu's Lair"
      password: PASSWORD
    packages_to_install: [ git, automake, build-essential, 
        ipython, mosh, node, npm, python-pip, ruby-dev, python-dev,
        vim, cowsay, htop, ranger
        ]
    pip_packages_to_install: [ awscli ]
    npm_packages_to_install: [ mqtt, crypto-js, minimist, websocket-stream ]
    update_cache: no
  sudo: yes
  tasks:
    - name: put wifi config in place
      template: src=templates/wpa_supplicant.conf.j2 dest=/etc/wpa_supplicant/wpa_supplicant.conf
      notify: reboot

    - name: install python-apt
      command: apt-get install python-apt
      register: aptget
      changed_when: "'python-apt is already the newest version.' not in aptget.stdout_lines"

    - name: add node repo
      command: "/bin/bash -c 'curl -sLS https://apt.adafruit.com/add | sudo bash'"
      register: add
      #changed_when:
    - debug: var=add

    - name: install ubuntu packages
      apt: pkg={{ item }} state=installed update_cache={{ update_cache }}
      with_items: packages_to_install
  
    - name: install python modules with pip
      pip: name={{ item }}
      with_items: pip_packages_to_install
   
    - name: install node.js packages with npm
      npm: name={{ item }} global=yes
      with_items: npm_packages_to_install

    - name: install amazon iot device sdk
      git: repo=https://github.com/aws/aws-iot-device-sdk-js.git dest=/home/pi/aws-iot-device-sdk-js
      
  handlers:
    - name: reboot
      command: shutdown -r now "Ansible updates triggered"
      #command: ls -lah ./ 
      async: 0
      poll: 0
      ignore_errors: true


