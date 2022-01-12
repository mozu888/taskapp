class Task < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :date
  end
end
