class Repo < ActiveRecord::Base
  belongs_to :people
  has_many :commits
end
