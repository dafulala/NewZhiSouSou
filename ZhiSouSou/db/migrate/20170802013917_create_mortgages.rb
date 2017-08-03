class CreateMortgages < ActiveRecord::Migration[5.0]
  def change
    create_table :mortgages do |t|
      t.string  :customerinformation          #客户信息
      t.string :Theholde                     ##权利人
      t.integer  :cardnumber                  #产权证号
      t.string  :mortgagee                 #抵押权人
      t.integer  :Idnumber                  #身份证号
      t.date  :Mortgagetime                 #抵押时间
      t.string  :Propertytype                       #	产权类型
      t.string  :Stateproperty                       #	产权状态
      t.string  :Thetransferprice                       #	过户价
      t.string  :operation                       #	操作
      t.timestamps
    end
  end
end
