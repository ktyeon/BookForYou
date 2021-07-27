<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style>
		#outer{
            display:inline-block;
            position:absolute;
            margin-top:50px;
            margin-left:250px;
            width: 950px;
        }
        #main-title > p{
            display:inline-block;
            position: absolute;
            height:30px;
            line-height: 30px;
            margin:0 0 0 15px;
            font-size:18px;
            font-weight: 600;
        }
        a{text-decoration: none;}

        

        /* 공통 테두리 */
        .bar-outer{
            border:1px solid grey;
            padding:15px;
        }

        /* 검색 영역 */
        #search-area{
            display:flex;
            justify-content: center;
            margin-top:40px;
        }
        #search-bar{
            border-radius: 40px;
            border:2px solid #EC573B;
            width:600px;
            height: 40px;
            padding:1px;
            margin:auto;
        }

        /* 검색 조건 select */
        #search-condition{
            display: inline-block;
            border-right:2px solid #EC573B;
            width:25%;
            height: 100%;
        }
        #search-condition>select{
            border-radius: 40%;
            border: none;
            width: 95%;
            height: 100%;
            font-size: 15px;
            text-align-last: center;
        }
        select:focus, #search-input>input:focus{
            outline:none;
        }
        
        /* 검색어 입력 */
        #search-input{
            display: inline-block;
            width:70%;
            height: 100%;
        }
        #search-input > input{
            border-radius: 40px;
            width:100%;
            height: 100%;
            border:none;
            font-size: 15px;
            text-align-last: center;
            text-align: center;
        }

        /* radio 태그 */
        .form-check{margin-bottom: 10px; display:block;}
        .form-check  span{
            font-size: 17px;
            font-weight: 600;
            margin-right: 20px;
        }

        /* 검색/초기화 버튼 */
        #search-btn{text-align: center;}
        #search-btn button{
            width:80px;
            height: 30px;
            font-size: 15px;
            font-weight: 600;
            border: none;
            border-radius: 5px;
            margin-left:20px;
        }
        #search-btn button:hover{
            cursor: pointer;
        }
        #search-btn button[type="submit"]{
            background-color: #EC573B;
            color:white;
        }
        #search-btn button[type="reset"]{
            background-color:grey;
            color: white;
        }
        #result-area{margin-top:50px;}
        #result-title p{
            float:left; 
            margin:0 15px 0 0;
            font-size:18px;
            font-weight: 600;
        }

        /* 타이틀 */
        #result-area{margin-top:50px;}
        #result-title p{
            float:left; 
            margin:0 15px 0 0;
            font-size:18px;
            font-weight: 600;
        }

        /* 목록 정렬 */
        #array-div{float:right; margin:15px 0 15px 0;}
        #array-condition{
            width:140px;
            height: 25px;
        }

        /* 조회 결과 테이블 */
        #result-div{
            margin-top:20px; 
            font-size: 14px;
            text-align: center;
            
        }
        .table{border:0.08em solid grey;}
        .table *{vertical-align: middle;}
        .table td, .table th{border: 0.01em solid #dee2e6;}


        /* 메모 컬럼 */
        .user-memo-content.hide, .admin-memo-content.hide{display: none;}
        .user-memo{margin-bottom: 5px;}
        .user-memo button, .admin-memo button{
            border:0.1em solid grey;
            border-radius: 5px;
            width:55px;
            background-color: white;
        }

        .user-memo.no-exist>button{color:grey;}
        .admin-memo.no-exist>button{color: rgb(255, 150, 59);}


        .user-memo.exist button,.admin-memo.exist button{border:none;}
        .user-memo.exist button{background-color: rgb(252, 190, 52);}
        .admin-memo.exist button{background-color: rgb(255, 150, 59);}
        .user-memo.exist>button, .admin-memo.exist>button{color:rgb(64, 64, 64);}

        /* 메모 모달 */
        .user-memo-content, .admin-memo-content{
            position:absolute;
            border:0.05em solid black;
            box-shadow: 0px 0px 15px #000;
            display: inline-block;
            background-color: white;
        }
        .user-memo-content{
            width:300px;
        }
        .user-memo-content > .memo-top{
            background-color: rgb(252, 190, 52);
        }
        .memo-top{
            font-size:14px;
            font-weight: 600;
            padding: 0.1em 0.7em;
        }
        .memo-top p, .memo-bottom p{margin:0px;}
        .memo-bottom{
            font-size:14px;
            padding:0.5em 0.7em;
        }

        .admin-memo-content{
            width:300px;
        }
        .admin-memo-content > .memo-top{background-color: rgb(255, 150, 59);}
        .admin-memo-content input{width:100%;}
        .memo-btn-area{
            float:right;
            margin: 0 5px 5px 0;
        }
        .memo-btn-area button{
            border:0.1em solid grey;
            font-size:12px;
            background-color: white;
        }
        .memo-delete-btn{color:rgb(255, 150, 59);}
        .memo-upgrade-btn{color:black;}

        /* 페이징 */
        #paging-area{
            width:fit-content;
            margin:auto;
        }
        #pagination{
            padding:0;
            list-style: none;
        }
        #pagination li{
            display:inline-block;
            width:35px;
            height: 30px;
            text-align: center;
            line-height: 18px;
            font-size:16px;
            padding:5px;
            border: 1px solid grey;
            border-radius: 5px;
        }
        #pagination li:hover{
            cursor: pointer;
            font-weight: 600;
            color: #EC573B;
        }
</style>

<script>
	$(function(){
	
	    $(".admin-memo button").click(function(){
	        $(".admin-memo-content").toggleClass("hide");
	
	        if($(this).parent().is(".no-exist")){
	            $(".admin-memo-content .memo-delete-btn").hide();
	        }else{
	            $(".admin-memo-content .memo-delete-btn").show();
	        }
	
	        const a = $(this).offset();
	        $(".admin-memo-content").offset({top: a.top , left: a.left-320});
	    })
	
	    $(".user-memo.exist button").click(function(){
	        $(".user-memo-content").toggleClass("hide");
	        const a = $(this).offset();
	        $(".user-memo-content").offset({top: a.top-40 , left: a.left-320});
	    })
	
	})
</script>
</head>
<body>

	<jsp:include page="../adminSidebar.jsp"/>

	<div id="outer">
        <div id="main-title">
            <img src="../resources/menu.png" alt="메뉴아이콘" width="30px" height="30px">
            <p>정기구독 전체 조회</p>
        </div> 
        <br>

        <div class="bar-outer" id="search-area">
            <form action="">
                <div id="search-bar">
                    <div id="search-condition">
                        <select name="condition">
                            <option value="searchAll">전체</option>
                            <option value="productCode">주문번호</option>
                            <option value="bookName">주문자명</option>
                            <option value="">주문자ID</option>
                        </select>
                    </div>
                    <div id="search-input">
                        <input type="text" name="">
                    </div>
                </div>
                <br>
                <div class="form-check form-check-inline">
                    <span>취소상태</span>
                    <input type="radio"> 전체
                    <input type="radio"> 이용전
                    <input type="radio"> 해지
                </div>
                <br>
                <div id="search-btn">
                    <button type="submit">검색</button>
                    <button type="reset">초기화</button>
                </div>
            </form>
        </div>

        <div id="result-area">
            <div id="result-title">
                <p>조회결과</p>
                <span>[총 10개]</span>
            </div>
            
            <div id="array-div">
                <select name="" id="array-condition">
                    <option value="">신청일순</option>
                    <option value="">신청일 역순 </option>
                </select>
            </div>

            <div id="result-div">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>구독번호</th>
                            <th>신청일/종료일</th>
                            <th>구독자</th>
                            <th>구독이름</th>
                            <th>구독기간</th>
                            <th>배송희망일</th>
                            <th>결제금액</th>
                            <th>결제상태</th>
                            <th>구독상태</th>
                            <th width="70px">메모</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>on0001</td>
                            <td>2021-07-01 <br> 2021-10-01</td>
                            <td>최하늘<br>(choi0001)</td>
                            <td>프리미엄</td>
                            <td>3개월권</td>
                            <td>10일</td>
                            <td>15,000</td>
                            <td>결제완료</td>
                            <td>이용중</td>
                            <td>
                                <!-- 사용자 배송메세지(DELIVERY_MSG)가 존재하지 않을(NULL) 경우 -->
                                <div class="user-memo no-exist">
                                    <button type="button">user</button>
                                </div>
                                <!-- 관리자 메모(ADMIN_MEMO)가 존재하지 않을(NULL) 경우 -->
                                <div class="admin-memo no-exist">
                                    <button type="button">admin</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>on0001</td>
                            <td>2021-07-01 <br> 2021-10-01</td>
                            <td>최하늘<br>(choi0001)</td>
                            <td>프리미엄</td>
                            <td>3개월권</td>
                            <td>10일</td>
                            <td>15,000</td>
                            <td>결제완료</td>
                            <td>해지</td>
                            <td>
                                <!-- 사용자 배송메세지(DELIVERY_MSG)가 존재하지 않을(NULL) 경우 -->
                                <div class="user-memo exist">
                                    <button type="button">user</button>
                                </div>
                                <!-- 관리자 메모(ADMIN_MEMO)가 존재하지 않을(NULL) 경우 -->
                                <div class="admin-memo exist">
                                    <button type="button">admin</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="user-memo-content hide">
                <div class="memo-top">
                    <p>구매자 배송메세지</p>
                </div>
                <div class="memo-bottom">
                    <p>경비실에 맡겨주세요.</p>
                </div>
            </div>
    
            <div class="admin-memo-content hide">
                <div class="memo-top">
                    <p>관리자 메모</p>
                </div>
                <div class="memo-bottom">
                    <p><input type="text" value="엄청 빠른 배송"></p>
                </div>
                <div class="memo-btn-area">
                    <!-- 관리자 메모가 존재하지 않을 때는 삭제 버튼이 없음!! 저장버튼만 있음  -->
                    <button type="button" class="memo-delete-btn">삭제</button>
                    <button type="button" class="memo-upgrade-btn">저장</button>
                </div>
            </div>
            <br>
            <div id="paging-area">
                <ul id="pagination">
                    <li><a>&lt;</a></li>
                    <li><a>1</a></li>
                    <li><a>2</a></li>
                    <li><a>3</a></li>
                    <li><a>4</a></li>
                    <li><a>5</a></li>
                    <li><a>&gt;</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>