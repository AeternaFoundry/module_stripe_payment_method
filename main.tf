resource "stripe_payment_method" "payment_methods" {
  for_each = var.payment_methods

  acss_debit      = each.value.acss_debit
  allow_redisplay = each.value.allow_redisplay
  au_becs_debit   = each.value.au_becs_debit
  bacs_debit      = each.value.bacs_debit
  billing_details = each.value.billing_details
  boleto          = each.value.boleto
  card            = each.value.card
  cashapp         = each.value.cashapp
  customer        = each.value.customer
  eps             = each.value.eps
  fpx             = each.value.fpx
  ideal           = each.value.ideal
  interac_present = each.value.interac_present
  klarna          = each.value.klarna
  kr_card         = each.value.kr_card
  link            = each.value.link
  metadata        = each.value.metadata
  naver_pay       = each.value.naver_pay
  nz_bank_account = each.value.nz_bank_account
  p24             = each.value.p24
  payment_method  = each.value.payment_method
  paypal          = each.value.paypal
  payto           = each.value.payto
  radar_options   = each.value.radar_options
  sepa_debit      = each.value.sepa_debit
  sofort          = each.value.sofort
  type            = each.value.type
  upi             = each.value.upi
  us_bank_account = each.value.us_bank_account
}

