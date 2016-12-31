name             'snort'
maintainer       'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license          'Apache 2.0'
description      'Installs Snort IDS packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.1.0'

recipe 'snort::default', 'Includes the _install recipe'
recipe 'snort::_install', 'Installs snort packages based on platform'

%w(ubuntu debian redhat centos fedora scientific amazon oracle).each do |os|
  supports os
end

depends 'compat_resource', '>= 12.16.3'
depends 'yum-epel'

source_url 'https://github.com/sous-chefs/snort'
issues_url 'https://github.com/sous-chefs/snort/issues'
