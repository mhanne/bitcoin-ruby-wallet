# encoding: ascii-8bit

Bundler.setup
require 'bitcoin'

# The wallet implementation consists of several concepts:
# Wallet::             the high-level API used to manage a wallet
# SimpleKeyStore::     key store to manage keys/addresses/labels
# SimpleCoinSelector:: coin selector to find unspent outputs to use when creating tx
module Bitcoin::Wallet

end


require_relative "wallet/keystore"
require_relative "wallet/keygenerator"
require_relative "wallet/coinselector"
require_relative "wallet/wallet"
