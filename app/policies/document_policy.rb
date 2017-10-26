class DocumentPolicy < ApplicationPolicy
  def show?
    # If user's company matches document's company
    user.company == record.company
  end
end