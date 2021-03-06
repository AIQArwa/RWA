#!/usr/bin/env bash

# AIQA CI SCRIPTS
# https://aiqa.tech
#
# (c)2019 AIQA Technologies
#
# ver. 0.1.19

#
# PARAMETERS
#    --full-set        - full set with AIQA system
#    --predict         - prediction by AIQA system
#    --predict-divided - prediction by AIQA system with division of the case
#    --history         - prediction by AIQA system with statistical model
#
# By default: local, full set.
#

source _ci_vars.sh

rm -f aiqa.yml
cp aiqa.yml.dist aiqa.yml

./_ci_reload.sh

# if [ ${CI_CUSTOM_BUILD} -eq 1 ]; then
#     ./_ci_build.sh
# fi

if [ $# -eq 0 ]; then
    ./_ci_find_local_tests.sh
    ./_ci_run_tests_with_parallel.sh
    ./_ci_verify_tests_results.sh
    exit
fi

./_ci_aiqa.sh $1

# vim:ts=4:sw=4:et:syn=sh: