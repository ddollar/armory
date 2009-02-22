class Armory::Guild

  include Armory

  def initialize(url)
    raise Exceptions::InvalidURL unless Util.valid_url?(url, :guild)
  end

end
