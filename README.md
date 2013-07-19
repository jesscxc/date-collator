

# Date Collator

Date Collator is a Lua script built for the iOS app [Trunk Notes](https://itunes.apple.com/us/app/trunk-notes/id302880785).

Opens a specific file with dates on each line (e.g. from a journal).

Uses the current date (month and day), collates all the lines into one file, displays this text.


## Installation

So you have three pieces:
1) the journal text file
2) the Lua script
3) the page to display the output of the script

These pieces we'll name:
1) journal.txt
2) date_collator.lua
3) date_events.txt

The file journal.txt needs to start with the date and have each entry on one line. Look at journal.txt to see an example.

Copy the date_collator.lua file into Trunk Notes. (note: The current version of Trunk Notes may have a bug where date_collator needs to end with .txt instead of .lua)

Copy date_events.txt into Trunk Notes, or paste this line into a page of your choosing:

{{lua date_collator.lua, journal.txt, start_year}}

Put in the start_year that you want.

The script will collate until reaching the current year.

Going to date_events.txt will load the script, run it on your journal, and output the text to the page.


## Contributing
 - allow entries to be over multiple lines, where it starts at one date and then ends right before another (\nYYYY-MM-DD), for example
 - add features

