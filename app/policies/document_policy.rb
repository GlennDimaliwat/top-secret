class DocumentPolicy < ApplicationPolicy
  def show?
    # If user's company matches document's company
    user.company == record.company
  end

  def update?
    # If user's company matches document's company, allow update
    user.company == record.company
  end
end