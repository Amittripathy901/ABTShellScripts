#!/bin/bash


#Author:Amit Tripathy


#Date:27-06-2024


#This script outputs the node health


set -x #debug mode

df -h  #disk size

free -g #memory of your server

nproc #CPU Details

