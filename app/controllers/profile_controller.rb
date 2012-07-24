class ProfileController < ApplicationController
  include MongoMapper::EmbeddedDocument
  
  def create   
    @profile = Profile.new(params)
    
    respond_to do |format|
      if @profile.save
        format.html { redirect_to show_profile_path @profile }
        format.json { render :json => @profile, :status => 'created' }
      else
        format.html { redirect_to new_profile_path }
        format.json { render :json => { :errors =>  @profile.errors } }
      end
    end    
  end
  
  def index
    @profile = Profile.find_by_user_id(params[:user_id])
    
    respond_to do |format|
      format.html #
      format.json { render :json => @profile }
    end
  end

  def update
    @profile = Profile.find_by_user_id(params[:user_id])
    
    respond_to do |format|
      
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to index_profile_path }
        format.json { render :json => @profile, :status => 'updated' }
      else
        format.html { redirect_to edit_profile_path @profile }
        format.json { render :json => { :errors => @profile.errors } }
      end
    end    
  end
  
  def delete
    Profile.find_by_user_id(params[:user_id]).destroy
    
    respond_to do |format|
      format.html { redirect_to index_user_path }
      format.json { render :json => {} }
    end
  end
  
end
