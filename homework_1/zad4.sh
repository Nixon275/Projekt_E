#! /bin/bash

lokacija=$0
lokacija_rev=$(echo $lokacija | rev)
tac $lokacija
tac $lokacija > $lokacija_rev
