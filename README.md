# run_

runs either python code or zsh commands

## setup

#### note, you may be prompted for your password (sudo), make sure that you own the device you are configurating this on.
first paste the zsh script into a file called run.zsh (dir = /Users/____/run.zsh
first command:

```zsh
mv run.zsh run
```
second command:
```zsh
chmod +x /Users/_____/run
```
third command:
```zsh
sudo mv myscript /usr/local/bin/
```
##### And thats it!
```zsh
which run
```
^ try to make sure it works (should output "/usr/local/bin/run")
if its not working, try: 
```zsh
sudo chmod +x /usr/local/bin/run
```
#### if you dont have /usr/local/bin/ yet, try this:
```zsh
sudo mkdir -p /usr/local/bin
```
