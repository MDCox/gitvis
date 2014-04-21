class Commit < ActiveRecord::Base
  belongs_to :person
  belongs_to :repo

end
