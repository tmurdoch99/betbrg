class UserDetailsController < ApplicationController
 before_filter :sidebar
  
   
  def sidebar
    @profile_complete = current_user.user_details(:photo).nil?
  
 end
 
  
  # GET /user_details
  # GET /user_details.json
  def index
   
   @search = UserDetail.search(params[:q])
   @user_details = @search.result
   
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_details }
    end
  end

  # GET /user_details/1
  # GET /user_details/1.json
  def show
    
	@user_detail = UserDetail.find(params[:id])
    @user_detail.user = current_user
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_detail }
    end
	end
 

  # GET /user_details/new
  # GET /user_details/new.json
  def new
    @user_detail = UserDetail.new
    @user_detail.user = current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_detail }
    end
  end

  # GET /user_details/1/edit
  def edit
    @user_detail = UserDetail.find(params[:id])
  end

  # POST /user_details
  # POST /user_details.json
  def create
    @user_detail = UserDetail.new(params[:user_detail])
    @user_detail.user = current_user
	
    respond_to do |format|
      if @user_detail.save
        format.html { redirect_to @user_detail, notice: 'User Profile was successfully created.' }
        format.json { render json: @user_detail, status: :created, location: @user_detail }
      else
        format.html { render action: "new", notice: 'User profile was unsuccessfully created.'}
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_details/1
  # PUT /user_details/1.json
  def update
    @user_detail = UserDetail.find(params[:id])

    respond_to do |format|
      if @user_detail.update_attributes(params[:user_detail])
        format.html { redirect_to action: "profile", notice: 'User detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_details/1
  # DELETE /user_details/1.json
  def destroy
    @user_detail = UserDetail.find(params[:id])
    @user_detail.destroy

    respond_to do |format|
      format.html { redirect_to user_details_url }
      format.json { head :no_content }
    end
  end
  
  # GET /user_details/1
  # GET /user_details/1.json
  def profile
    @user = UserDetail.find(params[:id])
    @user_detail = UserDetail.find(params[:id])
    @user_detail.user = current_user
	
    respond_to do |format|
      format.html # profile.html.erb
      format.json { render json: @user_detail }
    end
  end
  
  def view_profile
    @user_detail = UserDetail.find(params[:id])
    
	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_detail }
    end
  end
  
  def age

dob = read_attribute(:birthdate)
now = Time.now.utc.to_date
now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)

end 
  
end
