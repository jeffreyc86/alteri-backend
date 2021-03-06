class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :full_name, :photo_url, :join_date, :memberships

  def memberships
    self.object.memberships.map{ |membership| MembershipSerializer.new(membership) }
  end
  
end
