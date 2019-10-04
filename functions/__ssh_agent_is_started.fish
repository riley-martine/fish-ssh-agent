function __ssh_agent_is_started -d "check if ssh agent is already started"
  	if begin; test -f $SSH_ENV; and test -z "$SSH_AGENT_PID"; end
		source $SSH_ENV > /dev/null
	end

	if test -z "$SSH_AGENT_PID"
		return 1
	end

	ssh-add -l > /dev/null
	if [ $status -eq 2 ]
	    return 1
	end
end
