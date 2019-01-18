class Guest

  attr_reader :name, :wallet, :favourite_song

  def initialize(name, wallet, favourite_song)
    @name = name  #type string
    @wallet = wallet  #type float
    @favourite_song = favourite_song  #type song
  end

  def handover_money(bill)
    if @wallet >= bill
      @wallet -= bill
      return bill
    else
      return 0
    end
  end

  def top_up_wallet(cash)
    @wallet += cash
  end

end
