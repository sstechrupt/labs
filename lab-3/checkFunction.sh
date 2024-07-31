#!/bin/bash

# Navigate to the project directory
cd /home/project

# Verify the environment variable creation
checkEnvVariableCreation() {
  if [ "$MY_VAR" == "Hello World" ]; then
    echo "CheckFunctionPassed"
    return 0
  else
    echo "CheckFunctionFailed"
    return 1
  fi
}

# Verify the environment variable usage in script
checkEnvVariableUsage() {
  if ./lab_directory/env_script.sh | grep -q "The value of MY_VAR is: Hello World"; then
    echo "CheckFunctionPassed"
    return 0
  else
    echo "CheckFunctionFailed"
    return 1
  fi
}

# Execute the requested check function
if [ "$1" == "checkEnvVariableCreation" ]; then
  checkEnvVariableCreation
elif [ "$1" == "checkEnvVariableUsage" ]; then
  checkEnvVariableUsage
else
  echo "Invalid function name. Please use checkEnvVariableCreation or checkEnvVariableUsage."
fi
