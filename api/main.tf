resource "newrelic_synthetics_script_monitor" "monitor" {
 for_each = var.api
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type   
  locations_public     = each.value.locations_public       
  period               = each.value.period
  // script=${path.module/data.js}

   //script=file("${module.api2.path}/data.js") 
  
  script               = file("${path.root}/${each.value.script}") 
  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}