# Linux System & Log Monitoring Automation

## 📌 Project Overview
This project focuses on monitoring Linux system resources and automating log analysis using Bash and Python. The goal is to improve system visibility, detect operational issues, and identify potential security incidents through proactive monitoring.

---

## 🎯 Objectives
- Monitor CPU, memory, and disk usage on a Linux system
- Automate analysis of authentication and system logs
- Detect failed login attempts and service-related errors
- Use regex-based pattern matching for security-relevant events
- Schedule monitoring tasks for continuous visibility

---

## 🛠 Tools & Technologies
- **Operating System:** Ubuntu Linux
- **Scripting:** Bash, Python 3
- **Utilities:** uptime, free, df, journalctl
- **Logs Analyzed:** /var/log/auth.log
- **Concepts:** Regex, Automation, Troubleshooting, Monitoring
- **Scheduler:** Cron

---

## 🧩 Project Architecture
- Ubuntu Linux VM used as the monitored system
- Bash scripts collect system performance metrics
- Python scripts parse authentication logs
- Cron jobs automate periodic execution
- Outputs stored for review and analysis

---

## ⚙️ Implementation Details

### 1. System Resource Monitoring
A Bash script collects:
- CPU load
- Memory usage
- Disk utilization

The script generates a structured system health report for troubleshooting and monitoring.

---

### 2. Log Analysis & Security Monitoring
Authentication logs are analyzed to identify:
- Failed login attempts
- Authentication errors
- Potential brute-force activity

Regex-based filtering is used to extract relevant log entries.

---

### 3. Python Automation
A Python script automates:
- Parsing of authentication logs
- Detection and counting of failed login attempts
- Summary generation for quick analysis

---

### 4. Task Scheduling
Cron jobs are configured to:
- Execute monitoring scripts at regular intervals
- Log outputs automatically
- Enable continuous system monitoring

---


## 📊 Sample Output
- System resource utilization reports
- Count of failed authentication attempts
- Log entries indicating suspicious activity

(Screenshots available in the `screenshots/` directory)

---

## 🔐 Security & Operational Use Cases
- Early detection of authentication failures
- Proactive system troubleshooting
- Basic host-level security monitoring
- SOC and Linux administrator foundational monitoring tasks

---

## ✅ Skills Demonstrated
- Linux system administration
- Bash & Python scripting
- Regex-based log analysis
- Automation with cron
- Troubleshooting and monitoring mindset

---

## 🏁 Conclusion
This project demonstrates hands-on experience in Linux system monitoring and log analysis using automation. It reflects real-world operational and security monitoring practices relevant to SOC, system administration, and technical support roles.

