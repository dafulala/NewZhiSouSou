class CreateSocials < ActiveRecord::Migration[5.0]
  def change
    create_table :socials do |t|
      t.string  :Companynames          #公司名称
      t.integer :socialsecuritynumber                     ##，社保单位编号
      t.date  :startingdate                  #投保起始年月
      t.string  :insurancetype                 #，参保类型，
      t.integer  :numberofinsured                  #参保人数，
      t.integer  :monthschange                 #近两个月人数变化
      t.integer  :percentagechange                       #	，人数变化百分比
      t.integer  :iconstatistics                       #	，参保图标统计
      t.timestamps
    end
  end
end
