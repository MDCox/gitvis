class Person < ActiveRecord::Base
  belongs_to :organization
  has_many :repos
  has_many :commits

  def build_repos(info)
    repos = info.rels[:repos].get.data

    repos.each do |repo|
      new_repo = Repo.create(person_id: self.id,
                             name: repo[:name],
                             description: repo[:description],
                             language: repo[:language],
                             url: repo[:url],
                             full_name: repo[:full_name])
      new_repo.build_commits
    end
  end
end
