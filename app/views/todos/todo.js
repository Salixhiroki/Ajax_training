// <script>

// jQuery(function(){
    
//     function buildHTML(todo){
//       var html = $('<li class="todo">').append(todo.content);
//       return html;
      
//     }
    
    
//     (".form .js-form").on("js-submit", function(e){
//       e.preventDefault();
//       var textField = $(".js-form__text-field");
//       var todo = textField.val();
      
//       $.ajax({
//         type: "POST",
//         url: "/todos.json",
//         data:{
//           todo: {
//             content: todo
//           }
//         },
//         dataType: "json"
//       })
      
//       .done(function(data){
//         var html = buildHTML(data);
//         $(".todos").append(html);
//         alert("成功です");
//         textField.val('');
//       })
      
//       .fail(function(){
//         alert("error");
//       });
//     });
//   });

// </script>