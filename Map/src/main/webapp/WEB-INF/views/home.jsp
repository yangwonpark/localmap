<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="templates/header.jsp"%>

<div class="text-center">
<c:if test="${login != null }">
	<form class="mt-5 mb-5" onsubmit="searchPlaces(); return false;">
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
		  <input id="location" type="text" class="form-control" placeholder="위치를 입력하세요" name="location"
		  		 aria-label="Recipient's username" aria-describedby="basic-addon2">
		  <div class="input-group-append">
		    <button class="btn btn-outline-secondary" type="submit">Button</button>
		  </div>
		</div>
	</form>
	<div id="map" style="width: 500px; height: 400px; margin: auto"></div>
	<script>
		let markers = [];
		let container = document.getElementById('map');
		
// 		navigator.geolocation.getCurrentPosition(function(pos) {
			let infowindow = new kakao.maps.InfoWindow({zIndex:1});
// 	        let lat = pos.coords.latitude;
// 			let lon = pos.coords.longitude;
				
            let options = {
                center : new kakao.maps.LatLng(32, 32),
                level : 3
            };
            let map = new kakao.maps.Map(container, options);
            
            let ps = new kakao.maps.services.Places(); 
            
            searchPlaces();
            
            function searchPlaces() {
            	let location = document.getElementById('location').value;
            	
            	if(!location.replace(/^\s+|\s+$/g, '')) {
            		location = '해운대';
            	}
            	
            	ps.keywordSearch(location, placesSearchCB);
            }
            
            function placesSearchCB (data, status, pagination) {
            	if(status === kakao.maps.services.Status.OK) {
            		let bounds = new kakao.maps.LatLngBounds();
            		
            		for (let i = 0; i < data.length; i++) {
            			displayMarker(data[i]);
            			bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
            		}
            		
            		map.setBounds(bounds);
            	} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

                    alert('검색 결과가 존재하지 않습니다.');
                    return;

                } else if (status === kakao.maps.services.Status.ERROR) {

                    alert('검색 결과 중 오류가 발생했습니다.');
                    return;

                }
            }

            function displayMarker(place) {
            	let marker = new kakao.maps.Marker({
            		map: map,
            		position: new kakao.maps.LatLng(place.y, place.x)
            	});
            	
            	kakao.maps.event.addListener(marker, 'click', function() {
            		infowindow.setContent('<div style="padding: 5px; font-size: 12px;">' + place.place_name + '</div>');
            		infowindow.open(map, marker);
            	});
            }
            
// 		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
</c:if>
</div>
<%@include file="templates/footer.jsp"%>