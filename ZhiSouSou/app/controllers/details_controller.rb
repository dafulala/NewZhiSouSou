class DetailsController < ApplicationController

  def company( companyName, companyType ,fieldName,page  )

    if  !page
      page=1
    end
    @page_size=1
    @start = (page.to_i-1)*@page_size
    @end = page.to_i*@page_size

    if  @companyType.blank? && @fieldName.blank?
      final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+companyName+'&type=&fieldName=&start='+@start.to_s+'&end='+@end.to_s)
    else

      puts companyName
      puts companyType
      puts fieldName


      final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+companyName+'&type='+companyType+'&fieldName='+fieldName+'&start='+@start.to_s+'&end='+@end.to_s)
    end
    uri = URI.parse(final_url)
    @response = Net::HTTP.get_response(uri)
    @infomations = JSON.parse(@response.body)

  end




  def index
    require 'uri'
    require 'json'
    require "open-uri"
    require 'net/http'



     @companyName  =  params[:companyName]
     @companyType  =params[:companyType]
     @fieldName  = params[:fieldName]
     @page  =  params[:page]

    company(  @companyName, @companyType ,@fieldName ,@page  )
    ##总的数量


    if  @companyType.blank? && @fieldName.blank?
      ##工商基本信息
      @business_informations=@infomations["baseInfo"]['baseInformation']

      ##主要人员
      @key_person=@infomations["baseInfo"]['KeyPerson']

      #股东信息
      @holders=@infomations["baseInfo"]['holders']
      @change_size_holders=@infomations["baseInfo"]['change_size']
      @holders = Kaminari.paginate_array( @holders, total_count:@change_size_holders ).page(params[:page]).per(3)

      ##对外投资
      # @invested =  @base_infomations["baseInfo"]["invested"]
      # @change_size_holders=@infomations["baseInfo"]['invested_size']
      # @invested = Kaminari.paginate_array(@invested,total_count:@change_size_holders ).page(params[:page]  ).per(6)

      #经营异常

      @AbnormalOperation=  @infomations["baseInfo"]["AbnormalOperation"]
      @change_size_AbnormalOperation=@infomations["baseInfo"]['AbnormalOperation_size']
 if    @change_size_AbnormalOperation
      @AbnormalOperation= Kaminari.paginate_array(@AbnormalOperation ,total_count:@change_size_AbnormalOperation      ).page(params[:page]  ).per(1)
else

end






      # ###股权出质
      #   @Equity_Pledge_Registration_Information=  @base_infomations["baseInfo"]["Equity_Pledge_Registration_Information"]
      # @change_size_Equity_Pledge_Registration_Information=@infomations["baseInfo"]['Equity_Pledge_Registration_Information_size']
      # @Equity_Pledge_Registration_Information= Kaminari.paginate_array(@change_size_Equity_Pledge_Registration_Information      ).page(params[:page]  ).per(6)

 #招聘



  @recruitmentInformation=@infomations["recruit"]["information"]
  @change_size_recruitmentInformation=@infomations['recruit']['information_size']
 @recruitmentInformation = Kaminari.paginate_array(@recruitmentInformation, total_count: @change_size_recruitmentInformation).page(params[:page]  ).per(5)





      #工商变更
    @change_size=@infomations["baseInfo"]['change_size']
    @change=  @infomations["baseInfo"]["change"]
    @change = Kaminari.paginate_array(@change, total_count:@change_size ).page(params[:page]).per(3)

    #hu

    #评标结果公示

@bid_evaluate=@infomations["bid"]["bid_evaluate"]
  @bid_evaluate_size = @infomations["bid"]["bid_evaluate_size"]
  @bid_evaluate = Kaminari.paginate_array(@bid_evaluate, total_count:@bid_evaluate_size ).page(params[:page]).per(3)
    # @relation_discribe_size= @infomations["bid"]['relation_discribe']
    # @close_enterprise = @infomations["bid"]["relation_discribe"]
    # @close_enterprise = Kaminari.paginate_array( @close_enterprise, total_count:@relation_discribe_size).page(params[:page] ).per(3)

     #招标公告
    @change_sizezb= @infomations["bid"]['bid_notice_size']
    @bid_announcement = @infomations["bid"]["bid_notice"]
    @bid_announcement = Kaminari.paginate_array( @bid_announcement, total_count:@change_sizezb).page(params[:page] ).per(3)

##招标变更
 @bid_change=@infomations["bid"]["bid_change"]
  @bid_change_size = @infomations["bid"]["bid_change_size"]
@bid_change = Kaminari.paginate_array( @bid_change, total_count:@bid_change_size).page(params[:page]  ).per(5)





      #中标结果公告
      @bidding_result_size = @infomations["bid"]["bid_result_size"]
      @bidding_result = @infomations["bid"]["bid_result"]
      @bidding_result = Kaminari.paginate_array( @bidding_result, total_count:@bidding_result_size).page(params[:page] ).per(3)


##法律诉讼
   #诉讼公告
    @related = @infomations["law"]["related_Legal_Source"]
      @related_Legal_Source_size = @infomations["law"]["related_Legal_Source_size"]
     @related = Kaminari.paginate_array(@related, total_count:@related_Legal_Source_size).page(params[:page]).per(5)

    #裁判文书
     @referee = @infomations["law"]["related_Law_Judgement"]
       @related_Law_Judgement_size = @infomations["law"]["related_Law_Judgement_size"]
     @referee  = Kaminari.paginate_array(@referee, total_count:@related_Law_Judgement_size).page(params[:page]).per(5)

    #被执行人
   @debtor = @infomations["law"]["related_Law_Debtor"]
     @related_Law_Debtor_size = @infomations["law"]["related_Law_Debtor_size"]
   @debtor  = Kaminari.paginate_array(@debtor, total_count:@related_Law_Debtor_size).page(params[:page]).per(1)

   #失信人
   @dishonest = @infomations["law"]["related_Law_Dishonest"]
     @related_Law_Dishonest_size = @infomations["law"]["related_Law_Dishonest_size"]
   @dishonest  = Kaminari.paginate_array(@dishonest, total_count:@related_Law_Dishonest_size).page(params[:page]).per(1)
    end

    # puts "nil" if  @bid_announcement == nil







    #  ##基本88工商信息 ##基本工商信息 ##基本工商信息
   #  @business_informations = @base_infomations["baseInformation"]
   # ##主要人员
   #  @key_person = @base_infomations["KeyPerson"]
   # ##股东
   # @holders =  @base_infomations["holders"]
   #    @holders = Kaminari.paginate_array(@holders).page(params[:page]  ).per(6)



    # ##工商变更

#
#
#
#       ##对外投资
#    @invested =  @base_infomations["invested"]
#    @invested = Kaminari.paginate_array(@invested).page(params[:page]  ).per(6)
# ##经营异常
#
#   @AbnormalOperation=  @base_infomations["another"]["AbnormalOperation"]
#
#    @AbnormalOperation= Kaminari.paginate_array(@AbnormalOperation      ).page(params[:page]  ).per(6)
#

#
#
#
#
    ##信用数据
 final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=信用')
uri = URI.parse(final_url)
@response = Net::HTTP.get_response(uri)
@obj = JSON.parse(@response.body)
if  @obj.blank?
@w = @obj['SZ_Credit']['JSXX']['企业工伤事故发生信息']
@first_data = Kaminari.paginate_array(@w).page(params[:page]).per(6)
end

#
#
#
#
# ##招标##招标##招标##招标
#   final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=招标')
#     uri = URI.parse(final_url)
#     @response = Net::HTTP.get_response(uri)
#     @coping_information= JSON.parse(@response.body)
#
#     #招标公告
#
# @bid_announcement=@coping_information["bid_notice"]
#    @bid_announcement = Kaminari.paginate_array( @bid_announcement).page(params[:page] ).per(5)
#
#
# #评标结果公shi
#
#  @bid_evaluate=@coping_information["bid_evaluate"]
#  @bid_evaluate = Kaminari.paginate_array( @bid_evaluate).page(params[:page]).per(3)
#
#  ##招标变更
# @bid_change=@coping_information["bid_change"]
# @bid_change = Kaminari.paginate_array( @bid_change).page(params[:page]  ).per(5)
#
#  ##中标结果
#
#     @bid_result=@coping_information["bid_result"]
#    @bid_result = Kaminari.paginate_array( @bid_result).page(params[:page]  ).per(5)
#
#
#
#  ##招聘 ##招聘 ##招聘 ##招聘
#
#
#
#
#     final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=招聘')
#     uri = URI.parse(final_url)
#     @response = Net::HTTP.get_response(uri)
#     @recruitment = JSON.parse(@response.body)
#  @recruitmentInformation=@recruitment["information"]
# @recruitmentInformation = Kaminari.paginate_array(@recruitmentInformation).page(params[:page]  ).per(5)
#
#
#
#
#
#  #法律#法律#法律
#   final_url = URI::escape('http://h134:10000/SystemAPI/ReciveRequestServlet?companyName='+@companyName+'&type=法律')
#
#     uri = URI.parse(final_url)
#     @response = Net::HTTP.get_response(uri)
#     @relatedi_information = JSON.parse(@response.body)
#
#      #诉讼公告
#      @related = @relatedi_information["relatediInformation"]["related_Legal_Source"]
#       @related = Kaminari.paginate_array(@related).page(params[:page]).per(5)
#
#      #裁判文书
#       @referee = @relatedi_information["relatediInformation"]["related_Law_Judgement"]
#       @referee  = Kaminari.paginate_array(@referee).page(params[:page]).per(5)
#
#      #被执行人
#     @debtor = @relatedi_information["relatediInformation"]["related_Law_Debtor"]
#     @debtor  = Kaminari.paginate_array(@debtor).page(params[:page]).per(1)
#
#
#
# #法律失信人
#
#
#
#     #失信人
#     @dishonest = @relatedi_information["relatediInformation"]["related_Law_Dishonest"]
#     @dishonest  = Kaminari.paginate_array(@dishonest).page(params[:page]).per(1)
#






    @type = params[:type]


    respond_to  do | format |

      case @type
        when  "bid"
          format.js{render :file => '/details/idex.js.erb'}
        when  "Equity_Pledge_Registration_Information"
          format.js{render :file => '/details/Equity_Pledge_Registration_Information.js.erb'}
        when  "holders"
          format.js{render :file => '/details/holders.js.erb'}
        when  "invested"
          format.js{render :file => '/details/invested.js.erb'}
        when  "bussiness_change"
          format.js{render :file => '/details/bussiness_change.js.erb'}
        when  "recruitmentInformation"
          format.js{render :file => '/details/recruitmentInformation.js.erb'}
        when  "bidding_result"
          format.js{render :file => '/details/bided_result.js.erb'}
        when  "bid_change"
          format.js{render :file => '/details/bid_change.js.erb'}
        when  "bid_result"
          format.js{render :file => '/details/bid_result.js.erb'}
        when  "bid_evaluate"
          format.js{render :file => '/details/bid_evaluate.js.erb'}
        when  "source"
          format.js{render :file => '/details/relate.js.erb'}
        when  "refereedcm"
          format.js{render :file => '/details/referee.js.erb'}
        when  "debtorpl"
          format.js{render :file => '/details/debtorp.js.erb'}
        when  "dishonestd"
          format.js{render :file => '/details/dishonestjs.js.erb'}
        when  "bid_announcement"
          format.js{render :file => '/details/bid_announcement.js.erb'}
      end

  #   if params[:type]=="bid"
  #          format.js{render :file => '/details/idex.js.erb'}
  #        end
  #
  #            if params[:type]=="Equity_Pledge_Registration_Information"
  #          format.js{render :file => '/details/Equity_Pledge_Registration_Information.js.erb'}
  #        end
  #         if params[:type]=="holders"
  #          format.js{render :file => '/details/holders.js.erb'}
  #        end
  #            if params[:type]=="invested"
  #          format.js{render :file => '/details/invested.js.erb'}
  #        end
  #   if params[:type] == "bussiness_change"
  #       format.js {render :file => '/details/bussiness_change.js.erb'}
  #     end
  #
  #     if params[:type]=="recruitmentInformation"
  #       format.js {render :file => '/details/recruitmentInformation.js.erb'}
  #     end
  #     if params[:type]=="bidedResult"
  #       format.js {render :file => '/details/bided_result.js.erb'}
  #     end
  #       if params[:type]=="bid_change"
  #       format.js {render :file => '/details/bid_change.js.erb'}
  #     end
  #      if params[:bid_result]
  #       format.js {render :file => '/details/bid_result.js.erb'}
  #     end
  #       if params[:type]=="bid_evaluate"
  #       format.js {render :file => '/details/bid_evaluate.js.erb'}
  #       end
  # if params[:type]=="source"
  #       format.js {render :file => '/details/relate.js.erb'}
  #      end
  #     if params[:type]=="refereedcm"
  #       format.js {render :file => '/details/referee.js.erb'}
  #     end
  #     if params[:type]=="debtorpl"
  #       format.js {render :file => '/details/debtorp.js.erb'}
  #     end
  #      if params[:type]=="dishonestd"
  #       format.js {render :file => '/details/dishonestjs.js.erb'}
  #     end
  # if params[:type]=="bid_announcement"
  #       format.js {render :file => '/details/bid_announcement.js.erb'}
  # end
  #

      format.html
    end





  end
end
