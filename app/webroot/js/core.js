
$(document).ready(function() {
    $('#datepicker-example7-start').Zebra_DatePicker({
        //direction: true,
        always_visible: $('#container_start'),
        pair: $('#datepicker-example7-end')
    });

    $('#datepicker-example7-end').Zebra_DatePicker({
        direction: 1,
        always_visible: $('#container1')

    });
});
