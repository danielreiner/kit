class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :access, :rails_admin
      if user.role? :guest
        can [:read, :create], [Artist, Event, Gallery], :user_id => user.id
        can [:show, :update], [Artist, Event, Gallery], :user_id => user.id
        can :dashboard
      elsif user.role? :admin
        can :manage, :all
      end
    end
  end
end
