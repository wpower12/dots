# Alias file - Loaded by .bashrc

### Application/Workflow shortcuts
alias jnb='exec jupyter notebook'
alias pge='conda activate pygame_env'      # conda env for pygame development
alias praw='conda activate penv'		   # conda env for working with PRAW
alias torch='cd ~/Documents/Projects/learntorch; conda activate torch; shortterm; subl .; clear;'

alias dots='subl ~/.dots'	# For editing all the things.

### 'typical' ls aliases	
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

### SSH logins
alias data='ssh data.ist.temple.edu -l tug00038'

### Random Stuff
alias sr='ffmpeg -f x11grab  -s 1366x768 -i :0.0 -r 25 -vcodec libx264  output.mkv'
alias shortterm='export PROMPT_DIRTRIM=1'


### Project Workspace setup
alias snp='cd Documents/School/CIS5524-SN/FinalProject/; praw; shortterm; clear'
alias alt='cd Documents/Projects/alterm/; shortterm; subl .; clear'
