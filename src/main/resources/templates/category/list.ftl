<html>
    <#include "../common/header.ftl">

    <body>
        <div id="wrapper" class="toggled">
            <#--边栏-->
            <#include "../common/nav.ftl">
            <#--主要内容content-->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row clearfix">

                        <#--数据显示-->
                        <div class="col-md-12 column">
                            <table class="table table-bordered  table-condensed" data-limit-navigation="5">
                                <thead>
                                <tr>
                                    <th>类目id</th>
                                    <th>名字</th>
                                    <th>类型</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                    <th colspan="2">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list productCategoryList as category>
                                    <tr>
                                        <td>${category.categoryId}</td>
                                        <td>${category.categoryName}</td>
                                        <td>${category.categoryType}</td>
                                        <td>${category.createTime}</td>
                                        <td>${category.updateTime}</td>
                                        <td><a href="/sell/seller/category/index?categoryId=${category.categoryId}">修改</a></td>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>