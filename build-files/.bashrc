eval "$(register-python-argcomplete pipx)"

export PATH="/root/.local/bin:$PATH"
export EDITOR="vim"

# motd
echo "containsible-$HOSTNAME is ready to use!"

chown -R root:root /root/.ssh
