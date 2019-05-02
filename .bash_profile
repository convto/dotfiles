[[ -s "$HOME/.bashrc" ]] && source "$HOME/.profile" # Load the default .profile
source ~/.bashrc


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.bash.inc'; fi
