#Create Node
create_f5_node:
  bigip.create_node:
    - hostname: <F5 Server FQDN>
    - username: {{ salt['pillar.get']('<pillar>:username') }}
    - password: {{ salt['pillar.get']('<pillar>:password') }}
    - name: {{ grains['id'] }} 
    - address: {{ grains['fqdn_ip4'][0] }} #The fqdn_ip4 parameter is treated as an array, adding [0] forces it to grab just the ip
