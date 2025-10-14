## 🧩 AWS Setup and IAM Configuration Guide

Follow these steps to configure your AWS environment and connect it to your local machine using the AWS CLI.

---

### 1. Create an AWS Account

* Sign up for a new [AWS account](https://aws.amazon.com/).
* This will create a **Root User** — **do not use the root account** for day-to-day operations.

---

### 2. Create a New IAM User

* Navigate to the **IAM Service** in your AWS Console.
* Create a new user (for example: **`aws-tf`**).
* Assign appropriate permissions or attach the required policies.

---

### 3. Generate Access Keys

* Go to the IAM user details page:
  [Create Access Key](https://us-east-1.console.aws.amazon.com/iam/home?region=eu-north-1#/users/details/aws-tf/create-access-key)
* Choose **“Command Line Interface (CLI)”** as the use case.
* Copy and save the **Access Key ID** and **Secret Access Key** safely.

---

### 4. Install AWS CLI

* Install the AWS CLI on your local machine.
  For macOS users:

  ```bash
  brew install awscli
  ```

  For other operating systems, refer to the [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

---

### 5. Configure Environment Variables

* In your project directory, create a `.env` file:

  ```bash
  export AWS_ACCESS_KEY_ID=your_AWS_ACCESS_KEY_ID
  export AWS_SECRET_ACCESS_KEY=your_AWS_SECRET_ACCESS_KEY
  ```
* Load the environment variables into your terminal session:

  ```bash
  source .env
  ```

---

### 6. Verify Configuration

Run the following command to verify the user is configured correctly:

```bash
aws iam list-users
```

If you see a list of users (including `aws-tf`), your **AWS CLI** is successfully configured.

---

✅ **Done!**
Your local machine is now securely connected to AWS using the `aws-tf` IAM user.

---