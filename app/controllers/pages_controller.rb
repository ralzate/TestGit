class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]

  





  def home
  	@patients = Patient.search(params[:search]).page(params[:page]).per_page(4)
  	

  end

  def contact
  end

  def help
  end

  
end
