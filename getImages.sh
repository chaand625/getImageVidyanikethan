#!/bin/bash
year=""
branch=""
rollend=""

while getopts "y:b:r:" details;
do
  case $details in 
    y) year=$OPTARG ;;
    b) branch=$OPTARG ;;
    r) rollend=$OPTARG ;;
  esac
done


roll="$year"121a"$branch""$rollend"
echo $roll
wget "http://182.76.108.4/verify/photos/bt$year/$branch/$roll.jpg";
