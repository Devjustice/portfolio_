# 13년 html5 정리

#### 웹 스토리지 
>클라이언트 측에 간단한 데이터를 저장하기 위한 api 제공
>웹 스토리지와 쿠키의 기능은 비슷하지만 쿠키보다 더 많은 저장공간 사용

#### 레이아웃요소 
>header, nav, section, article, footer

### 특정문구를 시각적이고 의미적으로 강조되기 위해
> mark 인용할때 택스트를 강조함

#### 마지막 연결된 지점과 최초의 지점을 자동으로 연결하는 역할을 하는 것 
>closePath() 시작점으로 다시 돌아와 선을 그린다

#### lineJoin의 속성
>도형을 이루는 선이나 모서리 모양을 결정 

>round
>설명 : 도형의 모서리를, 연결되는 부분들의 공통 끝점을 중심으로 하는 원 모양으로 만듭니다. 
>이때 원의 반지름은 선의 두께와 같습니다.

>bevel
>설명 : 도형의 모서리를, 연결되는 부분들의 공통 끝점에서 세모 모양으로 만듭니다.

>miter
>설명 : 도형의 모서리를, 두 부분의 바깥쪽 테두리 선을 각각 연장하여 교차된 점으로 생긴 마름모꼴 모양으로 만듭니다. 
>miterLimit 속성값에 따라 모양이 달라집니다.


#### audio요소
>소리 혹은 오디오 스트림을 들려줍니다.

>        src  | 미디어 자원의 주소를 제공합니다.

>autoplay | 미디어를 자동 재생합니다.

>      loop | 미디어를 반복 재생합니다.

> controls | 사용자 에이전트가 제공하는 기본 콘트롤러를 사용합니다.



#### 미디어와 관련된 이밴트는 timeupdate
>오디오 / 비디오의 재생 위치가 변경 될 때 timeupdate 이벤트가 발생합니다.


#### 폼요소 추가 속성
>required 필수 입력 항목을 지정

>minlength 입력항목의 최소길이 지정

>placeholder 입력타입에 기본 텍스트 지정

>pattern 정규식을 활용하여 해당 값이 패턴인지 검사

>dirname 폼을 제출할 때 속성을 사용한 요소의 방향성을 지시

#### 폼요소 
>datalist input 요소의 list속성과 함께 사용하여 콤보상자를 정의

>keygen 안전한 데이터 송수신을 위한 암호키 생성

>output 폼내 연산결과를 출력

#### 표현을 위한 요소
>progress 어떤작업의 원료진행 상황을 나타낼때 사용

>meter 일정 범위 안의 값이나 분포비율 등을 나타낼때 사용

#### title 속성
##### 요소에 대한 조언 정보를 나타냄
> a요소 

>대상의 제목이나 설명을 나타내는데 사용 `<a herf="http://naver.com"title="네이버">http://haver.com/</a>`

>a[title^="face"]{font-size 40px ;}


#### css 글꼴 속성과 속성 값
> font-family: cursive

#### word-break 속성의 속성값중 텍스트가 한글일 경우 띄어쓰기 기준으로 줄바꿈 지정 하는 것은 keep-all

#### css 배경이미지 관련 속성
> background-origin ,clip, size


#### css 박스 라운딩 
>border-radius

#### var value = localStorage["computer"]

#### 웹소켓 사용 이벤트
> onmessage

#### 오프라인 접근위한 메니페스트 파일에서 대체되는 리소스를 지정하기 위한 부분
>fallback 섹션

#### navigator 겍체의 getCurrentPossition() 3번째인자에서 지정할 수있는 값
> timeout
