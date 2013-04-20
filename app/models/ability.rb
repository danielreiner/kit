class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :access, :rails_admin
      if user.role? :guest
        can :read, :all
        can :update, User, :id => user.id #employee can update own user details
      elsif user.role? :admin
        can :manage, :all
      end
    end
  end
end