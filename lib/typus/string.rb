class String

  def typus_actions_for(filter)
    # OPTIMIZE
    Typus::Configuration.config[self]['actions'][filter.to_s].split(', ') rescue []
  end

  def typus_defaults_for(filter)
    # OPTIMIZE
    Typus::Configuration.config[self][filter.to_s].split(', ') rescue []
  end

end