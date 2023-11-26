#!/bin/bash

USERNAME="mooorey"
TOKEN="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"

mkdir task-1
cd task-1
touch task1.txt
echo "Task 1 completed" > task1.txt
cat task1.txt
cd ..

git add task-1
git commit -m "task 1 folder pushed"
git push https://$USERNAME:$TOKEN@github.com/mooorey/plusw-class-5.git main

