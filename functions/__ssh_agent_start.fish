function __ssh_agent_start -d "start a new ssh agent"
  if test -e $SSH_AUTH_SOCK
    rm -f $SSH_AUTH_SOCK
    echo "removed $SSH_AUTH_SOCK"
  end
  set ssh_env (ssh-agent -c -a "$SSH_AUTH_SOCK" | sed 's/^echo/#echo/')
  if test "$pipestatus[1]" -eq 0
      echo "$ssh_env" > $SSH_ENV
  end
  chmod 600 $SSH_ENV
  source $SSH_ENV > /dev/null
  ssh-add --apple-load-keychain
end
