class WelcomeController < ApplicationController
  def index
  	@projects = Project.all
  	@open_activities = Activity.where(finished: false).count
  	@finished_activities = Activity.where(finished: true).count
  	@activities_total = Activity.count
  end
end
