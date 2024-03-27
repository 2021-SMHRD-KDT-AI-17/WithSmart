<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />


	<!-- 부트스트랩 css 적용  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="resources/fonts/feather/style.css">
  <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="resources/css/aos.css">
  <link rel="stylesheet" href="resources/css/style.css">
<html>
<head>
<meta charset="UTF-8">
<title>WithSmart</title>
</head>
<style>
	#map {
            width: 100%; /* 부모 요소에 대해 100%의 너비를 가지도록 설정 */
            height: 500px; /* 적절한 높이 설정 */
        }
        
    .kakaoMap{
    	margin: 150px;
    }
	 
</style>



<body>

	<!-- header 파일 불러오기 -->
    <%@ include file="./header.jsp" %>   

	
	
	<div class="kakaoMap">
		<div id="map" style="width:100%; height:500px;"></div>
	</div>
<!-- 	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은JavaScript 키"></script>
 --> 
 	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=d0f022c59208d8f98b74e224a733a304"></script>
 	
	<script>
		
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   		 mapOption = { 
        	center: new kakao.maps.LatLng(35.149881121,126.919809624046 ), // 지도의 중심좌표 ( 스마트인재 개발원 좌표)
        	level: 3 // 지도의 확대 레벨
    	};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	    var positions = [
		    {
		        content: '<div style="padding:5px;">행복한 담벼락 <br><a href="https://map.kakao.com/link/map/행복한담벼락,35.1496077, 126.9206097" style="color:blue" target="_blank">큰지도보기</a></div>', 
		        latlng: new kakao.maps.LatLng(35.1496077, 126.9206097)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">그냥집밥 <br><a href="https://map.kakao.com/link/map/그냥집밥,35.1500296, 126.9201646" style="color:blue" target="_blank">큰지도보기</a></div>', 
		        latlng: new kakao.maps.LatLng(35.1500296, 126.9201646)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">포카포카 <br><a href="https://map.kakao.com/link/map/포카포카,35.1515939, 126.9223999" style="color:blue" target="_blank">큰지도보기</a></div>', 
		        latlng: new kakao.maps.LatLng(35.1515939, 126.9223999)
		     
		    },
		    {
		        content: '<div style="padding:5px;">목하식당 <br><a href="https://map.kakao.com/link/map/목하식당,35.1515805, 126.923076" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1515805, 126.923076)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">천지라멘 <br><a href="https://map.kakao.com/link/map/천지라멘,35.1516992, 126.925512" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1516992, 126.925512 )
		    	
		    },
		    {
		        content: '<div style="padding:5px;">돈부리바쇼 유메노덴 <br><a href="https://map.kakao.com/link/map/돈부리바쇼 유메노덴, 35.1504587, 126.9251688 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1504587, 126.9251688)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">호시마츠 라멘<br><a href="https://map.kakao.com/link/map/호시마츠 라멘,35.149008, 126.9234007 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.149008, 126.9234007)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">저스트 텐동<br><a href="https://map.kakao.com/link/map/저스트 텐동, 35.1501988,126.9159763 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1501988,126.9159763 )
		    	
		    },
		    {
		        content: '<div style="padding:5px;">900달러 <br><a href="https://map.kakao.com/link/map/900달러, 35.1513653, 126.9220549" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1513653, 126.9220549 )
		    	
		    },
		    {
		        content: '<div style="padding:5px;">캐치스 피자 <br><a href="https://map.kakao.com/link/map/캐치스 피자, 35.1498762, 126.9221957" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1498762, 126.9221957)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">대접 <br><a href="https://map.kakao.com/link/map/대접, 35.1501037, 126.9202782" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1501037, 126.9202782)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">레스토레드 <br><a href="https://map.kakao.com/link/map/레스토레드, 35.1501842, 126.919778" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1501842, 126.919778)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">파더스 베이글 <br><a href="https://map.kakao.com/link/map/파더스 베이글, 35.1496564, 126.9209022" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1496564, 126.9209022)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">1515 짜장면 <br><a href="https://map.kakao.com/link/map/1515 짜장면, 35.1500608, 126.92053" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1500608, 126.92053)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">청춘뚝배기 <br><a href="https://map.kakao.com/link/map/청춘뚝배기, 35.1489849, 126.9192566" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1489849, 126.9192566)
		    	
		    },
		   	{
		        content: '<div style="padding:5px;">왕산식당 <br><a href="https://map.kakao.com/link/map/왕산식당, 35.150081, 126.9239015 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.150081, 126.9239015)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">산수쌈밥 <br><a href="https://map.kakao.com/link/map/산수쌈밥, 35.1528704, 126.924215" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1528704, 126.924215 )
		    	
		    }, 
		    {
		        content: '<div style="padding:5px;">우동이 완성되다 <br><a href="https://map.kakao.com/link/map/우동이 완성되다, 35.1486887	,126.9237179" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1486887, 126.9237179)
		    	
		    },
		   	{
		        content: '<div style="padding:5px;">본투비버거 동명점 <br><a href="https://map.kakao.com/link/map/본투비버거 동명점, 35.1518539, 126.9246509 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1518539, 126.9246509 )
		    	
		    },
		    {
		        content: '<div style="padding:5px;">솔밭솥밥 동명점 <br><a href="https://map.kakao.com/link/map/솔밭솥밥 동명점, 35.1503366,126.9225996" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1503366, 126.9225996 )
		    	
		    }, 
		    {
		        content: '<div style="padding:5px;">이츠모 <br><a href="https://map.kakao.com/link/map/이츠모, 35.1516992, 126.925512 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1516992, 126.925512)
		    	
		    },
		   	{
		        content: '<div style="padding:5px;">쿠로시로 <br><a href="https://map.kakao.com/link/map/쿠로시로,35.1486764, 126.9184614 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1486764, 126.9184614)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">퀴비 <br><a href="https://map.kakao.com/link/map/퀴비,35.1507982, 126.9237434 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1507982, 126.9237434 )
		    	
		    }, 
		    {
		        content: '<div style="padding:5px;">서울깍두기 충장로점 <br><a href="https://map.kakao.com/link/map/서울깍두기 충장로점,35.1466851	, 126.9180499 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1466851, 126.9180499)
		    	
		    },
		    {
		        content: '<div style="padding:5px;"> 홍문장칼집<br><a href="https://map.kakao.com/link/map/홍문장 칼집,35.1495145, 126.9236914 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1495145, 126.9236914)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">무등산호랭이 <br><a href="https://map.kakao.com/link/map/무등산호랭이, 35.1470823, 126.918713 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1470823, 126.918713)
		    	
		    },
		    {
		        content: '<div style="padding:5px;"> 미노라멘<br><a href="https://map.kakao.com/link/map/미노라멘,35.1523986, 126.9256963 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1523986, 126.9256963)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">전부 <br><a href="https://map.kakao.com/link/map/전부, 35.1506395, 126.923913" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1506395, 126.923913)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">폴리아 <br><a href="https://map.kakao.com/link/map/폴리아, 35.1503017, 126.9233335 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1503017, 126.9233335)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">열도지 <br><a href="https://map.kakao.com/link/map/열도지, 35.1470918, 126.9231237 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1470918, 126.9231237)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">미분당 광주동명점 <br><a href="https://map.kakao.com/link/map/미분당 광주동명점, 35.1485325, 126.9223146 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1485325, 126.9223146)
		    	
		    },
		   
		    {
		        content: '<div style="padding:5px;">사이공장 <br><a href="https://map.kakao.com/link/map/사이공장, 35.1491442, 126.9223007 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1491442, 126.9223007)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">대림국수 광주동명점 <br><a href="https://map.kakao.com/link/map/대림국수 광주동명점, 35.1491442, 126.9223007 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1491442, 126.9223007)
		    	
		    },
		    {
		        content: '<div style="padding:5px;"> 후토루 동명점<br><a href="https://map.kakao.com/link/map/후토루 동명점,35.1473773, 126.9235289 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1473773, 126.9235289)
		    	
		    },
		    {
		        content: '<div style="padding:5px;"> 아라타 돈가스<br><a href="https://map.kakao.com/link/map/아라타 돈가스,35.1512569, 126.9224251 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1512569, 126.9224251)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">장독대 <br><a href="https://map.kakao.com/link/map/ 장독대,35.1463082, 126.918546" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1463082, 126.918546)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">해뜨는집 <br><a href="https://map.kakao.com/link/map/해뜨는집, 35.1485635, 126.9191628 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1485635, 126.9191628)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">풍남옥 <br><a href="https://map.kakao.com/link/map/풍남옥, 35.1486864, 126.9196001" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1486864, 126.9196001)
		    	
		    },
		    {
		        content: '<div style="padding:5px;">남원 추어탕 <br><a href="https://map.kakao.com/link/map/남원 추어탕, 35.1485874, 126.9194799 " style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1485874, 126.9194799)
		    	
		    },
		   	{
		        content: '<div style="padding:5px;"> 한솥 도시락<br><a href="https://map.kakao.com/link/map/한솥 도시락, 35.1489364, 126.9187557" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1489364, 126.9187557 )
		    	
		    },
		    {
		        content: '<div style="padding:5px;">이삭토스트 <br><a href="https://map.kakao.com/link/map/이삭토스트, 35.1489756, 126.9185587" style="color:blue" target="_blank">큰지도보기</a></div>', 
			    latlng: new kakao.maps.LatLng(35.1489756, 126.9185587 )
		    	
		    }
		];
		
		
		
		var infowindowArray = [];
		
		for(var i = 0; i < positions.length; i++) {
		    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
		  
		    var marker =  new kakao.maps.Marker({ 
		    	map: map, // 마커를 표시할 지도
		    	position : positions[i].latlng // 마커위치
		    });
		   
		 
		 // 인포윈도우를 생성합니다
			 var infowindow = new kakao.maps.InfoWindow({
				 content: '<div class="infowindow-content">' + positions[i].content + '</div>'
				 
			/* 	 content:  positions[i].content,// 윈도우에 표시할 내용
				 maxWidth: 300 */
				 // disableAutoPan: true 
			 });
		 
			 infowindowArray.push(infowindow);		 
		 
	
			 kakao.maps.event.addListener(marker, "click",  makeOverListener(map, marker, infowindow));
			 kakao.maps.event.addListener(marker, "click", makeOutListener(infowindow));
		}

		function makeOutListener(infowindow){
			 for (infowindow of infowindowArray) {
			    infowindow.close();
			 }
		}

		function makeOverListener(map, marker, infowindow) {
			  return function() {
				 // 현재 인포윈도우가 열려있는지 확인
		      	var isOpened = infowindow.getMap();

				 // 만약 인포윈도우가 열려있다면 닫고, 아니면 열기
			    if (isOpened) {
					infowindow.close();
				} else {
				    infowindow.open(map, marker);
				}
			  };
		}

		// 지도 크기 조정
		function resizeMap() {
	        var mapDiv = document.getElementById('map');
	        var parentDiv = mapDiv.parentElement;
	        mapDiv.style.width = parentDiv.offsetWidth + 'px';
	        mapDiv.style.height = '500px'; // 적절한 높이 설정
	    }

	    // 페이지 로드 및 리사이즈 이벤트 시에 지도 크기 조정
	    window.addEventListener('load', resizeMap);
	    window.addEventListener('resize', resizeMap);
		
		
	 
	 </script>
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 <div id="overlayer"></div>
    	<div class="loader">
      	<div class="spinner-border" role="status">
       		<span class="sr-only">Loading...</span>
      	</div>
    </div> 	
    	
    
     <div class="slant" style="background-image: url('resources/images/slant.svg');"></div>
   
    



	<!-- script  -->
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/aos.js"></script>
    <script src="resources/js/resources/imagesloaded.pkgd.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/jquery.animateNumber.min.js"></script>
    <script src="resources/js/jquery.stellar.min.js"></script>
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <script src="resources/js/jquery.fancybox.min.js"></script>
    <script src="resources/js/custom.js"></script>


</body>
</html>