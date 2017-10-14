require 'serverspec'

set :backend, :exec

describe command('systemctl status go-server') do
  its(:stdout) { should contain('running') }
end





