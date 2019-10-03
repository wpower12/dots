# Alias file - Loaded by .bashrc

### 'typical' ls aliases	
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsd='ls -d */'

### Random Helpers
alias sr='ffmpeg -f x11grab -s 1366x768 -i :0.0 -r 25 -vcodec libx264  output.mkv'
alias st="export PS1='$ '" # makes the term prompt as short as possible-ish
alias ft="export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '"
### SSH logins
alias cis2='ssh cis-linux2.temple.edu  -l tug00038'
alias data='ssh data.ist.temple.edu    -l tug00038' # Only works on temple net
alias news='ssh cis-guosrv1.temple.edu -l tug00038' # Only works on temple net

### Mounts 
alias mount_news='sshfs tug00038@129.32.100.63: ~/Mounts/guosrv1/' # News Dataset Server, only on templenet

### Project/Workflow Quickstarts
	# For editing all these things.
alias dots='cd ~/.dots; subl ~/.dots'	
	# Env for pygame development
alias pge='conda activate pygame_env'    
	# Env for working with PRAW  
alias praw='conda activate penv'		   
	# Praw/Social Networks Final Project
alias snp='cd ~/Documents/School/CIS5524-SN/FinalProject/; praw; shortterm; clear'
	# Artificial Life Terminal Project
alias alt='cd ~/Documents/Projects/alterm/; shortterm; subl .; clear'
	# SICP Book Exercises
alias sicp='cd ~/Documents/Projects/sicp/; shortterm; subl .; clear'
	# PyTorch Tutorials
alias torch='cd ~/Documents/Projects/learntorch; conda activate torch; shortterm; subl .; clear;'
	# django webdev env
alias django='cd ~/Documents/Projects/learndjango; conda activate django; shortterm; subl .; clear;'
	# arCave dev env
alias arcave='cd ~/Documents/Projects/arCave; conda activate django; shortterm; subl .; clear;'
	# Py3.5, Jupyter, Scipy env.
alias scipy='conda activate swre; clear;'
	# The above, but start a JNB
alias jnb='conda activate swre; shortterm; jupyter notebook;'

### Activating Monitors
alias monrs='xrandr -s 0' # Resets um
alias monoff='xrandr --output HDMI-0 --auto --right-of eDP-1-1 -o normal' 
# For portrait mode at home. 
alias monp='xrandr --output HDMI-0 --auto --left-of eDP-1-1 --rotate left; xrandr --output eDP-1-1 --pos 1080x840' 
