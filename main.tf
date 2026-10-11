resource "openstack_lb_l7policy_v2" "lb_l7policy_v2s" {
  for_each = var.lb_l7policy_v2s

  action             = each.value.action
  listener_id        = each.value.listener_id
  admin_state_up     = each.value.admin_state_up
  description        = each.value.description
  name               = each.value.name
  position           = each.value.position
  redirect_http_code = each.value.redirect_http_code
  redirect_pool_id   = each.value.redirect_pool_id
  redirect_prefix    = each.value.redirect_prefix
  redirect_url       = each.value.redirect_url
  region             = each.value.region
  tenant_id          = each.value.tenant_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

