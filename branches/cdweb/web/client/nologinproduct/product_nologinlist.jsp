<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>商品</title>
        <link href="../css/blue/product.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <%@ include file="../top_nologin.jsp" %>
        <div class="position">
            <ul>
                <li>当前位置:</li>
                <li><a href="#">商品</a></li>
                <li><a href="#">工业用纸</a></li>
                <li><a href="#">铜版纸</a></li>
            </ul>
        </div>
        <div class="blank23"></div>

        <div class="main_content">

            <div class="product_left">
                <div class="nav_title">产品目录</div>
                <div class="nav_class">
                    <ul>
                        <li><a href="#" class="hot">-&gt; 金东铜版纸 </a></li>
                        <li><a href="#" >-&gt; 宁波铜版纸</a></li>
                        <li><a href="#"> -&gt; 金华盛铜版纸</a></li>
                        <li><a href="#">-&gt; 太阳铜版纸</a></li>
                        <li><a href="#">-&gt; 大宇铜版纸</a></li>
                        <li><a href="#">-&gt; 泉林铜版纸</a></li>
                        <li><a href="#">-&gt; 紫兴铜版纸</a></li>
                        <li><a href="#">-&gt; 晨鸣铜版纸</a></li>
                        <li><a href="#">-&gt; 翰森铜版纸</a></li>
                        <li><a href="#">-&gt; 日本制纸铜版纸</a></li>
                        <li><a href="#">-&gt; 威凯瑞铜版纸</a></li>
                        <li><a href="#">-&gt; 废纸和原料</a></li>
                        <li><a href="#">-&gt; 恒联铜版纸</a></li>
                        <li><a href="#">-&gt; 秋雨铜版纸</a></li>
                        <li><a href="#">-&gt; 博汇铜版纸</a></li>
                        <li><a href="#">-&gt; 秋雨铜版纸</a></li>
                        <li><a href="#">-&gt; 华泰铜版纸</a></li>
                        <li><a href="#">-&gt; 龙丰铜版纸</a></li>
                        <li><a href="#">-&gt; 其他铜版纸</a></li>
                    </ul>
                </div>
                <div class="blank23"></div>
                <div class="nav_title">品牌</div>
                <div class="nav_class"><a href="../products/product3.jsp">长鹤</a> <a href="../products/product3.jsp">大宇</a> 泉林 神盾 彩蝶 金球 太空梭 白云   太阳 江鹰 金贝 金鸥 海龙 雄丰 宏益 华远 亚洲酋长 宁波之星 光芒</div>
                <div class="blank23"></div>

                <div class="nav_title">品名</div>
                <div class="nav_class"><a href="../products/product2.jsp">双面铜版纸</a> <a href="../products/product2.jsp">单面铜版纸</a></div>
                <div class="blank23"></div>

                <div class="nav_title">规格</div>
                <div class="nav_class">
                    <input type="text" size="16"  />
                    <input type="submit" name="Submit3" value=" 更 新 " />
                </div>
            </div>
            <!--右边产品列表-->
            <div class="product_right">
                <div class="product_nav">排列方式：<a href="../nologinproduct/product_nologinlist.jsp"><img alt="img" src="../images/list_01.gif" width="46" height="16" border="0" /></a><a href="../nologinproduct/product_nologin1.jsp"><img alt="img" src="../images/list_02.gif" width="47" height="16" border="0" /></a></div>
                <div class="blank23"></div>

                <div class="product_list">
                    <!--begin 第一列-->
                    <table width="100%" border="0" align="center" cellspacing="1"  class="common_table">
                        <tr	class="common_title">
                            <td >品名</td>
                            <td >品牌</td>
                            <td >规格</td>
                            <td >克重</td>
                            <td >等级</td>
                            <td >件重</td>
                            <td >销售价格</td>
                            <td >库存(吨)</td>
                            <td >会员价格</td>
                            <td >单位</td>
                            <td width="100" >选购</td>
                        </tr>
                        <tr	class="common_value">
                            <td rowspan="2"  >双面铜版纸</td>
                            <td rowspan="2"  >长鹤</td>
                            <td rowspan="2"  >889*1194</td>
                            <td rowspan="2"  >210</td>
                            <td rowspan="2"  >A</td>
                            <td rowspan="2"  >0.01</td>
                            <td rowspan="2"  >5,000.00</td>
                            <td rowspan="2"  >4500.00</td>
                            <td  >5000.00</td>
                            <td  >件</td>
                            <td rowspan="2"  ><a href="#" onclick="window.location.href='../order/car_list.jsp'">选购</a> 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >4500.00</td>
                            <td  >吨</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >&nbsp;</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                    </table>
                </div>
                <!--end -->
                <div class="blank23"></div>
                <!--空23行-->
                <!--分页开始-->

                <div class="pro_page" >
                    <a href="#">首页</a> <a href="#">上一个</a> <a href="#">下一个</a> <a href="#">尾页</a>
                </div>
                <!--分页结束-->
                <!--begin-->
                <div class="product_nav">最近浏览&nbsp;&gt;</div>
                <div class="blank23"></div>

                <div class="product_list">
                    <table width="100%" border="0" align="center" cellspacing="1"  class="common_table">
                        <tr class="common_title">
                            <td >品名</td>
                            <td >品牌</td>
                            <td >规格</td>
                            <td >克重</td>
                            <td >等级</td>
                            <td >件重</td>
                            <td >销售价格</td>
                            <td >库存(吨)</td>
                            <td >会员价格</td>
                            <td >单位</td>
                            <td width="100" >选购</td>
                        </tr>
                        <tr	class="common_value">
                            <td rowspan="2"  >双面铜版纸</td>
                            <td rowspan="2"  >长鹤</td>
                            <td rowspan="2"  >889*1194</td>
                            <td rowspan="2"  >210</td>
                            <td rowspan="2"  >A</td>
                            <td rowspan="2"  >0.01</td>
                            <td rowspan="2"  >5,000.00</td>
                            <td rowspan="2"  >4500.00</td>
                            <td  >5000.00</td>
                            <td  >件</td>
                            <td rowspan="2"  ><a href="#" onclick="window.location.href='../order/car_list.jsp'">选购</a> 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >4500.00</td>
                            <td  >吨</td>
                        </tr>
                        <tr	class="common_value2">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >100</td>
                            <td  >A</td>
                            <td  >0.02</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                        <tr	class="common_value">
                            <td  >双面铜版纸</td>
                            <td  >长鹤</td>
                            <td  >889*1194</td>
                            <td  >210</td>
                            <td  >A</td>
                            <td  >0.01</td>
                            <td  >5,000.00</td>
                            <td  >4500.00</td>
                            <td  >5000</td>
                            <td  >件</td>
                            <td  >选购 收藏</td>
                        </tr>
                    </table>
                </div>
                <!--end-->
            </div>
        </div>
        <!--空23px--->
        <div class="blank23"></div>
        <table width="947" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#cccccc"  class="help_table ">
            <tr>
                <td width="20%" align="center" bgcolor="#efefef" class="help_title">新手上路</td>
                <td width="20%" align="center" bgcolor="#efefef" class="help_title">会员中心</td>
                <td width="20%" align="center" bgcolor="#efefef" class="help_title">如何付款</td>
                <td width="20%" align="center" bgcolor="#efefef" class="help_title">如何送货</td>
                <td width="20%" align="center" bgcolor="#efefef" class="help_title">售后服务</td>
            </tr>
            <tr>
                <td valign="top" class="help_value "><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td width="116" class="help_value ">购物演示</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">新会员注册</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">搜索商品</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">会员制</td>
                        </tr>
                    </table></td>
                <td class="help_value "><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td width="115" class="help_value ">账户信息</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">忘记密码</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">我的积分</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">推荐好友</td>
                        </tr>
                    </table></td>
                <td valign="top" class="help_value "><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td width="116" class="help_value ">付款方式</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">货到付款</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">邮局汇款</td>
                        </tr>
                    </table></td>
                <td valign="top" class="help_value "><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td width="115" class="help_value ">送货方式</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">直送城市</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">订单查询</td>
                        </tr>
                    </table></td>
                <td valign="top" class="help_value "><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td width="115" class="help_value ">退货/换货 </td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">缺货登记</td>
                        </tr>
                        <tr>
                            <td width="60" align="right" class="padding5"><img alt="img" src="../images/icon.gif" width="3" height="5" /></td>
                            <td class="help_value ">联系我们</td>
                        </tr>
                    </table></td>
            </tr>
        </table>
        <!--间隔-->
        <%@ include file="../foot.jsp" %>
    </body>
</html>
