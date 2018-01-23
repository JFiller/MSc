class Article < Contribution

  def initialize name, content, user, group
    super name, content, user, group
    @type = article
  end
end