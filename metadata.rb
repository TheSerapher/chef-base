name              "base"
maintainer        "Sebastian Grewe"
maintainer_email  "sebastian.grewe@gmail.com"
license           "Apache 2.0"
description       "Installs various cookbooks used by a basic node."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.0"
recipe            "base::default", "Installs various software using other cookbooks."

%w( debian ubuntu centos rhel ).each do |sup|
  supports sup
end

%w( up2date ntp chef-client sudo openssh users-wrapper ).each do |dep|
  depends dep
end
