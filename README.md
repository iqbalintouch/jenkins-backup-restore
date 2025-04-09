# Jenkins Backup and Restore 🚀

A practical DevOps project to automate the backup and restoration of Jenkins using AWS S3.

---

## 📌 Project Goal

Ensure Jenkins configuration and job data is regularly backed up and easily restorable using shell scripts and AWS services.

---

## ⚙️ Tech Stack

- Jenkins (CI/CD tool)
- AWS EC2 (Compute)
- AWS S3 (Backup Storage)
- IAM (Permissions)
- Git & GitHub (Version Control)
- Bash (Automation)

---

## 📂 Project Structure

jenkins-backup-restore/ │ ├── scripts/ │ ├── backup.sh # Backs up Jenkins data to S3 │ └── restore.sh # Restores Jenkins data from S3 ├── README.md └── documentation.md



---

## ✅ Steps Performed

1. Created an S3 bucket
2. Launched EC2 and installed Jenkins
3. Wrote backup and restore shell scripts
4. Created GitHub repo and pushed scripts
5. Created IAM Role with S3 access
6. Configured Jenkins job to automate backup

---

## 📥 Jenkins Job Build

- Freestyle Project: `backup-job`
- Build step: `bash scripts/backup.sh`

---

## 📦 Bucket Used
Bucket: jenkins-backup-miqubal Region: us-east-1


---

## 🔁 Restore

Use the `restore.sh` script manually or from a Jenkins job to restore backup from S3.

---

## 📝 Author

**Mohammad Iqubal**  
📧 miqubal.187@gmail.com  
🌐 [LinkedIn](https://www.linkedin.com/in/miqubal)
