# Process Kill

Basic kill for those times you just can't seem to stop a process. Originally
written to help stop Node processes.


## Basic Use

The script has a couple of options you can use, a "port"

```shell
$ [PROCESSKILL] -p 9000
```

or killing a process "starting with" a string, like a node process...

```shell
$ [PROCESSKILL] -c node
```

The option argument for port, ```-p```, is given preference over 
the string, ```-c``` option.