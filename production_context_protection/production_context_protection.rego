package org

import future.keywords
import data.circleci.config

policy_name["production_context_protection"]

use_prod_context_only_on_main = config.contexts_reserved_by_branches(["main"],
 {"vault-oidc-prod"}
)

# This rule will apply to all projects subscribed in globals.rego under `restricted_context_access_projects`
enable_rule["use_prod_context_only_on_main"] 
hard_fail["use_prod_context_only_on_main"]
