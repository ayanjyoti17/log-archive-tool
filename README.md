# Log Archive Tool

A simple Bash script to archive log files from a specified directory into a compressed `.tar.gz` file. The archive is timestamped and stored in a central `~/archives` directory.

This project is part of the roadmap.sh DevOps project series.

## Features

-   Accepts a log directory as a command-line argument.
-   Creates a unique, timestamped archive filename (e.g., `logs_archive_20251004_104500.tar.gz`).
-   Stores all archives in a centralized `~/archives` directory.
-   Includes error handling for missing arguments.

## How to Use

1.  **Clone or download** the `log-archive.sh` script.

2.  **Make it executable:**
    ```sh
    chmod +x log-archive.sh
    ```

3.  **Run the script** and provide the path to the log directory you want to archive.
    *Note: Archiving system directories like `/var/log` will require `sudo`.*

    ```sh
    # Example for a system log directory
    sudo ./log-archive.sh /var/log

    # Example for a user-owned directory
    ./log-archive.sh /path/to/your/logs
    ```
The compressed file will be saved in the `~/archives` folder.

---

**Project Page URL:** https://roadmap.sh/projects/log-archive-tool