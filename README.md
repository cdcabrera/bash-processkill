# Process Kill

Basic kill for those times when you just can't seem to stop a process. 
Originally written to help stop runaway Grunt plugins/NPMs...


## Basic Use

The script has a couple of options. Use a "port"

```shell
$ [PROCESSKILL] -p 9000
```

or kill a process "starting with" a string, like a "node" process...

```shell
$ [PROCESSKILL] -c node
```

The option argument for port, ```-p```, is given preference over 
the string, ```-c``` option.