
# Date Collator

Date Collator is a Lua script built for the iOS app [Trunk Notes](https://itunes.apple.com/us/app/trunk-notes/id302880785).

Opens a specific file with dates (e.g. from a journal) on each line.

Uses current date (month and day), collates all the lines into one file, displays this text.


## Installation

So you have three pieces:
1) the journal text file
2) the Lua script
3) the page to display the output of the script

These pieces we'll name:
1) journal.txt
2) date_collator.lua
3) this_dates_events.txt

The file journal.txt needs to start with the date and have the whole entry on one line. The last line needs a newline: "\n".

Copy the date_collator.lua file into Trunk Notes.

Copy this_dates_events.txt to Trunk Notes, or paste this line into a page of your choosing:

{{lua date_collator.lua, journal.txt, (start_year)}}

Put in the start_year that you want to start with. The end_year is set to this year's.

Going to this_dates_events.txt will load the script, run it on your journal, and output the text to the page.


## Edge Cases

## Examples
## Contributing
 - add features
 - allow entries to be over multiple lines, where it starts at one date and then ends right before (\nYYYY-MM-DD), for example

