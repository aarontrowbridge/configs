# configs
my customized config files

## installation

1. intialize empty git repo in home dir and add remote
``` 
git init
git remote add origin git@github.com:aarontrowbridge/configs.git
```

2. disable status tracking of non-repo files (must NOT use `git add .`)
```
git config --local status.showUntrackedFiles no
```

3. fetch the config files and switch onto main branch
```
git fetch
git switch -f main
```

4. optionally switch to personal branch, e.g.
```
git switch -c me
```

4. run script to recursively add submodules
```
sh ~/.config_scripts/initsubmodules.sh
```
5. knock on wood that this works (script is currently pretty hacky)


