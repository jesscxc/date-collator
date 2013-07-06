
# Date Collator

Date Collator is a Lua script built for the iOS app [Trunk Notes](https://itunes.apple.com/us/app/trunk-notes/id302880785).

Opens a specific file with dates (e.g. from a daylog) on each line.

Uses current date (month and day), collates all the lines into one file, displays this text.


## Installation

Create new file in Trunk Notes called date_collator.lua and paste the code from the script into the file.

Then create a new file (perhaps called this_dates_events).

Put this into it (tentative, but something like):

{{lua date_collator, (filename), (array_of_years), (current_month_and_day)}}

That will load the script, run it on your wiki, and output the text to the page.


## Edge Cases
 - make sure it works with feb 29?

## Examples
## Contributing
 - add features

