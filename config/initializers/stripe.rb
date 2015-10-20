require 'stripe'
Rails.configuration.stripe = {
	:publishable_key => 'pk_test_LTnMfF09mQqrXZIwJ4D19Qd7',
	:secret_key => 'sk_test_PVuhWdovATDkYunzGcYxbyvl'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]