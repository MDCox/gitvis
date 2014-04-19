class PeopleController < ApplicationController
  def index
  end

  def create
    info = Octokit.user(person_params[:handle])

    @person = Person.create(person_params)
    @person.update(profile_url: info[:url],
                   avatar_url: info[:avatar_url],
                   name: info[:name],
                   company: info[:company],
                   email: info[:email],
                   location: info[:location],
                   bio: info[:bio])

    redirect_to organization_path(@person.organization)
  end

  def destroy
  end

private

  def person_params
    params.require(:person).permit(:handle, :organization_id)
  end
end
