#!/usr/bin/env bash
#
# Outputs variable export directives that will add the scripts in this project
# to your PATH if appended to the relevant *rc or profile for your shell.
#
# Copyright (C) 2017 Thomas H. Muggleton
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of version 3 of the GNU General Public License as published by the
# Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  For more details, see the GNU General Public
# License, included in the LICENSE file in the root directory of this project
# or available at: http://www.gnu.org/licenses/

CURRENT_DIR=$(realpath $(dirname ${BASH_SOURCE[0]}))
SCRIPTS_DIR=${CURRENT_DIR}/scripts
for SUB_DIR in $(ls ${SCRIPTS_DIR}); do
  echo "export PATH=${PATH}:${SCRIPTS_DIR}/${SUB_DIR}"
done
