How to mod CustomTF:

1) The source code is in ./fortress/source code. Open that folder up and look at the files. 
2) Open any of the .qc files, change something, save it.
3) Double click the "make.bat" file there and that compiles your code and deploys it to the right folder.
4) If it failed, go back to step 2.
5) If if succeeded, launch the server (if it isn't open) by running "Launch Server" (from this directory, not the source code directory). If it is open already, type "restart" from the server's console.
6) Launch the client by running "Launch Client" from this directory and test out your code.

If you want friends to play with you, then you'll need to open up the port on your firewall port 27500, and then they should "connect 1.2.3.4" where 1.2.3.4 is your ip address. If you want it to be automatic, edit the ./fte/autoexec.cfg file and put in the ip address to connect to rather than localhost.