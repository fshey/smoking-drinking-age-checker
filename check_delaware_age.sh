#!/bin/bash

# Define legal drinking and smoking ages for Delaware
legal_drinking_age=21
legal_smoking_age=21

# Prompt the user to enter their age
echo "Please enter your age:"
read age

# Check if the input is a valid number
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid age."
  exit 1
fi

# Check the age against legal drinking and smoking ages in Delaware
if [ "$age" -ge "$legal_drinking_age" ]; then
  echo "You are of legal drinking age in Delaware."
else
  echo "You are not of legal drinking age in Delaware."
fi

if [ "$age" -ge "$legal_smoking_age" ]; then
  echo "You are of legal smoking age in Delaware."
else
  echo "You are not of legal smoking age in Delaware."
fi

