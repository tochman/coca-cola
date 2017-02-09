class Child

  attr_accessor :has_coke

  def initialize
    @has_coke = false
  end

  def fetch_coke(resource)
    resource.has_coke = false
    @has_coke = true
  end

  def has_coke?
    @has_coke
  end



end
