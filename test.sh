#!/bin/bash
set -e
set -x

augparse lenses/hocon.aug && augparse -I. tests/test_hocon.aug
