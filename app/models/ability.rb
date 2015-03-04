  class Ability
  include CanCan::Ability

  def initialize(user)
    @user  = user
    @record = record
  end

  def index
    false
  end 

  end
