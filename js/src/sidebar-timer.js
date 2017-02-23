function updateSidebarTimer() {
    // yyyy-MM-dd HH:mm:ss
    past  = Date.parse("2011-11-11 00:00:00");
    now     = new Date();
    diff    = now - past;

    years  = Math.floor( diff / (1000*60*60*24*30*12) );
    months = Math.floor( diff / (1000*60*60*24*30) );
    days   = Math.floor( diff / (1000*60*60*24) );
    hours  = Math.floor( diff / (1000*60*60) );
    mins   = Math.floor( diff / (1000*60) );
    secs   = Math.floor( diff / 1000 );

    y = years;
    M = months - years  * 12;
    d = days   - months * 30;
    h = hours  - days   * 24;
    m = mins   - hours  * 60;
    s = secs   - mins   * 60;
    document.getElementsByClassName("sidebar_timer")[0]
      .innerHTML =
        '<div class = "sidebar_since"><span>since&nbsp;&nbsp;:&nbsp;&nbsp;2011 . 11 . 11</span></div><br>'+
        '<div>' + y + '<span>years</span></div>' +
        '<div>' + M + '<span>months</span></div>' +
        '<div>' + d + '<span>days</span></div>' +
        '<div>' + h + '<span>hours</span></div>' +
        '<div>' + m + '<span>minutes</span></div>' +
        '<div>' + s + '<span>seconds</span></div>' ;
}
// console.info(document.getElementsByClassName("sidebar_timer")[0]);
setInterval('updateSidebarTimer()', 1000 );