class BusinessController < ApplicationController
  def index
       @business=Busine.all
       @business = Kaminari.paginate_array(@business).page(params[:page]  ).per(8)















  respond_to  do | format |

    if params[:type] == "business"
      format.js {render :file => '/business/business.js.erb'}
    end


    format.html
  end





  end





end
