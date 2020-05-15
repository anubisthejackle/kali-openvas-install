#!/bin/bash
createuser -DRS gvm

createdb -O gvm gvmd

psql gvmd

create role dba with superuser noinherit

grant dba to gvm

create extension "uuid-ossp"
