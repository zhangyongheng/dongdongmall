<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html >
<html>
<head>

    <title>咚咚商城-add</title>
    <link href="/res/css/admin.css" rel="stylesheet"/>
    <link href="/res/common/css/theme.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.validate.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.treeview.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.ui.css" rel="stylesheet"/>

    <script type="text/javascript" src="/res/fckeditor/fckeditor.js"></script>
    <script src="/res/common/js/jquery.js" type="text/javascript"></script>
    <script src="/res/common/js/jquery.ext.js" type="text/javascript"></script>
    <script src="/res/common/js/jquery.form.js" type="text/javascript"></script>
    <script src="/res/common/js/yongheng.js" type="text/javascript"></script>
    <script src="/res/js/admin.js" type="text/javascript"></script>

    <link rel="stylesheet" href="/res/css/style.css"/>
    <style type="">
        .h2_ch a:hover, .h2_ch a.here {
            color: #FFF;
            font-weight: bold;
            background-position: 0px -32px;
        }

        .h2_ch a {
            float: left;
            height: 32px;
            margin-right: -1px;
            padding: 0px 16px;
            line-height: 32px;
            font-size: 14px;
            font-weight: normal;
            border: 1px solid #C5C5C5;
            background: url('/res/img/admin/bg_ch.gif') repeat-x scroll 0% 0% transparent;
        }

        a {
            color: #06C;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="box-positon">
    <div class="rpos">当前位置: 商品管理 - 添加</div>
    <form class="ropt">
        <input type="submit" onclick="this.form.action='v_list.do';" value="返回列表" class="return-button"/>
    </form>
    <div class="clear"></div>
</div>
<h2 class="h2_ch"><span id="tabs">
<a href="javascript:void(0);" ref="#tab_1" title="基本信息" class="here">基本信息</a>
<a href="javascript:void(0);" ref="#tab_2" title="商品描述" class="nor">商品描述</a>
<a href="javascript:void(3);" ref="#tab_3" title="商品参数" class="nor">包装清单</a>
</span></h2>
<div class="body-box" style="float:right">
    <form id="jvForm" action="add.do" method="post" enctype="multipart/form-data">
        <table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
            <tbody id="tab_1">
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    <span class="pn-frequired">*</span>
                    商品类型:
                </td>
                <td width="80%" class="pn-fcontent">
                    <select name="typeId">
                        <option value="">请选择</option>
                        <c:forEach var="type" items="${typeList}">
                            <option value="${type.id}">${type.name}</option>
                        </c:forEach>

                    </select>
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    <span class="pn-frequired">*</span>
                    商品名称:
                </td>
                <td width="80%" class="pn-fcontent">
                    <input type="text" class="required" name="name" maxlength="100" size="100"/>
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    商品品牌:
                </td>
                <td width="80%" class="pn-fcontent">
                    <select name="brandId">
                        <option value="">请选择品牌</option>
                        <c:forEach items="${brandList}" var="brand">
                            <option value="${brand.id}">${brand.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    商品毛重:
                </td>
                <td width="80%" class="pn-fcontent">
                    <input type="text" value="0.6" class="required" name="weight" maxlength="10"/>KG
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    材质:
                </td>
                <td width="80%" class="pn-fcontent">
                    <c:forEach var="feature" items="${featureList}">
                        <input type="checkbox" value="${feature.id}" name="feature"/>${feature.name}
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    <span class="pn-frequired">*</span>
                    颜色:
                </td>
                <td width="80%" class="pn-fcontent">
                    <c:forEach var="color" items="${colorList}">
                        <input type="checkbox" value="${color.id}" name="color"/>${color.name}
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    <span class="pn-frequired">*</span>
                    尺码:
                </td>
                <td width="80%" class="pn-fcontent">
                    <input type="checkbox" name="size" value="S"/>S
                    <input type="checkbox" name="size" value="M"/>M
                    <input type="checkbox" name="size" value="L"/>L
                    <input type="checkbox" name="size" value="XL"/>XL
                    <input type="checkbox" name="size" value="XXL"/>XXL
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    状态:
                </td>
                <td width="80%" class="pn-fcontent">
                    <input type="checkbox" name="isNew" value="1"/>新品
                    <input type="checkbox" name="isCommend" value="1"/>推荐
                    <input type="checkbox" name="isHot" value="1"/>热卖
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h">
                    <span class="pn-frequired">*</span>
                    上传商品图片(90x150尺寸):
                </td>
                <td width="80%" class="pn-fcontent">
                    注:该尺寸图片必须为90x150。
                </td>
            </tr>
            <tr>
                <td width="20%" class="pn-flabel pn-flabel-h"></td>
                <td width="80%" class="pn-fcontent">
                    <img width="100" height="100" id="product_url"/>
                    <input type="hidden" name="picPath" id="product_path"/>
                    <input type="file" onchange="uploadPic()" name="pic"/>
                </td>
            </tr>
            </tbody>
            <tbody id="tab_2" style="display: none">
            <tr>
                <td>
                    <textarea rows="10" cols="10" id="productdesc" name="description"></textarea>
                </td>
            </tr>
            </tbody>
            <tbody id="tab_3" style="display: none">
            <tr>
                <td>
                    <textarea rows="15" cols="136" id="productList" name="packageList"></textarea>
                </td>
            </tr>
            </tbody>
            <tbody>
            <tr>
                <td class="pn-fbutton" colspan="2">
                    <input type="submit" class="submit" value="提交"/> &nbsp;
                    <input type="reset" class="reset" value="重置"/>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

<script type="text/javascript">
    $(function () {
        var tObj;
        $("#tabs a").each(function () {
            if ($(this).attr("class").indexOf("here") == 0) {
                tObj = $(this)
            }
            $(this).click(function () {
                var c = $(this).attr("class");
                if (c.indexOf("here") == 0) {
                    return;
                }
                var ref = $(this).attr("ref");
                var ref_t = tObj.attr("ref");
                tObj.attr("class", "nor");
                $(this).attr("class", "here");
                $(ref_t).hide();
                $(ref).show();
                tObj = $(this);
                if (ref == '#tab_2') {
                    var fck = new FCKeditor("productdesc");
                    fck.BasePath = "/res/fckeditor/";
                    fck.Height = 400;
                    fck.ReplaceTextarea();
                }
            });
        });
    });
</script>

</body>
</html>