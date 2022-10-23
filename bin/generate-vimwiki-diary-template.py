#!/usr/bin/python3
# Originally from: https://frostyx.cz/posts/vimwiki-diary-template
import calendar
import sys
from datetime import date

template = """# {date} {day_of_week}

## Daily Stand Up
**Yesterday**
  *
**Today**
  *
**Blockers**
  * None


## Notes"""

yyyy_mm_dd = (date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else sys.argv[1].rsplit(".", 1)[0])

current_date = date.today()
day_of_week = calendar.day_name[current_date.weekday()]


print(template.format(date=yyyy_mm_dd, day_of_week=day_of_week))
