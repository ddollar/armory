class Armory::Util

  include Armory
  include Armory::Exception

  URL_PARSERS = {
    :character => /^http:\/\/www\.wowarmory\.com\/character-sheet\.xml\?r=\w+&n=(\w+)$/,
    :guild     => /^http:\/\/www\.wowarmory\.com\/guild-info\.xml\?r=\w+&n=\w+$/
  }

  def self.valid_url?(url, type)
    parser = URL_PARSERS[type.to_sym]
    raise InvalidURLType unless parser
    parser.match(url)
  end

  def self.armory_fetch_guild(url)
    fetch_url(url)
  end

end
