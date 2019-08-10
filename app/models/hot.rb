class Hot

  def initialize gameid
    @gameid = gameid
  end

  def get_bgg_hot
    response = HTTParty.get('https://www.boardgamegeek.com/xmlapi2/hot?=boardgame')
  end

end
