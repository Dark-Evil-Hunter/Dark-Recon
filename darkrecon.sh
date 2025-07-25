#!/bin/bash

# DarkRecon: Simple OSINT-style IP Recon Tool
# Coded by Dark-Evil-Hunter 👾

clear
echo "======================================="
echo "      🔍 DarkRecon by Dark-Evil-Hunter"
echo "======================================="
echo ""

read -p "🌐 Target IP/Domain: " target
echo ""

echo "📡 Getting WHOIS info..."
whois $target | head -20

echo ""
echo "🌍 Pinging target..."
ping -c 3 $target

echo ""
echo "🔎 Running basic Nmap scan..."
nmap -F $target

echo ""
echo "✅ Recon complete."
