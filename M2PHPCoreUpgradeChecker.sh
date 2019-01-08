#!/bin/bash
#set -x #echo on
codePoolCustomModulePath='/home/../M2-Module-Path';
modifiedCoreFileListPath='magento22to23.txt';
echo '--------------------------------------------------------'
echo 'CORE modified classes : "$modifiedCoreFileListPath"'
echo '--------------------------------------------------------'
while IFS= read -r line
do
  #display $line or do somthing with $line
  echo "$line"
done <"$modifiedCoreFileListPath"
echo '========================================================'
grep -rnw "$codePoolCustomModulePath" -e 'extends' > moduleExtendedClassesList.txt
moduleExtendedClassesList='moduleExtendedClassesList.txt';
echo '--------------------------------------------------------'
echo 'Core modified extended CLASSES : '"$moduleExtendedClassesList"
echo '--------------------------------------------------------'
grep --color=always -Ff "$modifiedCoreFileListPath" "$moduleExtendedClassesList"
#while IFS= read -r line
#do
  #display $line or do somthing with $line
#  echo "$line"
#done <"$moduleExtendsFileList"
#echo '========================================================'
grep -rnw "$codePoolCustomModulePath" -e 'implements' > moduleExtendedInterfacesList.txt
moduleExtendedInterfacesList='moduleExtendedInterfacesList.txt';
echo '--------------------------------------------------------'
echo 'Core modified implemented INTERFACES : '"$moduleExtendedInterfacesList"
echo '--------------------------------------------------------'
grep --color=always -Ff "$modifiedCoreFileListPath" "$moduleExtendedInterfacesList"
#while IFS= read -r line
#do
  #display $line or do somthing with $line
#  echo "$line"
#done <"$moduleExtendedInterfacesList"
#echo '========================================================'



