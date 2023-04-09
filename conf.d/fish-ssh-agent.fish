if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

# This could probably be machine hostname?
set -xg SSH_AUTH_SOCK ~/.ssh/ssh-agent.local.sock

if status --is-login
and not __ssh_agent_is_started
    __ssh_agent_start
end
