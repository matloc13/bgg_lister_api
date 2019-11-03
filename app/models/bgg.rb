class Bgg

  def initialize gameid
    @gameid = gameid
  end
  # playing with built in pagination
  def get_bgg_game
    response = HTTParty.get('https://www.boardgamegeek.com/xmlapi2/thing?id='+ @gameid)
  end

  def get_bgg_list
    response = HTTParty.get('https://www.boardgamegeek.com/xmlapi/geeklist/252877')
  end

end
