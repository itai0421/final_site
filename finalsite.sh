#!/bin/bash
less part1 >>home.html
echo ""
echo gallery:>>home.html
echo ""
less part2 >>home.html
cd ~/finalsite
less /var/www/html/home.html>index.html
firebase deploy
