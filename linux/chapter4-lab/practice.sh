#!/bin/bash

# 1. Create a safe sandbox directory for practice
SANDBOX_DIR="chmod_sandbox"
mkdir -p "$SANDBOX_DIR"
cd "$SANDBOX_DIR" || exit

echo "=== Welcome to the chmod Practice Sandbox ==="
echo "Creating practice files..."

# Create dummy files for our experiments
touch file_symbolic.txt
touch file_numeric.txt
touch script_example.sh

echo -e "\n--- Initial Default Permissions ---"
ls -l

# 2. Symbolic Mode Practice 
# Rules: u=user, g=group, o=others, a=all | + adds, - removes, = sets exactly
echo -e "\n--- Applying Symbolic Permissions ---"
echo "Command: chmod u+x,g+w,o-r file_symbolic.txt"
# Action: Adds execute (x) for user, adds write (w) for group, removes read (r) for others
chmod u+x,g+w,o-r file_symbolic.txt
ls -l file_symbolic.txt

# 3. Numeric (Octal) Mode Practice 
# Rules: 4=read, 2=write, 1=execute. You add them together (e.g., 4+2=6 for read/write)
echo -e "\n--- Applying Numeric Permissions ---"
echo "Command: chmod 644 file_numeric.txt"
# Action: 6 (User: 4+2), 4 (Group: 4), 4 (Others: 4) -> rw-r--r--
chmod 644 file_numeric.txt
ls -l file_numeric.txt

echo "Command: chmod 755 script_example.sh"
# Action: 7 (User: 4+2+1), 5 (Group: 4+1), 5 (Others: 4+1) -> rwxr-xr-x
chmod 755 script_example.sh
ls -l script_example.sh

echo -e "\nPractice environment setup complete! Your sandbox is located in: $(pwd)"
echo "You can now run your own chmod commands on these files to test your understanding."
