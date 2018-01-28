class WorkoutsController < ApplicationController

  before_action :check_if_logged_in, only: [:create, :update]

  def new
    # @workout = Workout.new
  end

# Activity.activity_types.keys.each
  def create
    # workout = Workout.create user: @current_user
    # workout.activities.create activity_type: params[:activity_type]
    # raise 'hell'

    # create workout working code ---------------------------
    workout = Workout.new workout_params
    workout.user = @current_user
    if workout.save
      # raise 'h'
      params[:activity].each do |a|
        puts "form: #{ a }"
        activity = Activity.new activity_params(a)
        activity.workout = workout
        activity.save
        p activity
        puts "="*50
        p activity.errors.full_messages
        workout.activities << activity
        p workout.activities.ids
      end
      redirect_to workout
    else
      # error saving
      flash[:errors] = workout.errors.full_messages
      redirect_to new_workout_path
    end
    #------------------------------------------------------

# raise 'hell'
    # workout = @current_user.workouts.create workout_params
    # if workout.persisted?
  end

  def show
    # @workout = Workout.find params[:id]
  end

  def index
    @workouts = Workout.all
  end

  def edit
    @workout = Workout.find params[:id]
    # @workout = Workout.find_by params[:workout_name]
    # if @workout.persisted?
    @activity = Activity.find_by params[:workout_name], [:distance], [:length]

    # end

  end

  def update
    workout = Workout.find params[:id]
    workout.update workout_params
    redirect_to workout

  end

  def destroy
    Workout.destroy params[:id]
    redirect_to workout_path
  end

private
  def workout_params
    params.require(:workout).permit( :workout_name, :date)
  end

  def activity_params(activity)
    # we need to pass in a specific activity from the form for this
    activity.permit(:activity_type, :distance, :length)
  end


end
