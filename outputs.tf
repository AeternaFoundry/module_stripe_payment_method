output "payment_methods_id" {
  description = "Map of id values across all payment_methods, keyed the same as var.payment_methods except keys with no id are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.id if v.id != null && length(v.id) > 0 }
}
output "payment_methods_acss_debit" {
  description = "Map of acss_debit values across all payment_methods, keyed the same as var.payment_methods except keys with no acss_debit are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.acss_debit if v.acss_debit != null && length(v.acss_debit) > 0 }
}
output "payment_methods_allow_redisplay" {
  description = "Map of allow_redisplay values across all payment_methods, keyed the same as var.payment_methods except keys with no allow_redisplay are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.allow_redisplay if v.allow_redisplay != null && length(v.allow_redisplay) > 0 }
}
output "payment_methods_au_becs_debit" {
  description = "Map of au_becs_debit values across all payment_methods, keyed the same as var.payment_methods except keys with no au_becs_debit are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.au_becs_debit if v.au_becs_debit != null && length(v.au_becs_debit) > 0 }
}
output "payment_methods_bacs_debit" {
  description = "Map of bacs_debit values across all payment_methods, keyed the same as var.payment_methods except keys with no bacs_debit are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.bacs_debit if v.bacs_debit != null && length(v.bacs_debit) > 0 }
}
output "payment_methods_billing_details" {
  description = "Map of billing_details values across all payment_methods, keyed the same as var.payment_methods except keys with no billing_details are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.billing_details if v.billing_details != null && length(v.billing_details) > 0 }
}
output "payment_methods_boleto" {
  description = "Map of boleto values across all payment_methods, keyed the same as var.payment_methods except keys with no boleto are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.boleto if v.boleto != null && length(v.boleto) > 0 }
}
output "payment_methods_card" {
  description = "Map of card values across all payment_methods, keyed the same as var.payment_methods except keys with no card are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.card if v.card != null && length(v.card) > 0 }
}
output "payment_methods_card_present" {
  description = "Map of card_present values across all payment_methods, keyed the same as var.payment_methods except keys with no card_present are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.card_present if v.card_present != null && length(v.card_present) > 0 }
}
output "payment_methods_cashapp" {
  description = "Map of cashapp values across all payment_methods, keyed the same as var.payment_methods except keys with no cashapp are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.cashapp if v.cashapp != null && length(v.cashapp) > 0 }
}
output "payment_methods_created" {
  description = "Map of created values across all payment_methods, keyed the same as var.payment_methods except keys with no created are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.created if v.created != null }
}
output "payment_methods_customer" {
  description = "Map of customer values across all payment_methods, keyed the same as var.payment_methods except keys with no customer are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "payment_methods_eps" {
  description = "Map of eps values across all payment_methods, keyed the same as var.payment_methods except keys with no eps are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.eps if v.eps != null && length(v.eps) > 0 }
}
output "payment_methods_fpx" {
  description = "Map of fpx values across all payment_methods, keyed the same as var.payment_methods except keys with no fpx are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.fpx if v.fpx != null && length(v.fpx) > 0 }
}
output "payment_methods_ideal" {
  description = "Map of ideal values across all payment_methods, keyed the same as var.payment_methods except keys with no ideal are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.ideal if v.ideal != null && length(v.ideal) > 0 }
}
output "payment_methods_interac_present" {
  description = "Map of interac_present values across all payment_methods, keyed the same as var.payment_methods except keys with no interac_present are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.interac_present if v.interac_present != null && length(v.interac_present) > 0 }
}
output "payment_methods_klarna" {
  description = "Map of klarna values across all payment_methods, keyed the same as var.payment_methods except keys with no klarna are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.klarna if v.klarna != null && length(v.klarna) > 0 }
}
output "payment_methods_kr_card" {
  description = "Map of kr_card values across all payment_methods, keyed the same as var.payment_methods except keys with no kr_card are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.kr_card if v.kr_card != null && length(v.kr_card) > 0 }
}
output "payment_methods_link" {
  description = "Map of link values across all payment_methods, keyed the same as var.payment_methods except keys with no link are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.link if v.link != null && length(v.link) > 0 }
}
output "payment_methods_livemode" {
  description = "Map of livemode values across all payment_methods, keyed the same as var.payment_methods except keys with no livemode are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.livemode if v.livemode != null }
}
output "payment_methods_metadata" {
  description = "Map of metadata values across all payment_methods, keyed the same as var.payment_methods except keys with no metadata are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "payment_methods_naver_pay" {
  description = "Map of naver_pay values across all payment_methods, keyed the same as var.payment_methods except keys with no naver_pay are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.naver_pay if v.naver_pay != null && length(v.naver_pay) > 0 }
}
output "payment_methods_nz_bank_account" {
  description = "Map of nz_bank_account values across all payment_methods, keyed the same as var.payment_methods except keys with no nz_bank_account are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.nz_bank_account if v.nz_bank_account != null && length(v.nz_bank_account) > 0 }
}
output "payment_methods_object" {
  description = "Map of object values across all payment_methods, keyed the same as var.payment_methods except keys with no object are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.object if v.object != null && length(v.object) > 0 }
}
output "payment_methods_p24" {
  description = "Map of p24 values across all payment_methods, keyed the same as var.payment_methods except keys with no p24 are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.p24 if v.p24 != null && length(v.p24) > 0 }
}
output "payment_methods_paypal" {
  description = "Map of paypal values across all payment_methods, keyed the same as var.payment_methods except keys with no paypal are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.paypal if v.paypal != null && length(v.paypal) > 0 }
}
output "payment_methods_payto" {
  description = "Map of payto values across all payment_methods, keyed the same as var.payment_methods except keys with no payto are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.payto if v.payto != null && length(v.payto) > 0 }
}
output "payment_methods_radar_options" {
  description = "Map of radar_options values across all payment_methods, keyed the same as var.payment_methods except keys with no radar_options are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.radar_options if v.radar_options != null && length(v.radar_options) > 0 }
}
output "payment_methods_sepa_debit" {
  description = "Map of sepa_debit values across all payment_methods, keyed the same as var.payment_methods except keys with no sepa_debit are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.sepa_debit if v.sepa_debit != null && length(v.sepa_debit) > 0 }
}
output "payment_methods_sofort" {
  description = "Map of sofort values across all payment_methods, keyed the same as var.payment_methods except keys with no sofort are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.sofort if v.sofort != null && length(v.sofort) > 0 }
}
output "payment_methods_type" {
  description = "Map of type values across all payment_methods, keyed the same as var.payment_methods except keys with no type are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.type if v.type != null && length(v.type) > 0 }
}
output "payment_methods_upi" {
  description = "Map of upi values across all payment_methods, keyed the same as var.payment_methods except keys with no upi are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.upi if v.upi != null && length(v.upi) > 0 }
}
output "payment_methods_us_bank_account" {
  description = "Map of us_bank_account values across all payment_methods, keyed the same as var.payment_methods except keys with no us_bank_account are omitted"
  value       = { for k, v in stripe_payment_method.payment_methods : k => v.us_bank_account if v.us_bank_account != null && length(v.us_bank_account) > 0 }
}

