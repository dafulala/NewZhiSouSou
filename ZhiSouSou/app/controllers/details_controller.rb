class DetailsController < ApplicationController
  def index


    require 'uri'
    require 'json'
    require "open-uri"
    require 'net/http'

     @companyName  =  params[:companyName]
  
    final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=基本信息')
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @base_infomations = JSON.parse(@response.body)
    ##基本工商信息 ##基本工商信息 ##基本工商信息
    @business_informations = @base_infomations["baseInformation"]
   ##主要人员
    @key_person = @base_infomations["KeyPerson"]
   ##股东
   @holders =  @base_infomations["holders"]
   ##工商变更
   @change=  @base_infomations["change"]
    @change = Kaminari.paginate_array(@change).page(params[:page]  ).per(3)
      ##对外投资
   @invested =  @base_infomations["invested"]
   @invested = Kaminari.paginate_array(@invested).page(params[:page]  ).per(6)




  
    ##信用数据
 final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=信用')
uri = URI.parse(final_url)
@response = Net::HTTP.get_response(uri)
@obj = JSON.parse(@response.body)
if  @obj.blank?
@w = @obj['SZ_Credit']['JSXX']['企业工伤事故发生信息']
@first_data = Kaminari.paginate_array(@w).page(params[:page]).per(6)
end





##招标##招标##招标##招标
  final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=招标')
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @coping_information= JSON.parse(@response.body)

    #招标公告

@bid_announcement=@coping_information["bid_notice"]
   @bid_announcement = Kaminari.paginate_array( @bid_announcement).page(params[:page] ).per(5)


#评标结果公shi

 @bid_evaluate=@coping_information["bid_evaluate"]
 @bid_evaluate = Kaminari.paginate_array( @bid_evaluate).page(params[:page]).per(3)

 ##招标变更
@bid_change=@coping_information["bid_change"]
@bid_change = Kaminari.paginate_array( @bid_change).page(params[:page]  ).per(5)

 ##中标结果

    @bid_result=@coping_information["bid_result"]
   @bid_result = Kaminari.paginate_array( @bid_result).page(params[:page]  ).per(5)



 ##招聘 ##招聘 ##招聘 ##招聘
      



    final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=招聘')
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @recruitment = JSON.parse(@response.body)
 @recruitmentInformation=@recruitment["information"]
@recruitmentInformation = Kaminari.paginate_array(@recruitmentInformation).page(params[:page]  ).per(5)





 #法律#法律#法律
  final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=法律')
  
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @relatedi_information = JSON.parse(@response.body)

     #诉讼公告
     @related = @relatedi_information["relatediInformation"]["related_Legal_Source"]
      @related = Kaminari.paginate_array(@related).page(params[:page]).per(5)

     #裁判文书
      @referee = @relatedi_information["relatediInformation"]["related_Law_Judgement"]
      @referee  = Kaminari.paginate_array(@referee).page(params[:page]).per(5)

     #被执行人
    @debtor = @relatedi_information["relatediInformation"]["related_Law_Debtor"]
    @debtor  = Kaminari.paginate_array(@debtor).page(params[:page]).per(1)
   
 

#法律失信人
  


    #失信人
    @dishonest = @relatedi_information["relatediInformation"]["related_Law_Dishonest"]
    @dishonest  = Kaminari.paginate_array(@dishonest).page(params[:page]).per(1)











    respond_to  do | format |
    if params[:type]=="bid"
           format.js{render :file => '/details/idex.js.erb'}
         end
             if params[:type]=="invested"
           format.js{render :file => '/details/invested.js.erb'}
         end
    if params[:type] == "bussiness_change"
        format.js {render :file => '/details/bussiness_change.js.erb'}
      end

      if params[:type]=="recruitmentInformation"
        format.js {render :file => '/details/recruitmentInformation.js.erb'}
      end

      if params[:type]=="bidedResult"
        format.js {render :file => '/details/bided_result.js.erb'}
      end
        if params[:type]=="bid_change"
        format.js {render :file => '/details/bid_change.js.erb'}
      end

       if params[:bid_result]
        format.js {render :file => '/details/bid_result.js.erb'}
      end

        if params[:type]=="bid_evaluate"
        format.js {render :file => '/details/bid_evaluate.js.erb'}
      end
  if params[:type]=="source"
        format.js {render :file => '/details/relate.js.erb'}                  
       end
      if params[:type]=="refereedcm"
        format.js {render :file => '/details/referee.js.erb'}
      end
      if params[:type]=="debtorpl"
        format.js {render :file => '/details/debtorp.js.erb'}
      end
       if params[:type]=="dishonestd"
        format.js {render :file => '/details/dishonestjs.js.erb'}
      end


  if params[:type]=="bid_announcement"
        format.js {render :file => '/details/bid_announcement.js.erb'}
      end
      format.html
    end
  end
end
