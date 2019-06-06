# Alias file - Loaded by .bashrc

### 'typical' ls aliases	
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

### Random Helpers
alias sr='ffmpeg -f x11grab  -s 1366x768 -i :0.0 -r 25 -vcodec libx264  output.mkv'
alias shortterm='export PROMPT_DIRTRIM=1'

### SSH logins
alias data='ssh data.ist.temple.edu -l tug00038'

### Project/Workflow Quickstarts
	# For editing all these things.
alias dots='subl ~/.dots'	
	# Quick Jupyter Notebook
alias jnb='exec jupyter notebook'
	# Env for pygame development
alias pge='conda activate pygame_env'    
	# Env for working with PRAW  
alias praw='conda activate penv'		   
	# Praw/Social Networks Final Project
alias snp='cd Documents/School/CIS5524-SN/FinalProject/; praw; shortterm; clear'
	# Artificial Life Terminal Project
alias alt='cd Documents/Projects/alterm/; shortterm; subl .; clear'
	# SICP Book Exercises
alias sicp='cd Documents/Projects/sicp/; shortterm; subl .; clear'
	# PyTorch Tutorials
alias torch='cd ~/Documents/Projects/learntorch; conda activate torch; shortterm; subl .; clear;'

### Activating Monitors
alias mon_office='xrandr --output HDMI-0 --auto --right-of eDP-1-1' # At ZO Office (Temple)
