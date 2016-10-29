class RequestHeaders
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def as_json(options={})
    {
      ipaddress: ip_address,
      language: language,
      software: software,
    }
  end

  private

  def ip_address
    request.ip
  end

  def language
    accept_language && accept_language.split(',').first
  end

  def software
    user_agent && software_with_parens.gsub(/[\(\)]/, '')
  end

  def accept_language
    request.headers['Accept-Language']
  end

  def software_with_parens
    /\(.+?\)/.match(user_agent).to_a.first
  end

  def user_agent
    request.headers['User-Agent']
  end
end
