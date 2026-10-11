variable "lb_l7policy_v2s" {
  description = <<EOT
Map of lb_l7policy_v2s, attributes below
Required:
    - action
    - listener_id
Optional:
    - admin_state_up
    - description
    - name
    - position
    - redirect_http_code
    - redirect_pool_id
    - redirect_prefix
    - redirect_url
    - region
    - tenant_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    action             = string
    listener_id        = string
    admin_state_up     = optional(bool)
    description        = optional(string)
    name               = optional(string)
    position           = optional(number)
    redirect_http_code = optional(number)
    redirect_pool_id   = optional(string)
    redirect_prefix    = optional(string)
    redirect_url       = optional(string)
    region             = optional(string)
    tenant_id          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_l7policy_v2s : (
        contains([for v in ["REDIRECT_TO_POOL", "REDIRECT_TO_URL", "REJECT", "REDIRECT_PREFIX"] : lower(v)], lower(v.action))
      )
    ])
    error_message = "must be one of: \"REDIRECT_TO_POOL\", \"REDIRECT_TO_URL\", \"REJECT\", \"REDIRECT_PREFIX\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_l7policy_v2s : (
        v.redirect_http_code == null || (contains([301, 302, 303, 307, 308], v.redirect_http_code))
      )
    ])
    error_message = "must be one of: 301, 302, 303, 307, 308"
  }
}

