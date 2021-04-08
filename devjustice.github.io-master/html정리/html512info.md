<h>12년 html5 기출 문제 정리</h>



html5 는 각 기능별로 브러우저 지원 현황이 모두 다르다
>canvas는 전체 지원 getUserMedia파폭,크롬,오페라 webSockets 전체지원 

html5 에서는 문자 인코딩 선언을 위하여 간단하게 캐릭터 셋만 선언 하면 되도록 바뀌었다.
>`<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />`

html5 에서는 html,xhtml과 호환이 된다

html5 에서 레이아웃을 위해 추가된 요소는 aside
![default](https://user-images.githubusercontent.com/35753710/44989467-e7147e00-afc8-11e8-944b-345e7d555672.png)

직사각형 그리기
fillRect(x, y, width, height)
>색칠된 직사각형을 그립니다.
strokeRect(x, y, width, height)
>직사각형 윤곽선을 그립니다.
clearRect(x, y, width, height)
>특정 부분을 지우는 직사각형이며, 이 지워진 부분은 완전히 투명해집니다

Path 메소드
beginPath()
>새로운 path를 만듭니다. path 가 생성됬다면, 이후 drawing command는 path를 구성하고 만드는데 사용하게 됩니다. 
Path 메소드 (Path methods)
>물체를 구성할 때 필요한 여러 path를 설정하는데 사용하는 method입니다.
closePath()
>Drawing command가 다시 문맥에서 사용될 수 있도록 path 를 닫습니다.
stroke()
>윤곽선을 이어줌으로써 도형을 그립니다.
fill()
>Path의 내부를 채움으로써 내부가 채워진 도형을 그립니다.
삼각형 그리기 코드
```

function draw() {
  var canvas = document.getElementById('canvas');
  if (canvas.getContext) {
    var ctx = canvas.getContext('2d');

    ctx.beginPath();
    ctx.moveTo(75, 50);
    ctx.lineTo(100, 75);
    ctx.lineTo(100, 25);
    ctx.fill();
  }
}
```
Link to section펜(pen) 이동시키기
가장 유용한 함수(function)중에 딱히 도형을 그리는 것은 아니지만 
위에서 언급한 path 의 일부가 되는  moveTo() 함수(function)가 있습니다. 
이는 펜이나 연필을 종이위에서 들어 옆으로 옮기는것이라고 보시면 됩니다.
moveTo(x, y)
펜을  x와 y 로 지정된 좌표로 옮깁니다.

```
> function draw() {
>   var canvas = document.getElementById('canvas');
>   if (canvas.getContext) {
>      var ctx = canvas.getContext('2d');
> 
>     ctx.beginPath();
>     ctx.arc(75, 75, 50, 0, Math.PI * 2, true); // Outer circle
>     ctx.moveTo(110, 75);
>     ctx.arc(75, 75, 35, 0, Math.PI, false);  // Mouth (clockwise)
>     ctx.moveTo(65, 65);
>     ctx.arc(60, 65, 5, 0, Math.PI * 2, true);  // Left eye
>     ctx.moveTo(95, 65);
>     ctx.arc(90, 65, 5, 0, Math.PI * 2, true);  // Right eye
>     ctx.stroke();
>   }
> }
> 
```
lineTo(x, y)
>현재의 드로잉 위치에서 x와 y로 설정된 좌표점까지 연결하는 선을 그립니다.

arc(x, y, radius, startAngle, endAngle, anticlockwise)
>(x, y) 위치에 중점을 두면서, 반지름 r을 가지고,  startAngle 에서 시작하여, endAngle 에서 끝나며, 주어진 anticlockwise 방향으로 향하는 (기>본값은 시계방향(clockwise)회전) 아치를 그리게 됩니다.
arcTo(x1, y1, x2, y2, radius)
>주어진 반지름(radius) 과  기준점 (x1,y1)을 가지고,  다음 기준점(x2,y2)을 잇는 직선을 그립니다 .

부채꼴을 그리기 위하여 사용하는 메서드
> moveTo(),closePath(),arc()
베지에 곡선을 그리기 위하여 사용하는 메서드 
quadraticCurveTo(cp1x, cp1y, x, y)
>(cp1,cp1y)로 설정된 기준점을 사용하여, 현재 펜(pen)의 위치에서 (x , y)좌표로 주어진 끝점 까지 이차 베지에곡선을 그립니다.
bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)
>(cp1x,cp1y) 와 (cp2x,cp2y)로 설정된 기준점을 사용하여, 현재 펜(pen)의 위치에서 (x , y)좌표로 주어진 끝점 까지 삼차 베지에곡선을 그립니>다.
그라데이션 지정 메서드 createLinearGradient(),addColorStop(),createRadicalGradient()
>createRadialGradient() 메소드는 방사형 / 원형 그라데이션 개체를 만듭니다.

도형을 그린 순서와 상관 없이 겹쳐지즌 부분에 대한 처리, 12가지 속성 값이 존재하며
copy속성 값은 나중에 그려진 도형만 표시할때 사용한다. globalcompositeOperation(),
globalCompositeOperation = type
>새로운 도형을 그릴 때, 도형 합성 방법을 설정합니다. type은 다음 26종류의 합성 방법 중에서 선택할 수 있습니다.

오디오/비디오 자식 요소로 src속성을 대신하고 요서 사이에 여러게 지정이 가능한 요소 herf
![default](https://user-images.githubusercontent.com/35753710/44990223-55f2d680-afcb-11e8-9a53-7c0dcd6c051c.png)

미디어와 관련된 이벤트 wating, ended, play

input 요소 의 type속성을 가진 입력 타입은 color

```
▼ 새로 추가한 타입들은 다음과 같습니다. 아래에 열거한 내용보다 더 많지만 주로 사용할 만 것들만 언급을 하였습니다.

 

l  email : 이메일 주소 검증 창을 만든다.

l  search : 검색창을 만든다. text 속성과 동일하다. 크롬과 사파리만 가능함

l  url : URL 입력 형식을 검증하는 창을 만든다.

l  tel : 전화번호 입력창을 만들며 검증 하지 않는다.

l  number : 숫자만 입력할 수 있는 창을 만들며 범위 제한을 둘 수 있다.

l  range : 슬라이드 컨트롤을 만든다.

l  date : 날짜 입력창을 만든다.

l  color : 색상을 선택할 수 있는 창을 만든다.
```



range입력 타입속성 특정범위 숫자를 입력받기 위해 사용/step속성을 통해 유효 입력값을 정할 수있음/초기 값을 지정 할 수있는 속성 존재
```
<input type -"text" name "site" list-"site">
<datalist id "site">
<option value = "http://www.naver.com">
<option value = "http://www.naver.com">
<option value = "http://www.naver.com">
<option value = "http://www.naver.com">
<datalist>
```


input 요소의 속성중 기본 텍스트를 지정하기 위해 사용하는 것 peaceholder
![default](https://user-images.githubusercontent.com/35753710/44990396-d9142c80-afcb-11e8-9273-09c80ae5761b.png)

css3에서 외부 사용자 폰트를 불러와 사용하기 위한것 @font-face

text-shadow 속성 가로위치 세로 위치 농도 색상
![default](https://user-images.githubusercontent.com/35753710/44990472-111b6f80-afcc-11e8-8ffc-0250acc8946a.png)

크롬 브라우저에 해당하는 벤더 프리픽스 -webkit-
다단을 나누어 사용하는데 제목 표현을 위하여 단을 무시 해야할 경우 사용하는 속성은 column-span
>첫번째 열을 오른쪽으로 확장시켜 주어야 합니다. 이때 사용하는 속성이 colspan 입니다. 
transform 속성 가운데 요소의 너비와 높이를 변형시키고자 할때 사용하는 것 scale(x값,y값)
![default](https://user-images.githubusercontent.com/35753710/44990572-5e97dc80-afcc-11e8-92b8-3b574670997f.png)

애니메이션 관련 속성중에서 애니메이션이 실행되는 시간을 나타내는 속성 animation-duration
![default](https://user-images.githubusercontent.com/35753710/44990612-87b86d00-afcc-11e8-8c21-d6fdd89948ed.png)

드래그 요소가 드롭 요소 범위 밖에 들어올때 발생하는 이밴트  dragenter
>개체를 컨트롤의 범위 안으로 끌 때 발생합니다.
로컬 스토리지 키와 값을 저장하는 형식  
![default](https://user-images.githubusercontent.com/35753710/44990740-f1d11200-afcc-11e8-951b-9b9084ede9a0.png)

localStorage.computer="programmer";
localStorage["computer"]="programmer";
localStorage.setItem("computer","programmer");

port 속성을 사용하여 메인 UI 스레드 공유워커와 통신을 할떄 전달된 데이터를 받기 위해 사용하는 이벤트 핸들러 onconnect
input요소를 사용할 경우 change 이밴트가 발행할 경우 파일 겍채를 가져올 수있다
clearPositon() 메서드는 watchPosition() 메서드의 리턴값을 인수로 사용한다.



Link to section현재 위치 가져오기
사용자의 현재 위치를 얻기 위해서는 getCurrentPosition() 메서드를 호출하면 됩니다. 사용자 위치를 탐지하는 비동기 요청을 초기화하고, 하드웨어에 사용자의 최신 위치 정보를 요청합니다. 위치가 확인되면 정의된 콜백 함수가 실행됩니다. 선택적으로 에러가 발생할 때 실행될 두번째 콜백함수를 지정할 수 있습니다. 세번째 선택적인 파라미터는 옵션 객체인데, 위치값이 반환된 최대 시간과 요청을 대기할 시간, 그리고 높은 정확도를 사용할 지 여부를 지정합니다.

노트: 기본적으로, getCurrentPosition() 은 최대한 빨리 응답이 오겠지만 정확도는 낮습니다. 정확도에 개의치 않고 빠른 응답을 필요로 하는 경우 유용합니다. 예를 들어,  GPS가 있는 장치는 고정된 GPS를 얻기 위해서 일분 이상의 시간이 필요해서 getCurrentPosition() 는 덜 정확한 정보(IP 위치 또는 wifi)를 반환합니다..

navigator.geolocation.getCurrentPosition(function(position) {
  do_something(position.coords.latitude, position.coords.longitude);
});
위의 예제는 사용자 위치가 확인되면 do_something() 함수를 실행합니다.

Link to section현재 위치 갱신하기
만약 위치 정보가 변경(장치가 움직였거나 좀 더 정확한 위치 정보가 도착했을때)되었다면 갱신된 위치 정보로 호출되는 콜백 함수를 지정할 수 있습니다.

watchPosition() 함수를 사용하면 되는데, getCurrentPosition() 함수와 파라미터가 같습니다. 콜백 함수는 사용자가 움직여서 사용자의 위치가 변경되거나, 다른 기술을 통해 정확도가 높은 정보가 제공되었을 때 여러 번 호출됩니다. 에러 콜백 함수는 getCurrentPosition() 함수와 같이 선택적이며 정상적인 결과를 반환 할 수 없을때 마다 호출됩니다.

노트:  watchPosition() 를 사용할때 getCurrentPosition() 을 먼저 호출하지 않고 사용할 수 있습니다.

var watchID = navigator.geolocation.watchPosition(function(position) {
  do_something(position.coords.latitude, position.coords.longitude);
});
watchPosition() 메서드는 숫자로 된 ID를 반환하며, watcher를 식별하는데 사용합니다. 사용자 위치 갱신을 할 필요가 없을 때 clearPosition() 에 매개변수로 넘겨줍니다.

navigator.geolocation.clearWatch(watchID);
Link to section미세 조정
 getCurrentPosition()  과 watchPosition() 은 둘다 success 콜백, 선택적으로 사용할 수 있는 에러 콜백과 PositionOptions 객체를 매개변수로 받습니다.

PositionOptions 객체는 아래의 프러퍼티를 갖는 자바스크립트 객체입니다 :

enableHighAccuracy
 
최대한 정확도를 높게 받을 것인지를 지시하는 불리언 값입니다. true 값을 지정하면 장치에서 정확도가 높은 위치 정보를 제공 할 수 있으면 제공해 줍니다. 이것은 응답 시간이 느려지거나 전력소비(예:모바일 장치의 GPS 칩)가 늘어 나니까 주의해야 합니다. 반대로 false를 지정하면 장치는 적은 전력을 사용하든 빠른 응답을 하든 자원을 적절히 사용할 자유를 갖게 됩니다.
timeout
위치 값을 장치로 부터 받을 때 까지 최대한 대기할 시간을 양의 정수(천분의 일초 단위)로 지정합니다. 기본값은 Infinity 이며, getCurrentPosition() 는 위치값이 가능 할때 까지 반환하지 않습니다.
maximumAge
캐시된 위치 값을 반환 받아도 되는 최대한의 시간을 천분의 일초 단위로 양의 정수로 나타냅니다. 0을 지정하면 캐시된 위치를 사용하지 말라는 의미이고, 반드시 실제 현재 위치를 수집하고자 하는 것을 나타냅니다. Infinity를 지정하면 장치는 캐시된 위치 정보 중 언제 수집되었는지 개의치 않고 반환 합니다.
watchPosition 함수의 사용은 아래와 같습니다.:
```
function geo_success(position) {
  do_something(position.coords.latitude, position.coords.longitude);
}

function geo_error() {
  alert("위치 정보를 사용할 수 없습니다.");
}

var geo_options = {
  enableHighAccuracy: true, 
  maximumAge        : 30000, 
  timeout           : 27000
};

var wpid = navigator.geolocation.watchPosition(geo_success, geo_error, geo_options);


```

