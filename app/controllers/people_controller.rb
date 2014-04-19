class PeopleController < ApplicationController
  def index
  end

  def create
    @person = Person.create(person_params)
    redirect_to organization_path(@person.organization)
  end

  def destroy
  end

private

  def person_params
    params.require(:person).permit(:handle, :organization_id)
  end
end
