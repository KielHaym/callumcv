class HomeController < ApplicationController
  def index
  end

  def decktracker
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  	@user = User.new(user_params)

  	respond_to do |format|
  		if @user.save
  			format.html { redirect_to_@user, notice: 'User was successfully created.' }
  			format.json { render actionL 'show', status: :created, lcation: @user }
  		else
  			format.html {render action: 'new' }
  			format.json { render json: @user.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def update
  	respond_to do |format|
  		if @user.update(user_params)
  			format.html {redirect_to Users_url, notice: 'User was successfully updated.' }
  			format.json { head :no_content }
  		else
  			format.html {render action: 'edit' }
  			format.json {render json: @user.errors, status: :unprocessable_entity }
  			end
  		end
  	end

end

