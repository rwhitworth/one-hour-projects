# C commandline handling

This project has the goal of handling commandline options in C sans getopt.  And, unfortunately, in an hour I wasn't able to accomplish this goal.  I had no real previous experience with string.h or malloc/calloc (ie, I haven't used C much) so this was the expected outcome.  Have to learn somehow, right?

Working items:
* Very basic parsing of the commandline options, via strtok
* Hopefully a lack of memory allocation errors

Known issues:
* When zero options are passed to the program is 'finds' the binary itself and believes the filename was passed properly
* strtok inside strtok doesn't work (likely due to volatile?) and trying to determine if a single parameter was passed and assigning a variable to the value passed.. doesn't work.
* single dashes and multi dashes are treated equally.  This may be a non-issue for some applications.

Project started on 25th and completed on the 26th.  
