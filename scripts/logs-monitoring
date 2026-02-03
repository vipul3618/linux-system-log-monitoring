import re
from collections import Counter

# CONFIGURATION
LOG_FILE = "/var/log/auth.log" # On CentOS/RedHat this is /var/log/secure

def analyze_logs():
    print("--- Starting Security Log Analysis ---")

    # 1. Define Regex Pattern (Resume Keyword: Regex)
    # We look for "Failed password for [user] from [ip]"
    # \w+ = word characters (username)
    # [\d\.]+ = digits and dots (IP address)
    pattern = re.compile(r"Failed password for (\w+) from ([\d\.]+)")

    failed_logins = []

    try:
        # 2. Open file safely
        with open(LOG_FILE, "r") as file:
            for line in file:
                # 3. Apply Regex
                match = pattern.search(line)
                if match:
                    username = match.group(1)
                    ip_address = match.group(2)
                    failed_logins.append((username, ip_address))

    except PermissionError:
        print("Error: Run this script with sudo!")
        return

    # 4. Count Occurrences
    if failed_logins:
        print(f"Total Failed Attempts Found: {len(failed_logins)}")
        print("\nTop Attackers (IP Address & Username):")

        # Counter creates a dictionary like {('root', '192.168.1.5'): 3}
        counts = Counter(failed_logins)

        for (user, ip), count in counts.most_common(5):
            print(f"Count: {count} | User: {user} | IP: {ip}")
    else:
        print("No failed login attempts found.")

if __name__ == "__main__":
    analyze_logs()
