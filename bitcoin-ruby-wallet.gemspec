$:.push File.expand_path("../lib", __FILE__)
require "bitcoin/wallet/version"

Gem::Specification.new do |s|
  s.name        = "bitcoin-ruby-wallet"
  s.version     = Bitcoin::Wallet::VERSION
  s.authors     = ["Marius Hanne"]
  s.email       = ["marius.hanne@sourceagency.org"]
  s.summary     = %q{simple wallet based on bitcoin-ruby, bitcoin-ruby-blockchain, and bitcoin-ruby-node}
  s.description = %q{very early development and serves mostly as a proof-of-concept prototype}
  s.homepage    = "https://github.com/mhanne/bitcoin-ruby-wallet"
  s.license     = "MIT"

  # s.rubyforge_project = "bitcoin-ruby-wallet"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_rubygems_version = ">= 1.3.6"
  # s.add_dependency "bitcoin-ruby"
end
