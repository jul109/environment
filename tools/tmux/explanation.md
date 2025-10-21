---
#Review

* As a software engineer, you manage many processes in different terminal windows. Is there any way to do this task efficiently?

Terminal multiplexers allow you to have a lot terminals in just one window.

* As a dev ops engineer, you connect to devices remotely using SSH frequently. If the connection stops, the process dies. How can we solve this?
Terminal multiplexers create a server process to prevent connection problems. 




---
#What is?

A tool to  have multiple terminals in one window and make our processes persistant against connection problems. 



---

#Definitions

Session: A collection of pseudo terminals managed by a server. 


---
# Note

* Config file: The config file is usually located at
~/.tmux.conf


---

# Cheatsheet 

Create session

```
tmux new -s <id>
```

Kill session

```
tmux kill-session -t <id>
```


list sessions

```
tmux ls
```








