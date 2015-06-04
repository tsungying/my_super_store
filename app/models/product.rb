class Product < ActiveRecord::Base
  validates :name, presence: true

  default_scope { where(is_deleted: false) }

  def destroy
    self.is_deleted = true
    save
  end
end
