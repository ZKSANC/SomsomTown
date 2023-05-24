<img width="20%" src="https://github.com/ZKSANC/wsb/assets/114744493/bd0fff97-8e03-4cda-8516-81deb50aa147"/>

# 솜솜마을
봉제인형 MES 생산관리 사이트 
- Website : http://itwillbs20.cafe24.com/
- 개발 기간 : 2023.03.09~2023.04.14 
- 팀 구성 : 6명 (기획, 프론트엔드, 백엔드 공동참여) 

## 서비스 내용
봉제인형 제조업체의 생산성 향상을 위한 봉제인형 MES 생산관리 사이트입니다. 

관리자와 작업자가 쉽게 확인 가능하고, 생산 작업 프로세스를 효율적으로 관리하는 체계적인 시스템을 제공하고자 서비스 기획을 시작하게 되었습니다. 
- 생산, 자재, 기준정보, 영업, 시스템 관리 
- 각 페이지에서 데이터 조회, 추가, 수정, 삭제 및 검색 

## 담당 역할
- 사이트 기획 및 프로젝트 전체 진행 주도
- 담당 페이지 백엔드, 프론트엔드 개발
- 기준정보 관리> 거래처 관리 - 거래처 검색, 조회, 추가, 수정, 삭제 
- 영업 관리> 출하 현황 - 검색, 조회, 삭제, QR코드 출력, 엑셀파일 다운 
- 생산 관리> 생산실적 현황 - 검색, 조회

## 개발 환경
- 언어 : Java (JDK 1.8), JavaScript ES6, HTML5/CSS3
- 서버 : Apache Tomcat 9.0, AWS EC2 
- 프레임워크 : Spring(4.3.18)
- DB : MySQL(8.0.32), AWS RDS
- 개발 도구 : Eclipse, Github
- API, 라이브러리 : KAKAO Address API, jQuery(3.6.3), MyBatis(3.4.1), Bootstrap

## 서비스 기획 
- 간트 차트
![2차 간트차트](https://github.com/ZKSANC/wsb/assets/114744493/02b34c63-147d-47b4-886f-edb89f375879)
- ERD
![2차 erd](https://github.com/ZKSANC/wsb/assets/114744493/451f0664-a5c7-4905-a46a-6904c41fe854)

## 개발 코드  
#### 기준정보 관리> 거래처 관리 페이지
![리드미 거래처 관리](https://github.com/ZKSANC/wsb/assets/114744493/aebc4fea-662d-4fc1-9996-bde6e5a5b6ef)
- Model [ClientDAO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/ClientDAO.java), [ClientDAOImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/ClientDAOImpl.java), [ClientDTO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/domain/ClientDTO.java), [ClientService](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/ClientService.java), [ClientServiceImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/ClientServiceImpl.java), [ClientMapper](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/resources/mappers/clientMapper.xml)
- View [Client](https://github.com/ZKSANC/SomsomTown/tree/master/2Project_MES/src/main/webapp/WEB-INF/views/client)
- Controller [ClientController](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/controller/ClientController.java)
#### 영업 관리> 출하 현황 페이지 
![리드미 출하현황](https://github.com/ZKSANC/wsb/assets/114744493/5f49863d-ce73-4843-82f7-2796b7d49c32)
- Model [ShipDAO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/ShipDAO.java), [ShipDAOImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/ShipDAOImpl.java), [ShipDTO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/domain/ShipDTO.java), [ShipService](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/ShipService.java), [ShipServiceImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/ShipServiceImpl.java), [ShipMapper](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/resources/mappers/shipMapper.xml)
- View [ShipCurrentInfo](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/webapp/WEB-INF/views/ship/shipCurrentInfo.jsp), [ClientSearchPop](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/webapp/WEB-INF/views/client/clientSearchPop.jsp), [ProductSearchPop](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/webapp/WEB-INF/views/product/productSearchPop.jsp)
- Controller [ShipController](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/controller/ShipController.java)
#### 생산 관리> 생산실적 현황 페이지 
![리드미 생산실적현황1](https://github.com/ZKSANC/wsb/assets/114744493/f72d7513-42f9-494d-891c-552e05863ba2)
![리드미 생산실적현황2](https://github.com/ZKSANC/wsb/assets/114744493/dff2fa00-1afb-4ade-a0dd-6ecdae479a64)
- Model [PerformanceDAO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/PerformanceDAO.java), [PerformanceDAOImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/dao/PerformanceDAOImpl.java), [PerformanceDTO](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/domain/PerformanceDTO.java), [PerformanceService](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/PerformanceService.java), [PerformanceServiceImpl](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/service/PerformanceServiceImpl.java), [PerformanceMapper](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/resources/mappers/performanceMapper.xml)
- View [PerformanceCurrentInfo](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/webapp/WEB-INF/views/performance/performanceCurrentInfo.jsp), [ProductSearchPop](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/webapp/WEB-INF/views/product/productSearchPop.jsp)
- Controller [PerformanceController](https://github.com/ZKSANC/SomsomTown/blob/master/2Project_MES/src/main/java/com/project/controller/PerformanceController.java)
