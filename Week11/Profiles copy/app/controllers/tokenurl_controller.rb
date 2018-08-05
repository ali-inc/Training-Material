class TokenurlController < ApplicationController
  def show
    if Tokenurl.exists?(token: params[:token])
      @token = Tokenurl.find_by(token: params[:token])
      if @token.created_at.to_i <= 30.days.ago.to_i
        redirect_to profiles_url, notice: '*Your Token has expired'
        @token.destroy
      else
        @profile = Profile.find(@token.profile_id)
        render :pdf => "#{@profile.name} Profile", :template => "tokenurl/show.html.erb", layout: 'pdf'
      end
    else
      redirect_to profiles_url, notice: "*Token doesn't exist"
    end
  end
end
