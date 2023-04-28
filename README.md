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

# outputs: 
# 1, 3, north
```

or, version 2 slightly adapted:

```
$ cat << EOF | bin/robot_v2
5 5
1 2 N
L M L M L M L M M
3 3 E
M M R M M R M R R M
EOF

# outputs: 
# 1 3 N
# 5 1 E

```
Development
====

Run the specs with ```bundle exec rake test```
