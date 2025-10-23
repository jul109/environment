#Review

* As a software engineer, you manage many processes in different terminal windows. Is there any way to do this task efficiently?

Terminal multiplexers allow you to have a lot terminals in just one window.

* As a dev ops engineer, you connect to devices remotely using SSH frequently. If the connection stops, the process dies. How can we solve this?
Terminal multiplexers create a server process to prevent connection problems. 




---
#What is?

A tool to  have multiple terminals in one window and make our processes persistant against connection problems. 
# Features




---

#Definitions

Structure

Pane: A terminal.
Window: Pane container.
Session: Window container. 
Server: Session container. 
Mode: A tmux state where the functionalities and available commands change allowing us to do specific task.

Default Mode: Inteded to interact with the pseudo terminal directly.

Command Mode: To send instructions to tmux. Such as create a new window or pane.

Copy mode: To copy things. The user decide when he wants to activate thid mode.

View mode: A mode that is enabled automatically by tmux when commands with output are executed.

Choose mode: It is also enabled automatically. But when a command that needs choosing an option is executed. 

Attach: Open a session in a terminal.

Detach: Let the session running in the background.




---
# Note

* Config file: The config file is usually located at
This file is executed by tmux as soos as it starts running.

```
~/.tmux.conf
```


---

# Cheatsheet 





