class Guest

  attr_reader :name, :age, :wallet, :favourite_song, :alcohol_level
  attr_writer :alcohol_level


  def initialize(name, age, wallet, favourite_song)
    @name = name  #type string
    @age = age
    @wallet = wallet  #type float
    @favourite_song = favourite_song  #type song
    @alcohol_level = 0.0
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
