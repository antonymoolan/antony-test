maintainer       "Example Com"
maintainer_email "ops@example.com"
license          "Apache 2.0"
description      "Installs/Configures antony_cloud"

version          "0.1"
recipe "antony_cloud::base_os_config", "Configures basic OS files"
attribute "antony_cloud/rs_hostname",
 :display_name => "Nickname of the instance",
 :description => "The FQDN of the instance to be launched, has to be set to the ENV variable RS_SERVER_NAME from RS dashboard inputs",
 :required => "required",
 :recipes => [ "antony_cloud::base_os_config" ]
