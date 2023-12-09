import 'package:flutter/material.dart';
import 'package:flutterweb/Screens/First/Portfolios/Portfolio.dart';

Portfolio01() => Portfolio(
      TitleColor: Colors.blue,
      Title01: 'Fishermap',
      Title02: ' - 귀어들을 위한 모바일 앱 서비스',
      UseTool: 'Dart(Flutter), Python(Flask), Git',
      Period: '2023.11.13 - 2023.11.20 (7일)',
      Team: '앱 개발자 2명, 인공지능 개발자 1명, App 85 % Server 10 %',
      Expalin:
          '청년 귀어들을 위한 서비스입니다. 지역별 날씨, 해안 정보, 어종 예측, 어선 중계, 귀어지원사업 공지 모음 기능등을 제공합니다. 인터렉티브한 앱을 만들기위해 애니메이션 효과에 집중하여 만든 앱입니다.',
      retrospect:
          "부산 해양데이터 해커톤에 참여하여 만든 서비스입니다. 단 기간 내에 개발을 해야했기에 비교적 간편한 상태관리 라이브러리인 GetX를 사용해서 구현했습니다. CustomCliper, CustomPainter 등을 사용해서 파도를 표현하였고, Container에 눈과 입을 그렸습니다. Http를 사용하여 웹 크롤링 기능이 가능하다는 것을 알 수 있었습니다. ZWidget을 사용해서 글자에 3D 효과를 더했으며, Flutter가 3D를 기반으로 렌더링 된다는 사실을 알 수 있었습니다.",
      GitURL: '',
      InitImg: 1,
      Range: 6,
    );

Portfolio02() => Portfolio(
      TitleColor: Colors.green,
      Title01: '우리의 정원',
      Title02: ' - 플랜테리어를 위한 모바일 앱 서비스',
      UseTool: 'Dart(Flutter), Python(Flask), Git',
      Period: '2023.11.09 - 2023.11.11 (3일)',
      Team: '앱 개발자 3명, 백엔드 개발자 1명, App 85 % Server 30 %',
      Expalin:
          '플렌테리어 입문자들을 위한 서비스입니다. 주변 이웃들의 식물들의 환경을 수분량, 조도량 등의 그래프로 확인을 할 수 있습니다. 주변 플랜테리어를 활용한 가게의 식물들을 확인할 수 있으며, 나의 식물을 조도량, 수분량을 추적하며 관리를 할 수 있습니다.',
      retrospect:
          "2023 컨텐츠 유니버스 코리아 해커톤에 참여하여 만든 서비스입니다. GetX를 사용해서 상태관리를 하였습니다. Kakao Map API를 사용해서 지도를 그렸고, 화면 페이지별로 파일을 구분하여 코딩을 하였습니다. http 통신을 하여 ChatGPT API를 사용했으며, syncfusion_flutter_charts 패키지를 사용하여 차트를 그렸습니다.",
      GitURL: '',
      InitImg: 7,
      Range: 7,
    );

Portfolio03() => Portfolio(
      TitleColor: Colors.amber.shade700,
      Title01: 'PoppinCat',
      Title02: ' - 댄서를 위한 모바일 앱 서비스',
      UseTool: 'Dart(Flutter), GitLab',
      Period: '2023.04.23 - 2023.05.31 (1달)',
      Team: 'Dlu2사 단기 인턴 - Flutter 리팩토링',
      Expalin:
          '춤을 쉽게 익힐 수 있도록 도와주는 앱입니다. AR기능을 활용하여 음악에 맞춰 댄서가 녹화 화면에 띄워지고, 그 댄서를 보고 노래에 맞춰 춤을 추는 영상을 녹화할 수 있는 앱입니다.',
      retrospect:
          "Dlu2 회사에 리팩토링 업무로 일했던 서비스입니다. 사내 개발자가 따로 없고 파키스탄인으로 이루어진 개발자팀이 개발을 전담하고 있었습니다. 영어로 의사소통을 진행하였고, Bloc로 상태관리를 하였습니다. 로딩바가 불필요한 공간을 차지하는 부분을 개선시켰고, 기능별 데이터를 따로 저장하는 것이 아니라 하나의 변수로 관리를 했기에 매번 서버로부터 데이터 파일들을 불러와야했습니다. Pre-Loading 기능과 데이터를 분리함으로 이러한 문제를 개선했습니다. 이외에 UI/UX 개선을 통해 사용자 경험을 향상시켰습니다.",
      GitURL: '',
      InitImg: 14,
      Range: 4,
    );
Portfolio04() => Portfolio(
      TitleColor: Colors.purple.shade700,
      Title01: 'CryptoTrend',
      Title02: ' - 암호화폐 시세 변동 알림 모바일 앱 서비스',
      UseTool: 'Dart(Flutter), Python(Django), Firebase, Git',
      Period: '2023.07.01 - 2023.07.29 (1달)',
      Team: '1인 개발',
      Expalin:
          '암호화폐 거래 하는 사람들을 위한 서비스입니다. Kelly Bet 공식으로 본인의 수익률과 손실률, 승률을 입력하면 최적의 투자 금액을 알려줍니다. 또한 본인이 희망하는 암호화폐의 가격을 실거래가, 변동률, 거래량 등을 그래프로 확인할 수 있으며, 변동률이 큰 암호화폐가 탐지되었을 때 알림을 받을 수 있습니다.',
      retrospect:
          "내 자산관리를 할 수 있는 방법을 고민하다가 제작한 서비스입니다. 암호화페 시장 중에서 가장 큰 시장인 Binance 앱을 보면, 24시간 단위로만 변동률을 안내하고 있었습니다. 단 기간 내에, 다양한 단위로 변동률을 확인할 수 있습니다. Binance API를 주로 사용하였으며, Material 3 디자인을 적용한 것이 특징입니다. 변동률이 큰 암호화폐 감지를 위해 Python(Django)로 알림을 보낼 수 있도록 구성하였습니다.",
      GitURL: '',
      InitImg: 18,
      Range: 3,
    );
Portfolio05() => Portfolio(
      TitleColor: Colors.black,
      Title01: 'Someone',
      Title02: ' - 연락처 기반 익명 칭찬 앱 서비스',
      UseTool: 'Dart(Flutter), Python(Django), Firebase, Git',
      Period: '2023.01.10 - 2023.03.25 (2달)',
      Team: '1인 개발',
      Expalin:
          '미국에서 만든 GAS 앱을 모티브로 만든 모바일 앱 서비스입니다. GAS는 익명으로 학교 내에 있는 친구들 중에서 질문에 맞는 사람을 투표하는 앱인데, Someone은 연락처 기반으로 질문에 맞는 사람을 투표하는 서비스입니다. 모든 연락처로 하면 사람이 너무 많아서 차단 기능도 포함되어 있습니다. 120여개의 질문 리스트를 만들었습니다.',
      retrospect:
          'GAS앱의 취지가 좋아서, 국내 도입이 필요하다 판단하고 만들었습니다. GetX로 상태관리를 진행하였고, Firebase와 flutter_local_notifications패키지를 사용하여 푸시 알림 기능을 적용했습니다. Purchase_flutter 패키지로 유료 결제 기능을 포함하여 출시를 했었습니다. 연락처를 다루는 기능이 있어, 개인정보보호법에 위법하지 않도록 주의를 기울여 만들었습니다. 포스터를 제작하여 교내 부착하고, Instagram 마케팅도 진행을 했었던 애착있는 서비스입니다.',
      GitURL: '',
      InitImg: 21,
      Range: 7,
    );

Portfolio06() => Portfolio(
      TitleColor: Colors.blue.shade700,
      Title01: 'Node',
      Title02: ' - 아이디어 공유 및 팀 빌딩 앱 서비스',
      UseTool: 'Dart(Flutter), Git',
      Period: '2022.11.08 - 2022.12.21 (6주)',
      Team: '1인 개발',
      Expalin:
          '개발자, 기획자, 디자이너를 하나의 팀으로 꾸릴 수 있도록 도와줄 시 있는 서비스입니다. 자기 소개를 등록함으로 시작을 하고, 아이디어를 등록한 후에 사람을 모을 수 있습니다. 등록된 아이디어는 창의성, 수익성, 필요성 세 요소로 1-5점으로 평가 받을 수 있습니다. Yonsei 계정으로 로그인 할 시, 교내 개발 동아리에 지원할 수 있는 기능이 포함되어 있습니다.',
      retrospect:
          'RiverPod를 사용하여 상태관리를 진행했습니다. User Generate Content (UGC) 서비스를 출시하기 위해 필요한 규칙들을 알 수 있었습니다. 유저를 관리하는 기능 (차단, 제제)과 Filtering 기능을 포함하여 출시를 하였습니다. SNS 로그인 기능을 구현하였습니다. 교내 커뮤니티에 Node 앱에서 아이디어를 등록하면 100개 한정으로 햄버거를 증정하는 마케팅을 진행하였으나, 냉랭한 반응에 고객 응대에 대해서 다시금 생각해볼 수 있었던 서비스입니다.',
      GitURL: '',
      InitImg: 28,
      Range: 7,
    );
