## ⚙️ Terraform Commands Overview

Once your AWS CLI is configured, you can start using Terraform to manage your AWS infrastructure.

### 1. Initialize Terraform

Initializes your Terraform working directory. This command downloads the necessary provider plugins and sets up the backend.

```bash
terraform init
```

---

### 2. Validate Configuration

Checks whether your Terraform configuration files are syntactically valid and internally consistent.

```bash
terraform validate
```

---

### 3. Plan the Infrastructure

Generates an execution plan showing what actions Terraform will take to reach the desired state defined in your `.tf` files.

```bash
terraform plan
```

---

### 4. Apply the Configuration

Applies the changes required to reach the desired state — i.e., creates or modifies resources in AWS.

```bash
terraform apply
```

> 💡 **Tip:** Always review the plan output before typing “yes” to confirm apply.

---

### 5. Destroy the Infrastructure

Deletes all resources defined in your Terraform configuration.

```bash
terraform destroy
```

> ⚠️ **Warning:** This will permanently remove all managed infrastructure.
