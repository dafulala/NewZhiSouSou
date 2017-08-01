class CreateBusines < ActiveRecord::Migration[5.0]
  def change
    create_table :busines do |t|
               t.string  :information                   #公司信息
               t.integer :informationnum    ##新消息
               t.string  :enterprises                  #关联企业
                t.date  :monitoringtime        #监控时间
                t.date  :updatetimes             #更新时间
                t.integer  :status                       #监控状态      
                    t.integer  :operation                       #操作      



      t.timestamps
    end
  end
end
