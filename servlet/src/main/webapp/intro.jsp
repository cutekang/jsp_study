<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--    
<%
      for(int i = 0; i < 10; i++){
   %>
      <h1>안녕하세요^_^</h1>
   <%
      }
   %>    
   --%>   
   
   <!--
      실습 시간 15분 
      이름과 나이를 입력 받아서
      나이와 만 나이를 서블리에서 계산 후 화면에 응답해주는 페이지 제작
      *이름과, 나이는 모두 유효성 검사 필수
    -->
   
   <form method="post" action="home">
      <input name='name' placeholder="이름을 입력하세요." />
      <input name='age' placeholder="나이를 입력하세요" />
      <button id='submit-button' type='button'>전송</button>
   </form>
   
</body>
<script type="text/javascript">
   const form = document.querySelector("form");
   const button = document.querySelector("#submit-button");
   const inputs = document.querySelectorAll("input");
   
   button.addEventListener("click", () => {
      console.log("버튼 클릭!")
      inputs.forEach((input) => {
         if(!input.value){
            alert(input.name + "값을 입력하세요.")
            return;
         }
      })
      form.submit();
   })
</script>
</html>


