#!/bin/bash
prim=`grep -o "(" $* | wc -l | egrep -o '[0-9]+'`
second=`grep -o ")" $* | wc -l | egrep -o '[0-9]+'`
# +( -)
expr $prim - $second
