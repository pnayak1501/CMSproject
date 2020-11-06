$(document).ready(function(){
$('#selectAllBoxes').ready(function(){
  $('#selectAllBoxes').click(function(event){
        if(this.checked){
            $('.checkBoxes').each(function(){
                
                this.checked = true;
            });       
            
        } else{
        
            $('.checkBoxes').each(function(){
                
                this.checked = false;
            });    
        
        }  
  });
    
});   
    
    //Editor CKEDITOR
ClassicEditor
        .create( document.querySelector( '#body' ) )
        .catch( error => {
            console.error( error );
        } );    
});

