class Repo < ActiveRecord::Base
  belongs_to :people
  has_many :commits

  def build_commits
    begin
      commits = Octokit.commits(self.full_name)
    rescue Octokit::Error => e
      puts e.message
      commits = []
    end
    commits.each do |commit|
      Commit.create(repo_id: self.id,
                    author: commit[:commit][:author][:name],
                    date: commit[:commit][:author][:date],
                    message: commit[:commit][:message],
                    person_id: self.person_id)
    end
  end
end
