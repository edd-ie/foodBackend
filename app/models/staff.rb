class Staff < ApplicationRecord
    has_secure_password
    has_many :order_tracks
  
    # Validations
    validates :name, presence: true
    validates :restaurant_id, presence: true
    validates :email, presence: true, uniqueness: true
  
    # Check if staff has an assigned duty
    def active?
      order_tracks.exists?
    end
  

  
    def self.all_staff
      all
    end
  
    def self.find_staff_by_id(id)
      find_by(id: id)
    end
  
    def self.assign_job(staff_id, new_job)
      staff = find_by(id: staff_id)
      return unless staff
  
      staff.update(job: new_job)
    end
  
    def self.delete_staff(staff_id)
      staff = find_by(id: staff_id)
      staff&.destroy
    end
  
    def update_name(new_name)
      update(name: new_name)
    end
  end
  