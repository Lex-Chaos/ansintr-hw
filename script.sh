#!/bin/bash

sudo docker run -dit --name ubuntu ubuntu:python3 bash
sudo docker run -dit --name centos7 centos7:python3 bash
sudo docker run -dit --name fedora fedora:python3 bash
sudo ansible-playbook -i ./playbook/inventory/prod.yml ./playbook/site.yml --ask-vault-pass
sudo docker stop ubuntu centos7 fedora