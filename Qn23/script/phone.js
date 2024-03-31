$(document).ready(function() {
    $('.authInput').keyup(function (e) {
        if (this.value.length === this.maxLength) {
            let next = $(this).data('next');
            $('#n' + next).focus();
        }
    });
});


$(function() {
    $("#datepicker").datepicker({
        dateFormat: "yy-mm-dd",
        showOn: "button",
        buttonText: "<img src='./assets/calendar.png' alt='Pick a date.' class='calendarIcon'>",
        buttonImageOnly: true, 
        buttonImage: "./assets/calendar.png",
        onSelect: function(dateText, inst) {
            var selectedDate = $(this).datepicker('getDate');
            if (selectedDate != null) {
                var month = selectedDate.getMonth() + 1;
                var day = selectedDate.getDate();
                var year = selectedDate.getFullYear();
                $('.dateInputOne').eq(0).val(month);
                $('.dateInputOne').eq(1).val(day);
                $('.dateInputTwo').val(year);
            }
        }
    });
});

