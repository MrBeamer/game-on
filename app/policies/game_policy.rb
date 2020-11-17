class GamePolicy < ApplicationPolicy

    def create?
      return true
    end

    def show?
      return true
    end

    def update?
       return true
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    end

    def destroy?
      record.user == user
    end

  end

