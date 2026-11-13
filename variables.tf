variable "payment_methods" {
  description = <<EOT
Map of payment_methods, attributes below
Optional:
    - acss_debit
    - allow_redisplay
    - au_becs_debit
    - bacs_debit
    - billing_details
    - boleto
    - card
    - cashapp
    - customer
    - eps
    - fpx
    - ideal
    - interac_present
    - klarna
    - kr_card
    - link
    - metadata
    - naver_pay
    - nz_bank_account
    - p24
    - payment_method
    - paypal
    - payto
    - radar_options
    - sepa_debit
    - sofort
    - type
    - upi
    - us_bank_account
EOT

  type = map(object({
    acss_debit = optional(object({
      account_number     = string
      institution_number = string
      transit_number     = string
    }))
    allow_redisplay = optional(string)
    au_becs_debit = optional(object({
      account_number = string
      bsb_number     = string
    }))
    bacs_debit = optional(object({
      account_number = optional(string)
      sort_code      = optional(string)
    }))
    billing_details = optional(object({
      address = optional(object({
        city        = optional(string)
        country     = optional(string)
        line1       = optional(string)
        line2       = optional(string)
        postal_code = optional(string)
        state       = optional(string)
      }))
      email  = optional(string)
      name   = optional(string)
      phone  = optional(string)
      tax_id = optional(string)
    }))
    boleto = optional(object({
      tax_id = string
    }))
    card = optional(object({
      cvc       = optional(string)
      exp_month = optional(number)
      exp_year  = optional(number)
      networks = optional(object({
        preferred = optional(string)
      }))
      number = optional(string)
      token  = optional(string)
    }))
    cashapp = optional(object({
    }))
    customer = optional(string)
    eps = optional(object({
      bank = optional(string)
    }))
    fpx = optional(object({
      account_holder_type = optional(string)
      bank                = string
    }))
    ideal = optional(object({
      bank = optional(string)
    }))
    interac_present = optional(object({
    }))
    klarna = optional(object({
      dob = optional(object({
        day   = number
        month = number
        year  = number
      }))
    }))
    kr_card = optional(object({
    }))
    link = optional(object({
    }))
    metadata = optional(map(string))
    naver_pay = optional(object({
      funding = optional(string)
    }))
    nz_bank_account = optional(object({
      account_holder_name = optional(string)
      account_number      = string
      bank_code           = string
      branch_code         = string
      reference           = optional(string)
      suffix              = string
    }))
    p24 = optional(object({
      bank = optional(string)
    }))
    payment_method = optional(string)
    paypal = optional(object({
    }))
    payto = optional(object({
      account_number = optional(string)
      bsb_number     = optional(string)
      pay_id         = optional(string)
    }))
    radar_options = optional(object({
      session = optional(string)
    }))
    sepa_debit = optional(object({
      iban = string
    }))
    sofort = optional(object({
      country = string
    }))
    type = optional(string)
    upi = optional(object({
      mandate_options = optional(object({
        amount      = optional(number)
        amount_type = optional(string)
        description = optional(string)
        end_date    = optional(number)
      }))
    }))
    us_bank_account = optional(object({
      account_holder_type           = optional(string)
      account_number                = optional(string)
      account_type                  = optional(string)
      financial_connections_account = optional(string)
      routing_number                = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.allow_redisplay == null || (contains(["always", "limited", "unspecified"], v.allow_redisplay))
      )
    ])
    error_message = "must be one of: \"always\", \"limited\", \"unspecified\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.eps == null || (v.eps.bank == null || (contains(["arzte_und_apotheker_bank", "austrian_anadi_bank_ag", "bank_austria", "bankhaus_carl_spangler", "bankhaus_schelhammer_und_schattera_ag", "bawag_psk_ag", "bks_bank_ag", "brull_kallmus_bank_ag", "btv_vier_lander_bank", "capital_bank_grawe_gruppe_ag", "deutsche_bank_ag", "dolomitenbank", "easybank_ag", "erste_bank_und_sparkassen", "hypo_alpeadriabank_international_ag", "hypo_bank_burgenland_aktiengesellschaft", "hypo_noe_lb_fur_niederosterreich_u_wien", "hypo_oberosterreich_salzburg_steiermark", "hypo_tirol_bank_ag", "hypo_vorarlberg_bank_ag", "marchfelder_bank", "oberbank_ag", "raiffeisen_bankengruppe_osterreich", "schoellerbank_ag", "sparda_bank_wien", "volksbank_gruppe", "volkskreditbank_ag", "vr_bank_braunau"], v.eps.bank)))
      )
    ])
    error_message = "must be one of: \"arzte_und_apotheker_bank\", \"austrian_anadi_bank_ag\", \"bank_austria\", \"bankhaus_carl_spangler\", \"bankhaus_schelhammer_und_schattera_ag\", \"bawag_psk_ag\", \"bks_bank_ag\", \"brull_kallmus_bank_ag\", \"btv_vier_lander_bank\", \"capital_bank_grawe_gruppe_ag\", \"deutsche_bank_ag\", \"dolomitenbank\", \"easybank_ag\", \"erste_bank_und_sparkassen\", \"hypo_alpeadriabank_international_ag\", \"hypo_bank_burgenland_aktiengesellschaft\", \"hypo_noe_lb_fur_niederosterreich_u_wien\", \"hypo_oberosterreich_salzburg_steiermark\", \"hypo_tirol_bank_ag\", \"hypo_vorarlberg_bank_ag\", \"marchfelder_bank\", \"oberbank_ag\", \"raiffeisen_bankengruppe_osterreich\", \"schoellerbank_ag\", \"sparda_bank_wien\", \"volksbank_gruppe\", \"volkskreditbank_ag\", \"vr_bank_braunau\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.fpx == null || (v.fpx.account_holder_type == null || (contains(["company", "individual"], v.fpx.account_holder_type)))
      )
    ])
    error_message = "must be one of: \"company\", \"individual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.fpx == null || (contains(["affin_bank", "agrobank", "alliance_bank", "ambank", "bank_islam", "bank_muamalat", "bank_of_china", "bank_rakyat", "bsn", "cimb", "deutsche_bank", "hong_leong_bank", "hsbc", "kfh", "maybank2e", "maybank2u", "ocbc", "pb_enterprise", "public_bank", "rhb", "standard_chartered", "uob"], v.fpx.bank))
      )
    ])
    error_message = "must be one of: \"affin_bank\", \"agrobank\", \"alliance_bank\", \"ambank\", \"bank_islam\", \"bank_muamalat\", \"bank_of_china\", \"bank_rakyat\", \"bsn\", \"cimb\", \"deutsche_bank\", \"hong_leong_bank\", \"hsbc\", \"kfh\", \"maybank2e\", \"maybank2u\", \"ocbc\", \"pb_enterprise\", \"public_bank\", \"rhb\", \"standard_chartered\", \"uob\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.ideal == null || (v.ideal.bank == null || (contains(["abn_amro", "adyen", "asn_bank", "bunq", "buut", "finom", "handelsbanken", "ing", "knab", "mollie", "moneyou", "n26", "nn", "rabobank", "regiobank", "revolut", "sns_bank", "triodos_bank", "van_lanschot", "yoursafe"], v.ideal.bank)))
      )
    ])
    error_message = "must be one of: \"abn_amro\", \"adyen\", \"asn_bank\", \"bunq\", \"buut\", \"finom\", \"handelsbanken\", \"ing\", \"knab\", \"mollie\", \"moneyou\", \"n26\", \"nn\", \"rabobank\", \"regiobank\", \"revolut\", \"sns_bank\", \"triodos_bank\", \"van_lanschot\", \"yoursafe\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.naver_pay == null || (v.naver_pay.funding == null || (contains(["card", "points"], v.naver_pay.funding)))
      )
    ])
    error_message = "must be one of: \"card\", \"points\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.p24 == null || (v.p24.bank == null || (contains(["alior_bank", "bank_millennium", "bank_nowy_bfg_sa", "bank_pekao_sa", "banki_spbdzielcze", "blik", "bnp_paribas", "boz", "citi_handlowy", "credit_agricole", "envelobank", "etransfer_pocztowy24", "getin_bank", "ideabank", "ing", "inteligo", "mbank_mtransfer", "nest_przelew", "noble_pay", "pbac_z_ipko", "plus_bank", "santander_przelew24", "tmobile_usbugi_bankowe", "toyota_bank", "velobank", "volkswagen_bank"], v.p24.bank)))
      )
    ])
    error_message = "must be one of: \"alior_bank\", \"bank_millennium\", \"bank_nowy_bfg_sa\", \"bank_pekao_sa\", \"banki_spbdzielcze\", \"blik\", \"bnp_paribas\", \"boz\", \"citi_handlowy\", \"credit_agricole\", \"envelobank\", \"etransfer_pocztowy24\", \"getin_bank\", \"ideabank\", \"ing\", \"inteligo\", \"mbank_mtransfer\", \"nest_przelew\", \"noble_pay\", \"pbac_z_ipko\", \"plus_bank\", \"santander_przelew24\", \"tmobile_usbugi_bankowe\", \"toyota_bank\", \"velobank\", \"volkswagen_bank\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.type == null || (contains(["acss_debit", "affirm", "afterpay_clearpay", "alipay", "alma", "amazon_pay", "au_becs_debit", "bacs_debit", "bancontact", "billie", "bizum", "blik", "boleto", "card", "card_present", "cashapp", "crypto", "custom", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "interac_present", "kakao_pay", "klarna", "konbini", "kr_card", "link", "mb_way", "mobilepay", "multibanco", "naver_pay", "nz_bank_account", "oxxo", "p24", "pay_by_bank", "payco", "paynow", "paypal", "payto", "pix", "promptpay", "revolut_pay", "samsung_pay", "satispay", "scalapay", "sepa_debit", "sofort", "sunbit", "swish", "twint", "upi", "us_bank_account", "wechat_pay", "zip"], v.type))
      )
    ])
    error_message = "must be one of: \"acss_debit\", \"affirm\", \"afterpay_clearpay\", \"alipay\", \"alma\", \"amazon_pay\", \"au_becs_debit\", \"bacs_debit\", \"bancontact\", \"billie\", \"bizum\", \"blik\", \"boleto\", \"card\", \"card_present\", \"cashapp\", \"crypto\", \"custom\", \"customer_balance\", \"eps\", \"fpx\", \"giropay\", \"grabpay\", \"ideal\", \"interac_present\", \"kakao_pay\", \"klarna\", \"konbini\", \"kr_card\", \"link\", \"mb_way\", \"mobilepay\", \"multibanco\", \"naver_pay\", \"nz_bank_account\", \"oxxo\", \"p24\", \"pay_by_bank\", \"payco\", \"paynow\", \"paypal\", \"payto\", \"pix\", \"promptpay\", \"revolut_pay\", \"samsung_pay\", \"satispay\", \"scalapay\", \"sepa_debit\", \"sofort\", \"sunbit\", \"swish\", \"twint\", \"upi\", \"us_bank_account\", \"wechat_pay\", \"zip\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.us_bank_account == null || (v.us_bank_account.account_holder_type == null || (contains(["company", "individual"], v.us_bank_account.account_holder_type)))
      )
    ])
    error_message = "must be one of: \"company\", \"individual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_methods : (
        v.us_bank_account == null || (v.us_bank_account.account_type == null || (contains(["checking", "savings"], v.us_bank_account.account_type)))
      )
    ])
    error_message = "must be one of: \"checking\", \"savings\""
  }
}

