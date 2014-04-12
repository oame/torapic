class PhotoPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def update?
    if record.user == user
      true
    else
      false
    end
  end

  def destroy?
    if record.user == user
      true
    else
      false
    end
  end
end
