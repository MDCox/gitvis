class Commit < ActiveRecord::Base
  belongs_to :person
  belongs_to :repo

  def build_commits

  end
end
