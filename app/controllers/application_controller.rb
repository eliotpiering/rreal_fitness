class ApplicationController < ActionController::Base
  def home; end

  def services; end

  def services_alt; end

  def about; end

  def free_eval; end

  def free_eval_signup
    parameters = params.permit(:name, :age, :email, :phone, :fitness_goals, :past_injuries, :date1, :date2, :how_did_you_hear_about_us)
    puts "PARAMS ARE #{parameters}"

    # ContactMailer.free_eval(parameters).deliver_now
    flash[:notice] = "Thanks for signing up for a free eval. We'll get back to you soon!"
    redirect_to root_path
  end
end
