#!/bin/bash


#script to show how to use variables


a=10
name="Amit"
age=21

echo "My name is $name and my age is $age"

name="Paul"

echo "My name is $name"

#variable to store output of a command


HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
