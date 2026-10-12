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
}

