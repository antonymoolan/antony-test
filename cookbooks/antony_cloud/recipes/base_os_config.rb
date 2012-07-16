hostname_fqdn = "#{node.antony_cloud.rs_hostname}".downcase

template "/etc/hostname" do
    source "hostname.erb"
    owner "root"
    group "root"
    mode "0644"
    variables(
      :hostname_fqdn => hostname_fqdn
    )
  end

bash "set_hostname" do
    code << EOH
      start hostname
    EOH
  end

if platform?('centos', 'redhat')
  bash "set_hostname" do
    code << EOH
      hostname #{hostname_fqdn}
    EOH
  end
else
  bash "set_hostname" do
    code << EOH
      start hostname
    EOH
  end
end
