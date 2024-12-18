clear
#!/bin/bash

# Get current timestamp in milliseconds
current_time=$(date +%s.%N)
current_time=${current_time//./}  # Remove decimal point

# Construct filename with timestamp
filename="${current_time}.txt"

# Create the file and write content in one step using redirection and heredoc
printf "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" > "$filename"

# Check if file size is zero (empty)
if [[ $(stat -c%s "$filename") == 0 ]]; then
  # Handle the case where no content was written (e.g., error during writing)
  echo "Error: No content written to file"
  exit 1
fi

exit 0
