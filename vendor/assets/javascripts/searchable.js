$(function () {
    $( '#table' ).searchable({

        striped: false,
        oddRow: { 'background-color': 'green' },
        evenRow: { 'background-color': 'black' },
        searchType: 'fuzzy'
    });
    
    $( '#searchable-container' ).searchable({
        searchField: '#container-search',
        selector: '.row',
        childSelector: '.col-xs-4',
        show: function( elem ) {
            elem.slideDown(100);
        },
        hide: function( elem ) {
            elem.slideUp( 100 );
        }
    })
});