class Bgg

  def initialize gameid
    @gameid = gameid
  end

  def get_bgg_game
    response = HTTParty.get('https://www.boardgamegeek.com/xmlapi2/thing?id='+ @gameid)
  end

  def get_bgg_list
    response = HTTParty.get('https://www.boardgamegeek.com/xmlapi2/geeklist/252877')
  end

end
