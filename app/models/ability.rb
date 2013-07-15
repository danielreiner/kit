class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :access, :rails_admin
      if user.role? :guest
        can :read, [Artist, Event, Gallery]
      elsif user.role? :admin
        can :manage, :all
      end
    end
  end
end