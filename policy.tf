# locals {
#   policy_metadata   = jsondecode(file("${path.module}/policy_definition/policy_definition_es_enforce_storage_tags.json")).properties.metadata
#   policy_rule       = jsondecode(file("${path.module}/policy_definition/policy_definition_es_enforce_storage_tags.json")).properties.policyRule
#   policy_parameters = jsondecode(file("${path.module}/policy_definition/policy_definition_es_enforce_storage_tags.json")).properties.parameters

# }

# resource "azurerm_policy_definition" "testpolicy" {
#   name         = "TestPolicy"
#   policy_type  = "Custom"
#   mode         = "All"
#   display_name = "Only allow specific locations for resource deployment"
#   metadata     = <<METADATA
# {
#   "category": "General",
#   "created_by": "Terraform"
# }
# METADATA

#   policy_rule = <<POLICY_RULE
# {
# 	"if": {
# 		"not": {
# 			"field": "location",
# 			"in": "[parameters('allowedLocations')]"
# 		}
# 	},
# 	"then": {
#     	"effect": "[parameters('effect')]"
# 	}
# }
# POLICY_RULE


#   parameters = <<PARAMETERS
# {
#   "allowedLocations": {
#     "type": "Array",
#     "metadata": {
#       "displayName": "Allowed locations",
#       "description": "The list of allowed locations for resources.",
#       "strongType": "location"
#     }
#   },
#   "effect": {
#     "type": "String",
#     "metadata": {
#       "displayName": "Effect type for the policy",
#       "description": "Effect type for the policy"
#     },
#     "allowedValues": ["audit", "deny"]
#   }
# }
# PARAMETERS

# }

# resource "azurerm_subscription_policy_assignment" "mypolicy_assignment" {
#   name                 = "mypolicy_assignment"
#   policy_definition_id = azurerm_policy_definition.testpolicy.id
#   subscription_id      = data.azurerm_subscription.current.id
#   parameters           = <<PARAMETERS
# {
#   "allowedLocations": {
#     "value": ["eastus"]
#   },
#   "effect": {
#     "value": "deny"
#   }
# }
# PARAMETERS
# }
