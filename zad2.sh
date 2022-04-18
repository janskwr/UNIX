#!/bin/sh
(for user in `getent passwd | cut -d: -f1`; do echo -ne "$user\t"; last -s today $user | wc -l | awk '{print $1-2}'; done) > loginfo.txt; sed -i '/\t0/d' loginfo.txt

