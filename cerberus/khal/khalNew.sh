#!/bin/bash

# Usage: khal new [OPTIONS] [START [END | DELTA] [TIMEZONE] [SUMMARY] [::
#                 DESCRIPTION]]
#
#   Create a new event from arguments.
#
#   START and END can be either dates, times or datetimes, please have a look
#   at the man page for details. Everything that cannot be interpreted as a
#   (date)time or a timezone is assumed to be the event's summary, if two
#   colons (::) are present, everything behind them is taken as the event's
#   description.
#
# Options:
#   -a, --calendar CAL
#   -i, --interactive      Add event interactively
#   -l, --location TEXT    The location of the new event.
#   -g, --categories TEXT  The categories of the new event, comma separated.
#   -r, --repeat TEXT      Repeat event: daily, weekly, monthly or yearly.
#   -u, --until TEXT       Stop an event repeating on this date.
#   -f, --format TEXT      The format to print the event.
#   -m, --alarms TEXT      Alarm times for the new event as DELTAs comma
#                          separated
#
#   --help                 Show this message and exit.
khal new \
  DATE {today, tomorrow, 2020-08-31} \
  TIME {10:00 11:00} \
  SUMMARY :: DESCRIPTION \
  --calendar CALENDAR {UU, TY, UG, UNAM, Personal, Astronomy, Simona, SuperRugby, Grant} \
  --categories \
  --location
