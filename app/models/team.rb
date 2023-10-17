class Team < ApplicationRecord
  belongs_to :confrence, class_name: "Confrence", foreign_key: "confrence_id"
end
