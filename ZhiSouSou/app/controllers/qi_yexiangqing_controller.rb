class QiYexiangqingController < ApplicationController
  def index


    require 'uri'
    require 'json'
    require "open-uri"
    require 'net/http'
    final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName=华为技术有限公司&type=招标')
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @obj = JSON.parse(@response.body)
    #@ZhaoBiao_time
    @ZhaoBiao_time =Kaminari.paginate_array(@obj["bid_notice"]).page(params[:ZhaoBiao_time]).per(5)

    #ZhaoBiao_PinGu
    @bid_evaluate =Kaminari.paginate_array(@obj["bid_evaluate"]).page(params[:bid_evaluate]).per(5)




    respond_to  do | format |
      if params[:ZhaoBiao_time]
        format.js {render :file => '/qi_yexiangqing/index.js.erb'}
      end
      if params[:bid_evaluate]
        format.js {render :file => '/qi_yexiangqing/bid_evaluate.js.erb'}
      end
      format.html
    end




  end



end
