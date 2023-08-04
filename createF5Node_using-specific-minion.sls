#Currently still testing this, not functional at the moment 8/4
create_f5_node:
  salt.function:
    - tgt: <#Dedicated Minion that runs F5 jobs, currently using the minion on the salt mater>
    - arg:
      - bigip.create_node:
        - hostname: <#F5 Server>
        - username: {{ salt['pillar.get']('bigIP:username') }}
        - password: {{ salt['pillar.get']('bigIP:password') }}
        - name: {{ grains['id'] }}
        - address: {{ grains['fqdn_ip4'][0] }}

#Current Error: "Salt request timed out. The master is not responding. You may need to run your command with `--async` in order to bypass the congested event bus. With `--async`, the CLI tool will print the job id (jid) and exit immediately without listening for responses. You can then use `salt-run jobs.lookup_jid` to look up the results of the job in the job cache later."
