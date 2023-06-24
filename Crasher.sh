#!/bin/bash
################################################################################################
# Warning this code will instantly reboot your system please use this code safely              #
# The creator of this code can not be held responsible for any loss of data and system files   #
################################################################################################

# Define the file path and name
file_path="/boot/crasher.sh"

# Check if the file already exists
if [ -e "$file_path" ]; then
  echo "Error: File already exists."
  exit 1
fi

# Create the new file
cat << EOF > "$file_path"
#!/bin/sh

# This script will crash the system intentionally
echo 1 > /proc/sys/kernel/sysrq
echo c > /proc/sysrq-trigger
EOF

# Set appropriate permissions on the file
chmod +x "$file_path"

echo "crasher.sh created successfully in /boot directory."
sudo reboot now
