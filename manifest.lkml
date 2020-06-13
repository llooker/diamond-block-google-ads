project_name: "block-google-ads"

# Library of common ad metrics definitions and date periods
# remote_dependency: app-marketing-common {
#   url: "git://github.com/looker/app-marketing-common-bigquery"
#   ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
# }

# remote_dependency: app-marketing-google-ads-adapter {
#   url: "git://github.com/looker/app-marketing-google-ads-fivetran-bigquery"
#   ref: "9d03ac068dd377cfe12224f843c9d3f699209db7"
# }

# remote_dependency: app-marketing-google-ads {
#   url: "git://github.com/looker/app-marketing-google-ads"
#   ref: "858973420837f60f27f6ffa30a431e755d61de7a"
# }

local_dependency: {
  project: "local-app-marketing-google-ads"
}

local_dependency: {
  project: "local-app-marketing-common"
}

local_dependency: {
  project: "local-app-marketing-google-ads-fivetran-bigquery"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: GOOGLE_ADS_SCHEMA {
    value: "@{GOOGLE_ADS_SCHEMA}"
}
}

constant: CONFIG_PROJECT_NAME {
  value: "local-block-google-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "bigquery"
  export: override_required
}

constant: GOOGLE_ADS_SCHEMA {
  value: "adwords_for_looker"
  export: override_required
}
