class SocialsController < ApplicationController
  def index
    @socials=Social.all

    @socials = Kaminari.paginate_array( @socials).page(params[:page]  ).per(10)



    respond_to  do | format |
      if params[:type] == " socials"
        format.js {render :file => '/ socials/ socials.js.erb'}
      end
      format.html
    end

  end


end
