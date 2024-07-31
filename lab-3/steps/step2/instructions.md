# Step 2: Using Environment Variables in Scripts

In this step, you will use environment variables in a script.

1. Create a new script file named `env_script.sh` in the `lab_directory`.
2. Add the following content to the script:
    ```sh
    #!/bin/bash
    echo "The value of MY_VAR is: $MY_VAR"
    ```
3. Make the script executable:
    ```sh
    chmod +x env_script.sh
    ```
4. Run the script:
    ```sh
    ./env_script.sh
    ```
