/*! jQuery Validation Plugin - v1.13.1 - 10/14/2014
 * http://jqueryvalidation.org/
 * Copyright (c) 2014 Jörn Zaefferer; Licensed MIT */
! function (a) {
    "function" == typeof define && define.amd ? define(["jquery", "jquery.validate.min"], a) : a(jQuery)
}(function (a) {
    var icon = "<i class='fa fa-times-circle'></i>  ";
    a.extend(a.validator.messages, {
        required: icon + "不能为空！",
        remote: icon + "请修正此栏位",
        email: icon + "请输入有效的电子邮件",
        url: icon + "请输入有效的网址",
        date: icon + "请输入合法的日期",
        dateISO: icon + "请输入合法的日期 (YYYY-MM-DD)",
        number: icon + "请输入合法的数字",
        digits: icon + "只能输入整数",
        creditcard: icon + "请输入有效的信用卡号码",
        equalTo: icon + "请再次输入相同的值",
        extension: icon + "请输入有效的后缀",
        maxlength: a.validator.format(icon + "最多 {0} 个字"),
        minlength: a.validator.format(icon + "最少 {0} 个字"),
        rangelength: a.validator.format(icon + "请输入长度为 {0} 至 {1} 之间的字串"),
        range: a.validator.format(icon + "请输入 {0} 至 {1} 之间的数值"),
        max: a.validator.format(icon + "请输入不大于 {0} 的数值"),
        min: a.validator.format(icon + "请输入不小于 {0} 的数值"),
        mobile: icon + "请输入正确格式的手机号码"
    })
});