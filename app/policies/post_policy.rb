class PostPolicy < ApplicationPolicy
  def update?
    record.user_id == user.id || user.try(:type) == "AdminUser"
  end
end
