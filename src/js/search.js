jQuery.fn.highlightPattern = function (patt, className) {
    // patt is a space separated list of strings - we want to highlight
    // an occurrence of any of these strings as a separate word.
    var regex = new RegExp('\\b(' + patt.replace(/ /, '|') + ')\\b', 'gi'),
        span = '<span class=\'' + className + '\'>' + '$1' + '</span>';
    return this.each(function () {
        if (this.getAttribute('highlighted') == 'true') return;
        this.innerHTML = this.innerHTML.replace(regex, span);
        this.setAttribute('highlighted', 'true');
    });
};
function toggleMatches(obj) {
    var obj = $(this);
    var pattern = $('#pattern').text();
    var matches = obj.next('.matches');
    matches.slideToggle(300);
    matches.highlightPattern(pattern, 'highlighted');
    if (obj.html() == '[show matches]') {
        obj.html('[hide matches]');
    } else {
        obj.html('[show matches]');
    };
}
$(function() {
    $('a.showmatch').on('click', toggleMatches);
    $('pre.matches').hide();
    $('a.showmatch').show();
});
