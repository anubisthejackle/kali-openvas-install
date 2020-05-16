#!/bin/bash
createuser -DRS gvm

createdb -O gvm gvmd

psql -c"create role dba with superuser noinherit" gvmd
psql -c"grant dba to gvm" gvmd
psql -c"create extension \"uuid-ossp\"" gvmd
