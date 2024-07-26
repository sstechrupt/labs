#!/bin/bash

# Navigate to the project directory
cd /home/project

# Verify the directory and file creation
checkDirectoryAndFiles() {
  if [ -d lab_directory ] && [ -f lab_directory/file1.txt ] && [ -f lab_directory/file2.txt ] && [ -f lab_directory/file3.txt ]; then
    echo "All required files and directory exist."
    return 0
  else
    echo "Some files or the directory are missing."
    return 1
  fi
}

# Verify the contents of file1.txt
checkFileContents() {
  if grep -q "Hello, World!" lab_directory/file1.txt && grep -q "Welcome to the lab." lab_directory/file1.txt; then
    echo "File contents are correct."
    return 0
  else
    echo "File contents are incorrect."
    return 1
  fi
}

# Verify the text manipulation in file2.txt
checkTextManipulation() {
  if grep -q "Hi, World!" lab_directory/file2.txt && grep -q "Welcome to the lab." lab_directory/file2.txt; then
    echo "Text manipulation is correct."
    return 0
  else
    echo "Text manipulation is incorrect."
    return 1
  fi
}

# Verify the script creation and execution
checkScriptExecution() {
  if /bin/bash lab_directory/script.sh | grep -q "This is a script."; then
    echo "Script execution is correct."
    return 0
  else
    echo "Script execution is incorrect."
    return 1
  fi
}

# Execute the requested check function
if [ "$1" == "checkDirectoryAndFiles" ]; then
  checkDirectoryAndFiles
elif [ "$1" == "checkFileContents" ]; then
  checkFileContents
elif [ "$1" == "checkTextManipulation" ]; then
  checkTextManipulation
elif [ "$1" == "checkScriptExecution" ]; then
  checkScriptExecution
else
  echo "Invalid function name. Please use checkDirectoryAndFiles, checkFileContents, checkTextManipulation, or checkScriptExecution."
fi
