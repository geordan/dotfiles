#!/usr/bin/env python3
import tasklib
tw = tasklib.TaskWarrior()
result = set(tw.execute_command(["+PROJECT", "+PENDING", "+READY", "-waiting", "_projects"])) \
        - set(tw.execute_command(["+PENDING", "+next", "_projects"]))
for i in result:
    print(i)
