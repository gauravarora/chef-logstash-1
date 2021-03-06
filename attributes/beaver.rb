default['logstash']['beaver']['pip_package'] = "beaver==22"
default['logstash']['beaver']['server_role'] = 'logstash-server'
default['logstash']['beaver']['server_ipaddress'] = nil
default['logstash']['beaver']['inputs'] = []
default['logstash']['beaver']['outputs'] = []
default['logstash']['beaver']['format'] = "json"

default['logstash']['beaver']['logrotate']['options'] = [ 'missingok', 'notifempty', 'compress', 'copytruncate' ]
default['logstash']['beaver']['logrotate']['postrotate'] = 'invoke-rc.d logstash_beaver force-reload >/dev/null 2>&1 || true'

default['python']['install_method'] = 'package'
