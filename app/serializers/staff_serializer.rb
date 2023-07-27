class StaffSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :email, :title, :restaurant_id, :active


  def active
    object.active?
  end
  
end
