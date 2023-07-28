set_hostname:
  system.computer_name:
    - name : {{ grains['id'] }}  #Uses the Name of the VM 
    
join_to_domain:
  system.join_domain:
    - name: <domain name>
    - username: {{ salt['pillar.get']('<pillar name>:username') }}
    - password: {{ salt['pillar.get']('<pillar name>:password') }}
    - account_ou: "<Distinguished Name of OU>"
    - account_exists: false
    - restart: true
    - require:
      - set_hostname
