$(document).ready(function(){
    // $("p").click(function(){
    //     $(this).hide();
    // });
    $(':button').on('click', function() {
        var data, xhr;

        data = new FormData();
        data.append( 'file', $( '#file' )[0].files[0] );
    
        xhr = new XMLHttpRequest();
    
        xhr.open( 'POST', 'test', true );
        xhr.onreadystatechange = function ( response ) {};
        xhr.send( data );
    
        e.preventDefault();
    });
});