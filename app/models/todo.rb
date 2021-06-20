class Todo < ApplicationRecord
  belongs_to :user

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end
end
