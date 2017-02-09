class Child

  attr_accessor :has_coke

  def initialize
    @has_coke = false
  end

  def fetch_coke(resource)
    if resource.has_coke?
      resource.has_coke = false
      @has_coke = true
    else
      raise 'There is no coke'
    end
  end

  def has_coke?
    @has_coke
  end



end
