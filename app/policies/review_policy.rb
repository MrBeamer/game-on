class ReviewPolicy < ApplicationPolicy
      def create?
      return true
    end

    def show?
      return true
    end

end
