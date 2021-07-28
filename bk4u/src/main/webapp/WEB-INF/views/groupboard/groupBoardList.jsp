<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" url="http://java.sun.com/jsp/jstl.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        .content{
          background-color:#FCBE34;
          margin:auto;
          width: 1200px;
      }
      .innerOuter{
          border:1px solid white;
          width:80%;
          margin:auto;
          padding:5% 15%;
          background:white;
      }
      #pagingArea{width:fit-content;margin:auto;}
</style>
</head>
<body>
  
          <!--독서모임게시판상세불러오기-->
          <jsp:include page=""/>
              
            <div class="content">
  
            <div class="innerOuter"  style="padding:5% 5%;" align="center">
                  <br><br><br><br><br><br><br><br>
                <div align="left" style="padding-left:19px">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                          <a class="nav-link" href="#">모임정보</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" href="#">소게시판</a>
                        </li>
                </div>

                    <div align="center" style="width: 800px; border-radius: 10px; height: 850px; border: 1px solid; padding-right: 20px; padding-left: 20px;"> 
                            <br><br>
                            <h6 align="left"><b>소게시판<b></h6>
                                
                            <button type="submit" style="float: right; margin: auto;">글쓰기</button>
                        
                    <br><br>
                    <div style="border: 1px solid; width: 750; height: 800; margin: auto; border-radius: 10px;">
                        <table align="center" >
                            <tr>
                                <td width="200">작성자아이콘 </td>
                                <td>작성자닉네임</td>
                            </tr>
                            <tr>
                                <td>작성날짜</td>
                                <td>작성시간</td>
                            </tr>
                            <tr>
                                <td colspan="2" width="650px" height="150"> 작성내용 미리보기 </td>
                            </tr>
                        </table>
                    </div>


                    <div style="border: 1px solid; width: 750; margin: auto; border-radius: 10px;">
                        <table  align="center">
                            <tr>
                                <td width="550" onclick="">댓글(1)</td>
                                <td width="100"><button type="submit" style="float: left;">댓글달기</button></td>
                            </tr>
                        </table>
                        <br>
                    </div>

                    <br><br><br>
                    <div style="border: 1px solid; width: 750; height: 800; margin: auto; border-radius: 10px;">
                        <table align="center" >
                            <tr>
                                <td width="200">작성자아이콘 </td>
                                <td>작성자닉네임</td>
                            </tr>
                            <tr>
                                <td>작성날짜</td>
                                <td>작성시간</td>
                            </tr>
                            <tr>
                                <td colspan="2" width="650px" height="150"> 작성내용 미리보기 </td>
                            </tr>
                        </table>
                    </div>


                    <div style="border: 1px solid; width: 750; margin: auto; border-radius: 10px;">
                        <table  align="center">
                            <tr>
                                <td width="550" onclick="">댓글(1)</td>
                                <td width="100"><button type="submit" style="float: left;">댓글달기</button></td>
                            </tr>
                        </table>
                        <br>
                    </div>


                    <br><br>
                        <div id="pagingArea">

                            <ul class="pagination" >
                                <li class="page-item"><a class="page-link" href="#">더보기▼</a></li>
                            </ul>
                        
                        </div>
                        <br><br><br>
                </div>            
           </div>   
      </div>
         <br><br>

         <!--푸터바 입력-->
         <jsp:include page=""/>  


    </body>

</html>