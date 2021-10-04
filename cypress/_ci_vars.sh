#!/usr/bin/env bash

# AIQA CI SCRIPTS
# https://aiqa.tech
#
# (c)2019 AIQA Technologies
#
# ver. 0.1.19


####################################################################################
####################################################################################
####################################################################################
####################################################################################
####################################################################################
####################################################################################


# PARALLEL
CI_PARALLEL_LOG_FILENAME=__ci_parallel.log
CI_PARALLEL_NUMBER_OF_THREADS="-j 1"

# max: 2 failures
CI_PARALLEL_EXIT_STRATEGY="--halt soon,fail=2"

# max:3% failures
#CI_PARALLEL_EXIT_STRATEGY="--halt soon,fail=3%"


CI_SCENARIOS_LIST_FILENAME=__ci_scenarios_list.txt
CI_FINAL_TEST_RESULT_FILENAME=__ci_result.txt


CI_TEST_RUNNER_COMMAND="yarn cypress run -c baseUrl=http://localhost:3000 --spec cypress/{}"


CI_SCENARIOS_DIR="cypress/tests"
CI_SCENARIOS_FILEMASK="*.spec.ts"


CI_BACKEND_DIR="backend"

CI_CUSTOM_BUILD=1

# vim:ts=4:sw=4:et:syn=sh: