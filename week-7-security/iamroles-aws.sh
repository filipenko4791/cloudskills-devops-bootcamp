# Create an IAM user
aws iam create-user --user-name Filipenko

# Create an IAM group
aws iam create-group --group-name Filipenko-Gruppe2

# Add user to group
aws iam add-user-to-group --user-name Filipenko --group-name Filipenko-Gruppe2