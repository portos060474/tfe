# The following example shows how to generate a unique pet name
# for an AWS EC2 instance that changes each time a new AMI id is
# selected.

resource "random_pet" "server" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    ami_id = var.ami_id
  }
}

output "blabla" {
  description = "ARN of the DynamoDB table"
  value = random_pet.server.keepers.ami_id
}
