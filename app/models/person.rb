class Person < ActiveRecord::Base
  belongs_to :organization
  has_many :repos

  def build_repos(info)
    repos = info.rels[:repos].get.data

    repos.each do |repo|
      Repo.create(person_id: self.id,
                  name: repo[:name],
                  description: repo[:description],
                  language: repo[:language],
                  url: repo[:url])
    end
  end
end
