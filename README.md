Toy Robot
=====

This is a toy robot moving around.

Usage
====

```
$ cat << EOF | bin/robot
place 1,2,north
move
report
quit
EOF

# outputs: 1, 3, north
```

Development
====

Run the specs with ```bundle exec rake test```
