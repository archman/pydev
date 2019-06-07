#!/usr/bin/env python

from epics import caput

caput("test_pv", 1.0)
