;(function () {

    'use strict';

    var wowAnimation = function() {
        var wow = new WOW(
            {
                animateClass: 'animated',
                offset:       150,
                callback:     function(box) {
                    console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
                }
            }
        );
        wow.init();
    }


    (function($) {
        wowAnimation();
    })(jQuery);


}());