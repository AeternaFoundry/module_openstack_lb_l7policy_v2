output "lb_l7policy_v2s_id" {
  description = "Map of id values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_l7policy_v2s_action" {
  description = "Map of action values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no action are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.action if v.action != null && length(v.action) > 0 }
}
output "lb_l7policy_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no admin_state_up are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.admin_state_up if v.admin_state_up != null }
}
output "lb_l7policy_v2s_description" {
  description = "Map of description values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no description are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lb_l7policy_v2s_listener_id" {
  description = "Map of listener_id values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no listener_id are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.listener_id if v.listener_id != null && length(v.listener_id) > 0 }
}
output "lb_l7policy_v2s_name" {
  description = "Map of name values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lb_l7policy_v2s_position" {
  description = "Map of position values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no position are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.position if v.position != null }
}
output "lb_l7policy_v2s_redirect_http_code" {
  description = "Map of redirect_http_code values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no redirect_http_code are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.redirect_http_code if v.redirect_http_code != null }
}
output "lb_l7policy_v2s_redirect_pool_id" {
  description = "Map of redirect_pool_id values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no redirect_pool_id are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.redirect_pool_id if v.redirect_pool_id != null && length(v.redirect_pool_id) > 0 }
}
output "lb_l7policy_v2s_redirect_prefix" {
  description = "Map of redirect_prefix values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no redirect_prefix are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.redirect_prefix if v.redirect_prefix != null && length(v.redirect_prefix) > 0 }
}
output "lb_l7policy_v2s_redirect_url" {
  description = "Map of redirect_url values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no redirect_url are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}
output "lb_l7policy_v2s_region" {
  description = "Map of region values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lb_l7policy_v2s_tenant_id" {
  description = "Map of tenant_id values across all lb_l7policy_v2s, keyed the same as var.lb_l7policy_v2s except keys with no tenant_id are omitted"
  value       = { for k, v in openstack_lb_l7policy_v2.lb_l7policy_v2s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

