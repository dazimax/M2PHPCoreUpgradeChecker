# M2PHPCoreUpgradeChecker
# Magento 2 version upgrade helper - PHP compatibility issue checker using Grep

This tool (shell script) could do the compatibility check in developed M2 custom modules compared to Magneto 2 core version upgrades using linux grep command

Steps to check the PHP compatibility issues;

1) Add the correct custom module path to M2PHPCoreUpgradeChecker.sh Linux shell script

2) Add the correct text file path of M2 version upgraded classes list to Linux shell script (Ex: magento21to23.txt)

https://devdocs.magento.com/guides/v2.3/release-notes/backward-incompatible-changes/commerce.html

3) Execute the shell script in terminal 

# sh M2PHPCoreUpgradeChecker.sh

4) Upgraded classes or interfaces will show in a RED color if available in your custom module 

