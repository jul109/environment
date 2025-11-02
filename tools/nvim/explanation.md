# What is?

A terminal text editor.

# Modes
Edit, insert, visual and command

# Command
To execute a lua command you write :lua {code in lua}. Some of these commands generate and output that is shwn in the screen. It's like a sub-buffer with diffrent shortcuts.

# Terminal

It has its own terminal that is open by typing :. It supports many commands such as grep or !

Example: We can look for a specific key map by typing ``:map | grep tab ```

# See old files
You can see the old files by typing :bro[wse] o[oldfiles]

# Configuration

* Config file
When nvim starts. It executes a file located in ~/.config/nvim/init.lua. 
It's like execute a command using nvim terminal by writing '':lua {init.lua}'''

* Help
To get help about how to apply a configuration run :help. Control T To go to a tag and control G to return

* Configuration syntax

There are two ways to configurate nvim. 1) Using vimscript 2) Using lua. Usually, we start by searching how to configurate something in VimScript in the manual, and then we apply some rules (also written in the documentation) to translate that order into lua.

Example 

We want to see line number in the screen.

1) We search in the configuration file the word number

```:help option-list```

2) We set the variable to true by just writing set, becouse this is a boolean.

```:set number ```

3) In lua-guide we see that we can do that by typing
```:lua vim.opt.number=true ```

4) We can also check the value of a variable.
```:lua print(vim.opt.number:get())```






# Definitions

VimScript: A domain specific language used to configurate nvim

Lua: The programming language that replaces VimScript.

Buffer: A copy of the file that we are editing and it's loaded into memory. 

Swap file: The file that contains our buffer data.

Window: A portion of a buffer or the file that we are editing that we can see in the screen.

Mode: A nvim state where the functionalities and shortcuts change. The most important are normal, visual, insertion, command and terminal.
