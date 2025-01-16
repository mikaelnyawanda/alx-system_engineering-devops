Web Stack Debugging #0
Overview
This is the first in a series of web stack debugging projects. The task involves debugging a Docker container running Apache to serve a page containing "Hello ALX" when querying the root.

Requirements
General
All files interpreted on Ubuntu 14.04 LTS
All files should end with a new line
All Bash script files must be executable
All Bash scripts must pass Shellcheck without any errors
All Bash scripts must run without error
First line of Bash scripts should be exactly #!/usr/bin/env bash
Second line of Bash scripts should be a comment explaining what the script does
Allowed Editors
vi
vim
emacs
Tasks
0. Give me a page!
Fix a Docker container so that Apache returns a page containing "Hello ALX" when querying the root.

Example Usage:

vagrant@vagrant:~$ docker run -p 8080:80 -d -it alx/265-0
47ca3994a4910bbc29d1d8925b1c70e1bdd799f5442040365a7cb9a0db218021
vagrant@vagrant:~$ curl 0:8080
Hello ALX
Files:

0-give_me_a_page: Contains the command(s) used to fix the Apache server
Environment
Docker container running Ubuntu 14.04
Apache web server
Port mapping: 8080:80
Author
Michael

Project Badge
Web Stack Debugging #0
