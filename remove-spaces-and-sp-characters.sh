# Remove spaces and special characters from file names for S3 upload
#!/bin/bash
find ./docs/ -name "* *" -type f | rename 's/ /-/g'
find ./docs/ -name "*--*" -type f | rename 's/--/-/g'
find ./docs/ -name "*---*" -type f | rename 's/---/-/g'
find ./docs/ -name "*&*" -type f | rename 's/&/and/g'
find ./docs/ -name "*\(*" -type f | rename 's/\(//g'
find ./docs/ -name "*\)*" -type f | rename 's/\)//g'
find ./docs/ -name "*\)*" -type f | rename 's/\[//g'
find ./docs/ -name "*\)*" -type f | rename 's/\]//g'
