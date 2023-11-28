<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹프로젝트</title>
<style type="text/css">

/* 전체 바탕 색 정하기 */
body{
 background-color: #424242;
}

/* 전체영역에서 여백을 없애줌 */
* {
		margin: 0;
		padding: 0;
	}
	
	
/* 사이트 이름 및 메뉴 */
header {
        background-color: #424242;
        color: #000000;
        text-align: center;
        padding: 1em;
    }
    
/* 사이트 이름 부분 */
#name{
	color: #ECE7D8;
	padding : 20px;
}
	
/* a태그에 텍스트 밑줄을 없애고 색상을 #333 */
a {
		text-decoration: none;
		color:#333;
	}

#menu {
		font:bold 16px "malgun gothic";
		width:700px;
		height:50px;
		background: #ccc;
		color:black;
		line-height: 50px; 
		margin:0 auto;
		text-align: center;
		border-radius: 10px;
	}

/* 모든 메뉴들 (글자만 나오게)*/
ul li{
		list-style: none;
	}

/* menu태그 자식의 ul의 자식 li를 왼쪽정렬과 넓이 140설정 */
#menu > ul > li {
		float:left;
		width:140px;
		position:relative;
	}
	
#menu > ul > li > ul {
		width:130px;
		display:none;
		position: absolute;
		font-size:14px;
		background: #ECE7D8;
		border-radius: 10px;
	}
	
#menu > ul > li:hover > ul {   /* 서브 메뉴들을 옆에 아니라 아래로 정렬되도록 */
		display:block;
	}
	
#menu > ul > li > ul > li:hover {   /* 서브 메뉴에 마우스를 가져갈 때 */
		background: orange;
		transition: ease 1s;
		border-radius: 10px;
		}
		

.search-container {
         text-align: center;
         padding: 20px;
        }

.search-box {
        width: 300px;
        padding: 10px;
        font-size: 16px;
        border-radius: 10px;
        }

.search-button {
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 10px;
        }
	
#login{
        float: right; 
        margin-right: 20px;
}	

.login-button,
.login2-button {
    font-size: 16px;
    cursor: pointer;
    border-radius: 10px;
    margin-left: 10px; 
}
	
#updown{
	margin-left: 230px;
	color: #ECE7D8;
	font-size: 25px;
}

.chart-image {
	max-width: 40%;
	height: auto;
	margin-left: 60px;
	margin-top: 30px;
}
nav{
	background-color: #424242;
}
section{
	background-color: #424242;
}

.content{
    float:right;
    margin-right:10%;
}

#news{
    padding: 10px;
    margin-bottom: 30px;
}

#newsimg{
    width: 40px;
    height: 27px;
}

#news table {
            border-collapse: collapse;
            width: 100%;
        }

#news table td a{
    color: #ECE7D1;
}

#news table td a:hover{
    color: black;
    
}
#news table td {
            border-bottom: 1px solid #ECE7D1; /* 아래쪽에만 테두리 추가 */
            padding: 8px;
            text-align: left;
        }
        
        
table.type09 {
            float:right;
            margin-right:10%;

	}



table.type09 thead th {

  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #ECE7D8;
  border-bottom: 3px solid #ECE7D8;
	}



table.type09 tbody th {

  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #ECE7D8;
	}



table.type09 td {

  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
	}        
	
#samsung{
    color:#FA5858;
}
#kakao{
    color:#2E9AFE;
}
#sk{
    color:#FA5858;
}

       
#chatbot-image {
            position: fixed;
            right: 10px; 
            bottom: 10px;
            max-width: 100px; /* 이미지의 최대 너비 지정 */
            height: auto;
            z-index: 1; /* 다른 요소 위에 위치하도록 함 */
        }

        

.chatMessage{
	display: none;
    position: fixed;
    right: 10px;
    bottom: 120px;
    background-color: #ECE7D8;
    color:  #424242;
    padding: 10px;
    border-radius: 5px;
    font-size: 14px;
    font-weight: bold; 
	}



#chatbot-image:hover + .chatMessage {
    display: block;
  }

 
        

footer{
	background-color: #424242;
    width : 100%;
    height : 10%;
    bottom : 0;
    padding : 10px;
    text-align : center;
    margin-top: 150px;

}
		
</style>
</head>
<body>
<%-- header 헤더--%>
<header>
       <div id="name"> <h1> 사이트 이름 </h1> </div>
<div id="menu">
	<ul>
		<li><a href="#">주식 거래</a>
			<ul>
				<li><a href="#">국내 주식</a></li>
                <li><a href="#">해외 주식</a></li>
                <li><a href="#">선물</a></li>
                <li><a href="#">FTA</a></li>
                <li><a href="#">펀드</a></li>
                <li><a href="#">채권</a></li>
			</ul>
		</li>
		<li><a href="#">고객 센터</a>
			<ul>
				<li><a href="#">자주 묻는 질문</a></li>
                <li><a href="#">QnA</a></li>
                <li><a href="#">거래 가이드</a></li>
                <li><a href="#">고객 유의사항</a></li>
			</ul>
		</li>
		<li><a href="#">커뮤니티</a>
			<ul>
				<li><a href="#">정보공유방</a></li>
				<li><a href="#">경제 소식</a></li>
			</ul>
		</li>
		<li><a href="#">내 정보</a>
			<ul>
                <li><a href="#">내가 산 주식</a></li>
                <li><a href="#">계좌 총액</a></li>
                <li><a href="#">총 수익</a></li>
                <li><a href="#">주문 내역</a></li>
                <li><a href="#">계좌 정보</a></li>
			</ul>
		</li>
		<li><a href="#">주식 시작하기</a>
			<ul>
                <li><a href="#">계좌 개설</a></li>
                <li><a href="#">주식 도우미</a></li>
                <li><a href="#">종목 추천</a></li>
			</ul>
		</li>
	</ul>
</div>
</header>

<nav>
    <div class="search-container">
    <input type="text" class="search-box" placeholder="검색어를 입력하세요">
    <button class="search-button" onclick="searchFunction()">검색</button>
    </div>
    
    <div id="login">
    <button class="login-button">로그인</button>
    <button class="login2-button">회원가입</button>
    </div>
    
</nav>
    

    <%-- section 중간 부분 (컨텐츠 들어갈 자리) --%>
    <section>
        <div id="updown">실시간 급상승 종목 차트</div>
        <img class ="chart-image" src="img/chart.jpg">
  
        <div class="content">
        <div id="news">
        <table>
        <tr>
            <td><a href="#">11번가 1조 지분 ‘0원’ 될 수도… SK스퀘어, 운명의 이사회 29일 연다</td>
            <td><img src="img/news1.jpeg" id="newsimg"></td>
        </tr>
        <tr>
            <td><a href="#">'산타랠리 기대' 코스피 돌아온 외국인…장바구니 담은 종목은</td>
            <td><img src="img/news2.jpg" id="newsimg"></td>
        </tr>
        <tr>
            <td><a href="#">'7일 만에 3배'…에코프로머티, KT도 대한항공도 제쳤다</td>
            <td><img src="img/news3.jpg" id="newsimg"></td>
        </tr>
         <tr>
            <td><a href="#">연기금 ‘1픽’ 두산로보, 한 달만 150%↑…증권가 “지속 관심”</td>
            <td><img src="img/news4.jpg" id="newsimg"></td>
        </tr>
        <tr>
            <td><a href="#">돈 잘 버는 자율주행 스타트업, 韓 넘어 해외로 진출</td>
            <td> <img src="img/news5.png" id="newsimg"></td>
        </tr>
       
        </table>
        </div>    <%-- news 끝 --%>
        
         <table class="type09">

  			<thead>
  				<tr>
    				<th scope="cols">종목</th>
   					<th scope="cols">변동률</th>
  				</tr>
  			</thead>

  			<tbody>
  				<tr>
    				<th scope="row">삼성</th>
    				<td id="samsung">2% △</td>
  				</tr>
  				<tr>
    				<th scope="row">카카오</th>
   					<td id="kakao">1% ▽</td>
  				</tr>
  				<tr>
    				<th scope="row">SK하이닉스</th>
   					<td id="sk">4% ▲</td>
  				</tr>
  			</tbody>
		</table>
        </div>  <%--content끝 --%>
        
    </section>

    <img id="chatbot-image" src="img/chatbot.png" alt="Chatbot Image">
    <div class="chatMessage">무엇을 도와드릴까요?</div> 
    
    <%-- footer 페이지 정보 부분--%>
    <footer>
        <p>&copy; 2023 Your Stock Trading Website. All rights reserved.</p>
        사업자 : 최여원  | 대표 이사 : 최서현 | 총괄 디렉터 : 함경민  <br>
        사업자 번호 : 060402-E5S66F1
        고객 센터  : 02-2022-1015
    </footer>

</body>
</html>