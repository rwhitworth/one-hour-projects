# one-hour-projects
What one hour of work looks like

Projects in this repo were started and "finished" in one hour.  At the end of the hour code was uploaded regardless of final state.  The goal is to teach myself the ability to create a workable demo in an hour.

I plan to use technologies I am unfamiliar with for these mini projects.  Languages I don't know, libraries/toolkits I haven't used, and design patterns, concepts, etc that are foreign to me.  This is about learning not about usefulness.

# "Completed" Projects
* 2015-07-09 - <a href="https://rwhitworth.github.io/one-hour-projects/ColorClock.html">Color Clock</a>.  A lunchtime project.
* 2015-07-09 - <a href="https://rwhitworth.github.io/one-hour-projects/CanvasDemo.html">Canvas Demo</a>, aka, Random Colored Squares.
* 2015-07-10 - Trivia Crack Cheat demo.  Requires Fiddler and FaceBook's version of Trivia Crack.  A lunchtime project.
* 2015-07-10 - get-repos.pl, a script to list github repositories for a user.
* 2015-07-11 - <a href="https://rwhitworth.github.io/one-hour-projects/charts.html">c3/d3 charts</a>.  A 'baby is sleeping' project of less than one hour.
* 2015-07-19 - Bowling Scores, a C program to calculate a score in 10 pin bowling.
* 2015-07-20 - Support for long options with getopt, in bash.
* 2015-07-26 - Commandline handling in C, sans getopt.
* 2015-07-29 - RLE encode of A-Za-z strings.  Decoder partially working. In C.
* 2015-07-30 - Find reddit.com posts in a subreddit (or the 'all' subreddit) that don't contain any punctuation.  Inspired by <a href="https://www.reddit.com/r/programming/comments/3en2px/til_you_can_use_function_overloading_in_c/ctgz3zc?context=3">this post</a>.
* 2015-08-03 - C DLL used in a C# program.  A test of C# interop and C DLL building.  Uses the <a href="https://github.com/nothings/stb">STB</a> library for the few functions the DLL exposes.

# "Completed" Non-Projects
Work toward other open source projects.  This sort of work typically took around an hour to complete.
* 2014-04-07 - <a href="https://github.com/tokuhirom/Test-SharedFork/pull/12">Test::SharedFork</a> perl module fixes for installing in Cygwin environment.
* 2015-05-29 - <a href="https://github.com/illusori/bash-tap/pull/4">bash-tap</a>, bash script to add TAP functional testing to bash scripts.  Created tests for the bash-tap script (note the irony of a testing library without tests).  Implemented bail_out(), note(), and skip() functions.
* 2015-07-06 - <a href="https://github.com/alexoslabs/HTTPSScan/pull/1">HTTPSScan</a>, bash script to test for HTTPS vulnerabilities on local server.  Added function to test for online host before running, removed 2 false positive tests, and updated for Cygwin environment.
* 2015-07-12 - <a href="https://github.com/dagolden/Capture-Tiny/pull/35">Capture::Tiny</a> perl module fixes for installing in Cygwin environment.
* 2015-07-14 - <a href="https://github.com/gisle/encode-locale/pull/17">Encode::Locale</a> perl module fixes for installing in a Cygwin environment.
* 2015-07-23 - <a href="https://github.com/rwhitworth/www-shorten-qurl/commit/433942e1be6907456a126e0aa491186fb10cc112">WWW::Shorten::Qurl</a> perl module fixes for new API format required for Qurl.  Also identified the Qurl service as no longer functional, and opened an <a href="https://github.com/davorg/www-shorten-qurl/issues/1">issue</a> with upstream module author to advise of the situation.  Fixes to local github repo not pushed upstream.
* 2015-08-01 - <a href="https://github.com/nothings/stb/pull/156">STB library</a> license text needed updated, so a pull request was made.  This pull request was sent as a fix to <a href="https://github.com/nothings/stb/issues/155">issue 155</a> opened by the library author.
* 2015-08-04 - <a href="https://github.com/nothings/stb/pull/158">STB library</a> wouldn't compile under Visual Studio 2015.  This <a href="https://github.com/nothings/stb/pull/158">pull request</a> adds required #include and #define statements.
* 2015-08-06 - Cleaned up existing code for solving a few <a href="https://projecteuler.net">Project Euler</a> problems.  Written in perl and hosted in my <a href="https://github.com/rwhitworth/project-euler">project-euler</a> github repo.  Verified all entries are working and run in a few seconds or less.
* 2015-08-14 - Created builds of the latest <a href="https://github.com/wbhart/mpir">MPIR</a> library with Visual Studio 2015.  Opened a <a href="https://github.com/Legrandin/mpir-windows-builds/pull/1">pull request</a> to make the binaries available upstream.  Also added source code to github repository to keep up with licensing requirements.
* 2015-08-14 - Updated <a href="https://github.com/bmatzelle/nini">Nini</a> library to compile in .Net 4.6 (in Visual Studio 2015).  <a href="https://github.com/bmatzelle/nini/pull/7">Pull request</a> to send changes upstream.
* 2015-10-04 - Added tests for <a href="https://github.com/makamaka/Text-CSV/pull/28">Text::CSV</a> to cover the is_missing() function.  The function does not currently work as designed but was unoticed due to a lack of tests.

# Future project ideas
* php detect similar JPEG images
* autoit automate Windows software
* powershell to use .net classes to encrypt/decrypt, or compress, or maybe an md5sum for Windows
* C# screensaver, starting with the time-server codebase
* C# charting, using Microsoft's solution perhaps?
