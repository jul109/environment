#Review

* Version management is key challenge in software development. We can have a lot of java projects in our computer and the version that one uses can be incompatible with others.

Many programming languages have their own version manager. Some examples are rustup, nvm, pyenv.

* Wouldn't be less complex to have an unique version manager tool?

There exist polyglot version managers.

* How does mice solve this problem this problem? 

 1) Modifies the path variable of our session (mise activate)  2) creates shims that intercepts the command calls and  uses the correct version or 3) allows us to use commands that receives the instructions (mise run/exec) and the program version of interest. 


* Have you ever installed something for a project, never use it again and don't uninstall it?

Mise facilitate this process.




---
# Concepts

Mise Activation: The process of loading the environment and variables in a session.

Shim: A symlink that serves the same purpose of mise actvation, but creates symlinks rather than modify the path variable.

Plugin: A way to extend the functionalities of mise.


---

# Cheat sheets

```mise doctor``` Checks mise problems.
```mise ls ```list installed tools
```mise install <tool>@<version>``` Install a specific program versions


---


