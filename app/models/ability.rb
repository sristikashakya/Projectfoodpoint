class Ability
  include CanCan::Ability

  def initialize(restaurant)
   restaurant ||=Restaurant.new # guestrestaurant (not logged in)
    if restaurant.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
    # Define abilities for the passed in restaurant here. For example:
    #
    #   restaurant ||= restaurant.new # guest restaurant (not logged in)
    #   if restaurant.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the restaurant 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the restaurant can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the restaurant can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
