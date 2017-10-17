require 'serverspec'

set :backend, :exec

describe command('systemctl status artifactory.service') do
  its(:stdout) { should contain('running') }
end

describe file('/var/opt/jfrog/artifactory/etc/artifactory.lic') do
  it { should be_file }
end

describe file('/var/opt/jfrog/artifactory/etc/binarystore.xml') do
  it { should contain 'cluster-file-system' }
end




