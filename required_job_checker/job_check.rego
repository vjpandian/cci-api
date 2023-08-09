package org

import future.keywords
import data.circleci.config

policy_name["required_job_checker"]

require_certain_jobs = config.require_jobs(["job_a", "job_b"])

enable_rule["require_certain_jobs"]

hard_fail["require_certain_jobs"]
