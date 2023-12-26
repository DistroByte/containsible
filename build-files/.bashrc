eval "$(register-python-argcomplete pipx)"

export PATH="/root/.local/bin:$PATH"
export EDITOR="vim"

# motd
echo <<EOF
$HOSTNAME is ready to use!

EOF

force_color_prompt=yes
color_prompt=yes
