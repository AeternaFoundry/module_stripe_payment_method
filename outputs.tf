output "payment_methods_id" {
  description = "Map of id values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.id }
}
output "payment_methods_acss_debit" {
  description = "Map of acss_debit values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.acss_debit }
}
output "payment_methods_allow_redisplay" {
  description = "Map of allow_redisplay values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.allow_redisplay }
}
output "payment_methods_au_becs_debit" {
  description = "Map of au_becs_debit values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.au_becs_debit }
}
output "payment_methods_bacs_debit" {
  description = "Map of bacs_debit values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.bacs_debit }
}
output "payment_methods_billing_details" {
  description = "Map of billing_details values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.billing_details }
}
output "payment_methods_boleto" {
  description = "Map of boleto values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.boleto }
}
output "payment_methods_card" {
  description = "Map of card values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.card }
}
output "payment_methods_card_present" {
  description = "Map of card_present values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.card_present }
}
output "payment_methods_cashapp" {
  description = "Map of cashapp values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.cashapp }
}
output "payment_methods_created" {
  description = "Map of created values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.created }
}
output "payment_methods_customer" {
  description = "Map of customer values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.customer }
}
output "payment_methods_eps" {
  description = "Map of eps values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.eps }
}
output "payment_methods_fpx" {
  description = "Map of fpx values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.fpx }
}
output "payment_methods_ideal" {
  description = "Map of ideal values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.ideal }
}
output "payment_methods_interac_present" {
  description = "Map of interac_present values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.interac_present }
}
output "payment_methods_klarna" {
  description = "Map of klarna values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.klarna }
}
output "payment_methods_kr_card" {
  description = "Map of kr_card values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.kr_card }
}
output "payment_methods_link" {
  description = "Map of link values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.link }
}
output "payment_methods_livemode" {
  description = "Map of livemode values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.livemode }
}
output "payment_methods_metadata" {
  description = "Map of metadata values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.metadata }
}
output "payment_methods_naver_pay" {
  description = "Map of naver_pay values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.naver_pay }
}
output "payment_methods_nz_bank_account" {
  description = "Map of nz_bank_account values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.nz_bank_account }
}
output "payment_methods_object" {
  description = "Map of object values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.object }
}
output "payment_methods_p24" {
  description = "Map of p24 values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.p24 }
}
output "payment_methods_paypal" {
  description = "Map of paypal values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.paypal }
}
output "payment_methods_payto" {
  description = "Map of payto values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.payto }
}
output "payment_methods_radar_options" {
  description = "Map of radar_options values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.radar_options }
}
output "payment_methods_sepa_debit" {
  description = "Map of sepa_debit values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.sepa_debit }
}
output "payment_methods_sofort" {
  description = "Map of sofort values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.sofort }
}
output "payment_methods_type" {
  description = "Map of type values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.type }
}
output "payment_methods_upi" {
  description = "Map of upi values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.upi }
}
output "payment_methods_us_bank_account" {
  description = "Map of us_bank_account values across all payment_methods, keyed the same as var.payment_methods"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.us_bank_account }
}

