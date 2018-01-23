class Thread < Contribution
  def initialize name, content, user, group
    super name, content, user, group
    @type = thread
  end
end