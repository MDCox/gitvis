class AnalysisController < ApplicationController
  def show
    @organization = Organization.find(params[:id])
    @people = @organization.people
    @repos = []
    @commits = []

    @people.each do |person|
      person.repos.each do |repo|
        @repos << repo
      end
    end

    @repos.each do |repo|
      repo.commits.each do |commit|
        @commits << commit
      end
    end
  end
end
