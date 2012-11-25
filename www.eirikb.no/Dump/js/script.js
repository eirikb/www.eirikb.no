$(function() {
    window.prettyPrint && prettyPrint();

    // .txt because of SharePoint Onlines issues with content type and .json
    $.getJSON('dump/js/ponies.txt', function(ponies) {
        var $selects, $single, $multi;

        $selects = $('select');
        $single = $selects.eq(0);
        $multi = $selects.eq(1);
        $.each(ponies, function(i, pony) {
            var option = '<option>' + pony;
            $single.append(option);
            $multi.append(option);
        });
        $selects.select2();
    });
});