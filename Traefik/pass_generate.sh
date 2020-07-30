echo $(htpasswd -nb $1 $2) | sed -e s/\\$/\\$\\$/g
