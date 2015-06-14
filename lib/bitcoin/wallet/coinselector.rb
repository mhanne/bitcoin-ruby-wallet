# encoding: ascii-8bit

module Bitcoin::Wallet

  # select unspent txouts to be used by the Wallet when creating a new transaction
  class SimpleCoinSelector

    # create coinselector with given +txouts+
    def initialize txouts
      @txouts = txouts
    end

    # select txouts needed to spend +value+ btc (base units)
    def select(value)
      txouts = []
      @txouts.each do |txout|
        begin
          next  if txout.next_in
          next  if Bitcoin.namecoin? && txout.parsed_script.is_namecoin?
          next  unless txout.address
          next  unless txout.tx.block
          txouts << txout
          return txouts  if txouts.map(&:value).inject(:+) >= value
        rescue
          p $!
        end
      end
      txouts
    end

  end

end
