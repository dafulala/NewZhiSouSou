class MortgagesController < ApplicationController
  def index
    @mortgages=Mortgage.all

    @mortgages = Kaminari.paginate_array(@mortgages).page(params[:page]  ).per(10)



  respond_to  do | format |
    if params[:type] == "mortgages"
      format.js {render :file => '/mortgages/mortgages.js.erb'}
    end
    format.html
  end

end
end