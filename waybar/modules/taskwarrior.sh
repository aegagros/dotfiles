#!/bin/bash

taskcount_overall=$(task status:pending -WAITING count)
taskcount_today=$(task due.before:tomorrow status:pending -WAITING count)
tasklist=$(task status:pending -WAITING export | jq -r '[ .[] | "- "+.description+" ["+.status+"]" ] | join("\\n")')
context=$(task _get rc.context)

text=""

if [[ ! -z ${context} ]]; then
    text="${context}: "
fi
text="${text}${taskcount_overall} (today: ${taskcount_today})"

echo -E "{\"text\": \"${text}\", \"tooltip\": \"Current context: ${context}\\n${tasklist}\" }"

