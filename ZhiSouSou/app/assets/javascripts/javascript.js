$(function (argument) {

$('.li_inp_WJ').click(function () {
    $('.all_inp_li').text($(this).text())

})


    $('.li_all_li_inp').click(function () {
        $('#li_but_all').text($(this).text())

    })



$('.y-xysj-contant-left-part-title').on('click', function(event) {

        $('.y-xysj-contant-left-part > a').css('background', '#fff')
          $('.y-xysj-contant-left-part > a').css('color','#337ab7')
        $(this).css('background','#4285f4')
         $(this).css('color','#fff')


    });
    
         $('.y-form tbody tr td:first-child').on('mouseenter', function(event){
       
     
        $(this).children('.font-table').show();
         });


         $('.y-form tbody tr td:first-child').on('mouseleave', function(event){
       
     
        $(this).children('.font-table').hide();
         });

    //application   导航菜单
// $('.menu').mouseover(function (argument) {
//        $(this).css({   'color':'#F39800',
//                        'background-color':'#F8F8F8'})
// })          .mouseout(function (argument) {
//        $(this).css({  'background-color':'#fff',
//                       'color':'#666666'})
// })         .click(function (argument) {
//         $(this).css({})
//         .off('mouseover mouseout').siblings('.menu').css({'background-color':'#fff',
//                       'color':'#666666'})
//             .mouseover(function (argument) {
//        $(this).css({'background-color':'#0C93E9','color':'#fff'})
// })          .mouseout(function (argument) {
//        $(this).css({'background-color':'#fff','color':'#666666'})
// })})
            var url = window.location.pathname;
            $('.menu').each(function(){
                var hre = $(this).attr('href');
                if(url == hre){
                    $(this).css({   'color':'#F39800',
                       'background-color':'#F8F8F8'})
                    $(this).siblings('.menu').css({'background-color':'#fff',
                     'color':'#666666'})
                }
            }) 





//客户


$('.l_head_right').mouseover(function (argument) {

	   $('.l_head_right').css('background-color','#F1F1F1')
         $('.header_right_display').show()
	  }).mouseout(function (argument) {

	   $('.l_head_right').css('background-color','#fff')
	    $('.header_right_display').hide()

	  })



$('.l_grzl_span').mouseover(function function_name(argument) {
	    $(this).css('background','#F1F1F1')
}).mouseout(function function_name(argument) {
	    $(this).css('background','#fff')
})




//企业监控筛选功能
$('.l_inp_sort ').mouseover(function (argument) {
	   $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#666666'})
})          .click(function (argument) {
	    $(this).css({'background-color':'#0C93E9','color':'#fff'})
	 .off('mouseover mouseout').siblings('input').css({'background-color': '#fff',"color": '#666666'})
	        .mouseover(function (argument) {
	   $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#666666'})
})})
//社保监控筛选
$('.y_btn_inp').mouseover(function (argument) {
	   $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#666666'})
})          .click(function (argument) {
	    $(this).css({'background-color':'#0C93E9','color':'#fff'})
	    .off('mouseover mouseout').siblings('input').css({'background-color': '#fff',"color": '#666666'})
	        .mouseover(function (argument) {
	   $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#666666'})
})})
//抵押监控筛选

$('.c_sx_jq ').mouseover(function (argument) {
       $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
       $(this).css({'background-color':'#fff','color':'#666666'})
})          .click(function (argument) {
        $(this).css({'background-color':'#0C93E9','color':'#fff'})
     .off('mouseover mouseout').siblings('input').css({'background-color': '#fff',"color": '#666666'})
            .mouseover(function (argument) {
       $(this).css({'background-color':'#0C93E9','color':'#fff'})
})          .mouseout(function (argument) {
       $(this).css({'background-color':'#fff','color':'#666666'})
})})

//企业详情页风险概述

$('.l_xq_middle_button_mid_ul_li').mouseover(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#F39800' ,'border-top':'3px solid #F39800'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#F7F7F7','color':'#444444','border-top':'0px solid #F39800'})
})          .click(function (argument) {
	    $(this).css({'background-color':'#fff','color':'#F39800'})
	    .off('mouseover mouseout').siblings('li').css({'background-color': '#F7F7F7','color': '#444444','border-top':'0px solid #F39800'})

.mouseover(function (argument) {
	   $(this).css({'background-color':'#fff','color':'#F39800' ,'border-top':'3px solid #F39800'})
})          .mouseout(function (argument) {
	   $(this).css({'background-color':'#F7F7F7','color':'#444444','border-top':'0px solid #F39800'})
})    
	        })




        // <!--  ++++++风险概述 -->
        //        <!--  ++++++风险概述 -->
        //         <!--  ++++++风险概述 -->  
$('.l_xq_mid_li').mouseover(function(event) {
	 $(this).css({'background-color':'#FF0000',  'color':'#fff'})
}).mouseout(function (argument) {
	  $(this).css({'background-color':'#fff',  'color':'#07171F'})
})   .click(function (argument) {
	$(this).css({'background-color':'#24AAFF','color':'#fff'}).off( 'mouseover mouseout')
	.siblings('li').css({'background-color':'#fff','color':'#07171F'})

   .mouseover(function(event) {
	 $(this).css({'background-color':'#FF0000',  'color':'#fff'})
}).mouseout(function (argument) {
	  $(this).css({'background-color':'#fff',  'color':'#07171F'})
}) 

})






//++++++++++++++++++++
//负面信息图
 var myChart = echarts.init(document.getElementById('l_FengXzb_Fmxi'));
        // 指定图表的配置项和数据
        var option = {
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        x: 'left',
        data: ['40后', '50后', '60后', '1946-1949', '1950-1954', '1955-1959', '1960-1964', '1965-1969']
    },
    series: [{
        name: '访问来源',
        type: 'pie',
        selectedMode: 'single',
        radius: [0, '30%'],

        label: {
            normal: {
                position: 'inner'
            }
        },
        labelLine: {
            normal: {
                show: false
            }
        },
        data: [{
            value: 5,
            name: '40后',
            selected: true
        }, {
            value: 87,
            name: '50后'
        }, {
            value: 29,
            name: '60后'
        }]
    }, {
        name: '访问来源',
        type: 'pie',
        radius: ['40%', '55%'],

        data: [ {
            value: 5,
            name: '1946-1949'
        }, {
            value: 37,
            name: '1950-1954'
        }, {
            value:50,
            name: '1955-1959'
        }, {
            value: 25,
            name: '1960-1964'
        }, {
            value: 4,
            name: '1965-1969'
        }]
    }]
};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);




        //+++++++++++++++++++++++++++++++++++++++++++++++++
//目标公司诉讼信息图
var myChart = echarts.init(document.getElementById('l_FengXzb_ssxxt'));



option = {
    title: {
        text: '对数轴示例',
        left: 'center'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c}'
    },
    legend: {
        left: 'left',
        data: ['2的指数', '3的指数']
    },
    xAxis: {
        type: 'category',
        name: 'x',
        splitLine: {show: false},
        data: ['一', '二', '三', '四', '五', '六', '七', '八', '九']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    yAxis: {
        type: 'log',
        name: 'y'
    },
    series: [
        {
            name: '3的指数',
            type: 'line',
            data: [1, 3, 9, 27, 81, 247, 741, 2223, 6669]
        },
        {
            name: '2的指数',
            type: 'line',
            data: [1, 2, 4, 8, 16, 32, 64, 128, 256]
        },
        {
            name: '1/2的指数',
            type: 'line',
            data: [1/2, 1/4, 1/8, 1/16, 1/32, 1/64, 1/128, 1/256, 1/512]
        }
    ]
};

myChart.setOption(option);

//+++++++++++++++++++++++++++++++++++++++++++++++++
//目标公司被执行人统计图

var myChart = echarts.init(document.getElementById('l_FengXzb_zxrtjt'));

option = {
    tooltip: {
        trigger: 'axis',
        axisPointer: {type: 'cross'}
    },
    toolbox: {
        feature: {
            dataView: {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },
    legend: {
        data:['蒸发量','降水量','平均温度']
    },
    xAxis: [
        {
            type: 'category',
            data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: '水量',
            min: 0,
            max: 250,
            interval: 50,
            axisLabel: {
                formatter: '{value} ml'
            }
        },
        {
            type: 'value',
            name: '温度',
            min: 0,
            max: 25,
            interval: 5,
            axisLabel: {
                formatter: '{value} °C'
            }
        }
    ],
    series: [
        {
            name:'蒸发量',
            type:'bar',
            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
        },
        {
            name:'降水量',
            type:'bar',
            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
        },
        {
            name:'平均温度',
            type:'line',
            yAxisIndex: 1,
            data:[2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
        }
    ]
};

myChart.setOption(option);




//++++++++++++++++++++++++++++++++++++++++
//目标公司诉讼信息图

var myChart = echarts.init(document.getElementById('l_FengXzb_cpwsxxt'));


option = {
    title : {
        text: '某地区蒸发量和降水量',
        subtext: '纯属虚构'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['蒸发量','降水量']
    },
    toolbox: {
        show : true,
        feature : {
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'蒸发量',
            type:'bar',
            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        },
        {
            name:'降水量',
            type:'bar',
            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
            markPoint : {
                data : [
                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name : '平均值'}
                ]
            }
        }
    ]
};



myChart.setOption(option);









//企业详情页+++++++++++++++++++++++++++++++++++++++++++



// $('.l_xq_mid_li_click1').click(function (argument) {
// 	      // $('html,body'). scrollTop(330)
// 	 $('.l_FengXzb').offset().top=5

// // 	      var scrollTop = $(this).offset().top;
// // $(document.body).scrollTop(scrollTop-50);

	
// })


$('.l_xq_mid_li_click1').click(function (argument) {

               $('document,body').animate({scrollTop: '280px'}, 500);

})


$('.l_xq_mid_li_click2').click(function (argument) {

               $('document,body').animate({scrollTop: '580px'}, 500);

})
$('.l_xq_mid_li_click3').click(function (argument) {

               $('document,body').animate({scrollTop: '1450px'}, 500);

})

$('.l_xq_mid_li_click4').click(function (argument) {

               $('document,body').animate({scrollTop: '2550px'}, 500);

})
$('.l_xq_mid_li_click5').click(function (argument) {

               $('document,body').animate({scrollTop: '2550px'}, 500);

})






$(document).ready(function(){ 
	var navHeight= $("#navHeight").offset().top; 
	var navFix=$("#nav_wrap"); 
	$(window).scroll(function(){ 
		if($(this).scrollTop()>navHeight){ 
			navFix.addClass("navFix"); 
		} 
		else{ 
			navFix.removeClass("navFix"); 
		} 
		}) 
	})



$(document).ready(function(){ 
	var navHeight= $("#navHeight_2").offset().top; 
	var navFix=$("#nav_wrap_2"); 
	$(window).scroll(function(){ 
		if($(this).scrollTop()>navHeight){ 
			navFix.addClass("navFix_2"); 
		} 
		else{ 
			navFix.removeClass("navFix_2"); 
		} 
		}) 
	})




//抵押监控筛选功能

    $(function (argument) {
        $('.c_sx_jq,.c_sx_jq_kh').mouseover(function () {
            $(this).css({'background-color': '#0C93E9', 'color': '#fff'})
        })
        $('.c_sx_jq,.c_sx_jq_kh').mouseleave(function () {
            $(this).css({'background-color': '#fff', 'color': '#666'})
        })

        $('.c_sx_jq,.c_sx_jq_kh').click(function () {
            $(this).css({'background-color': '#0C93E9', 'color': '#fff'})
        })

    })



//法律诉讼

    $(function (argument) {
        $('.c_mbgs').click(function () {
            $(".c_mbgs_gs").css({'display':'block'})
        })

    })






$('#l_xq_middle_button_mid_ul_li_id_1').click(function (argument) {
        $('#qiyexiangqing_span_id_1').css('display','block').siblings('.qiyexiangqing_span_display').css('display','none')

})





// 详情页面导航菜单和内容切换
$('#l_xq_middle_button_mid_ul_li_id_1').click(function (argument) {
                $('.qyxq_menu_display_1').css('display','block')
                    $('.qyxq_menu_display_2,.qyxq_menu_display_3,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})

$('#l_xq_middle_button_mid_ul_li_id_2').click(function (argument) {
                $('.qyxq_menu_display_2').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_3').click(function (argument) {
                $('.qyxq_menu_display_3').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_2,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_4').click(function (argument) {
                $('.qyxq_menu_display_4').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_2,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_5').click(function (argument) {
                $('.qyxq_menu_display_5').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_2,.qyxq_menu_display_4,.qyxq_menu_display_6,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_6').click(function (argument) {
                $('.qyxq_menu_display_6').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_2,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_7,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_7').click(function (argument) {
                $('.qyxq_menu_display_7').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_2,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_8').css('display','none')
})
$('#l_xq_middle_button_mid_ul_li_id_8').click(function (argument) {
                $('.qyxq_menu_display_8').css('display','block')
                    $('.qyxq_menu_display_1,.qyxq_menu_display_3,.qyxq_menu_display_2,.qyxq_menu_display_4,.qyxq_menu_display_5,.qyxq_menu_display_6,.qyxq_menu_display_7').css('display','none')
})


























})