#!/bin/bash
# umask_demonstrator.sh
# Purpose: Dynamically demonstrate how umask limits default file and directory permissions

# 1. Set a strict umask (027)
# Mathematics:
# File Base (666) - Mask (027) = File Result (640: rw-r-----)
# Dir Base  (777) - Mask (027) = Dir Result (750: rwxr-x---)

echo "Setting session umask to 027..."
umask 027

# 2. Create test items to trigger the system's default creation process
echo "Creating a new test file and directory..."
touch umask_test_file.txt
mkdir umask_test_dir

# 3. Verify the resulting permissions
echo -e "\nResults after applying umask 027:"
ls -ld umask_test_file.txt umask_test_dir

# 4. Clean up the practice files
rm umask_test_file.txt
rmdir umask_test_dir
