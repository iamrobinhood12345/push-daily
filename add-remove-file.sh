#!/bin/bash

DIRECTORY='/users/williamshields/push-every-day/push-daily'


echo creating a file
touch ${DIRECTORY}/hey.txt
echo adding file
git -C "$DIRECTORY" add .
echo committing file
git -C "$DIRECTORY" commit -m 'add hey.txt'
echo pushing file to origin
git -C "$DIRECTORY" push origin -u main
echo removing file
rm -rf ${DIRECTORY}/hey.txt
echo adding file removal
git -C "$DIRECTORY" add .
echo committing file removal
git -C "$DIRECTORY" commit -m 'remove hey.txt'
echo pushing file removal to origin
git -C "$DIRECTORY" push origin -u main

git -C "$DIRECTORY" status
