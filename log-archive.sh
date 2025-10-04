#!/bin/bash

# --- 1. Check for Input Argument ---
# We check if the user provided a directory path.
# -z checks if the string is empty. $1 is the first argument.
if [ -z "$1" ]; then
  echo "Error: No log directory provided."
  echo "Usage: $0 <log-directory>"
  exit 1
fi

# --- 2. Define Variables ---
# Store the first argument in a readable variable.
LOG_DIRECTORY=$1
# Create a directory in the user's home folder to store the archives.
ARCHIVE_DIR="$HOME/archives"
# Get the current date and time in the format YYYYMMDD_HHMMSS.
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
# Create the full filename for our archive.
FILE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
# The full path where the archive will be saved.
DESTINATION="${ARCHIVE_DIR}/${FILE_NAME}"


# --- 3. Create Archive Directory if it Doesn't Exist ---
# The -p flag tells mkdir to create the directory only if it doesn't
# already exist. This prevents errors on subsequent runs.
mkdir -p "$ARCHIVE_DIR"


# --- 4. Compress the Logs ---
# This is the core command of our script.
# We use 'tar' to create a compressed archive of the log directory.
echo "Archiving directory: ${LOG_DIRECTORY}"
tar -czvf "${DESTINATION}" "${LOG_DIRECTORY}"


# --- 5. Final Confirmation ---
# Let the user know the script finished and where to find the file.
echo "-------------------------------------------"
echo "Log archive created successfully at:"
echo "${DESTINATION}"
echo "-------------------------------------------"

exit 0