#Create an RBAC
az ad sp create-for-rbac -n "AzureDevOps" --role Contributor --scopes /subscriptions/ae158673-730f-4ef7-94b1-6c316983f33c

# Create an RBAC for SDK/programmatic acces
az ad sp create-for-rbac -n "AzureDevOps" --role Contributor --scopes /subscriptions/ae158673-730f-4ef7-94b1-6c316983f33c --sdk-auth