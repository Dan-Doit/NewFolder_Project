--CREATE TABLE 
CREATE TABLE "MEMBER"(
ME_ID NVARCHAR2(12) NOT NULL,
ME_PWD NVARCHAR2(15) NOT NULL,
ME_ADD NVARCHAR2(30) NOT NULL,
ME_NAME NVARCHAR2(10) NOT NULL,
ME_LEVEL NUMBER(1)
)TABLESPACE BIRDFILE;

ALTER TABLE MEMBER
ADD CONSTRAINT ME_ID_PK PRIMARY KEY (ME_ID);

INSERT INTO "MEMBER" VALUES('TEST' , '1234' ,'서울시 강남구' , '테스트계정' , '0');
INSERT INTO "MEMBER" VALUES('ADMIN' , '1234' ,'마음속' , '어드민계정' , '1');
INSERT INTO "MEMBER" VALUES('APPLY1' , '1234' ,'인천 중구 관창북로' , '추첨계정1' , '1');
INSERT INTO "MEMBER" VALUES('APPLY2' , '1234' ,'광주 남구 화산로' , '추첨계정2' , '1');
INSERT INTO "MEMBER" VALUES('APPLY3' , '1234' ,'부산 남구 해운대로' , '추첨계정3' , '1');
INSERT INTO "MEMBER" VALUES('APPLY4' , '1234' ,'대구 서구 반야월로' , '추첨계정4' , '1');
-----------------------------------------------------------------------------
CREATE TABLE "CATEGORY"(
CA_CODE NCHAR(2) NOT NULL,
CA_TITLE NVARCHAR2(5) NOT NULL
)TABLESPACE BIRDFILE;

ALTER TABLE CATEGORY
ADD CONSTRAINT CA_CODE_PK PRIMARY KEY (CA_CODE);

INSERT INTO CATEGORY VALUES('01' , 'Korean Foods');
INSERT INTO CATEGORY VALUES('02' , 'Asian Foods');
INSERT INTO CATEGORY VALUES('03' , 'Chinese Foods');
INSERT INTO CATEGORY VALUES('04' , 'Western Foods');
INSERT INTO CATEGORY VALUES('05' , 'Fast Foods');
INSERT INTO CATEGORY VALUES('06' , 'Desserts');
INSERT INTO CATEGORY VALUES('07' , 'Just');
-------------------------------------------------------------------------------
CREATE TABLE "STORE"(
ST_CODE NCHAR(7) NOT NULL,
ST_CACODE NCHAR(2) NOT NULL,
ST_NAME NVARCHAR2(15) NOT NULL,
ST_LOCATION NVARCHAR2(30) NOT NULL,
ST_COMMENT NVARCHAR2(300),
ST_TEL NVARCHAR2(11) NOT NULL,
ST_STATE NCHAR(1),
ST_FILENAME NVARCHAR2(200)
)TABLESPACE BIRDFILE;

ALTER TABLE STORE
ADD CONSTRAINT ST_CODE_PK PRIMARY KEY(ST_CODE)
ADD CONSTRAINT ST_CACODE_FK FOREIGN KEY (ST_CACODE) REFERENCES CATEGORY(CA_CODE);


INSERT INTO STORE VALUES('ICND013','02','Pho Roi','인천광역시 미추홀구 학익동 1-1','베트남 쌀국수 전문점','01000000000','L','images/포로이.jpg');
INSERT INTO STORE VALUES('ICND014','02','Kuma Curry','인천광역시 미추홀구 학익동 1-2','일식 카레 및 돈카츠 전문점','01000000000','L','images/쿠마카레.jpg');
INSERT INTO STORE VALUES('ICND015','02','요서무라','인천광역시 미추홀구 학익동 1-3','일식 전문점','01000000000','L','images/요서무라.jpg');
INSERT INTO STORE VALUES('ICND016','03','수타손짜장','인천광역시 미추홀구 학익동 1-4','동네에서 흔히볼수있는 중국집','01000000000','L','images/수타손짜장.jpg');
INSERT INTO STORE VALUES('ICND017','03','시진핑','인천광역시 미추홀구 학익동 1-5','중국집 입니다.','01000000000','L','images/시진핑.jpg');
INSERT INTO STORE VALUES('ICND018','03','천안문','인천광역시 미추홀구 학익동 1-6','중국집 입니다.','01000000000','L','images/천안문.jpg');
INSERT INTO STORE VALUES('ICND019','06','Gong cha','인천광역시 미추홀구 학익동 2-1','황실에 바치는 차(茶), 공차를 소개합니다.
貢茶는 바칠 공, 차 차의 뜻으로 중국 황실에서만
맛 볼 수 있던 프리미엄 퀄리티의 차(茶)를 바친다는
의미를 지니고 있습니다.
중국 황실에 진상하던 대만의 프리미엄 잎차를
신선하게 우려낸 차, 그것이 바로 공차랍니다.','01000000000','L','images/공차.jpg');

INSERT INTO STORE VALUES('ICND020','06','Tiger Sugar','인천광역시 미추홀구 학익동 2-2','BRAVE AS A TIGER
용맹함으로 새로운 음료 문화를 창조한 흑당버블밀크티의 원조
타이거 슈가

특별한 재료와 정성으로 만들어낸 차별화된
맛과 미를 전세계에 알리다.','01000000000','L','images/타이거슈가.jpg');

INSERT INTO STORE VALUES('ICND021','06','baskin robbins','인천광역시 미추홀구 학익동 2-3','베스킨라빈스(Baskin Robbins)는 미국의 아이스크림 프랜차이즈이다. 세계적으로 4,500개가 넘는 매장이 있고, 미국에 약 2,300개의 매장을 두고 있다.[1] 배스킨라빈스는 "세상에서 가장 큰 아이스크림 프랜차이즈"라고 불러 달라고 주장한다. 현재 배스킨라빈스는 던킨 도너츠, 미스터 도넛과 함께, 던킨 브랜드의 자회사 계열에 속하고 있다','01000000000','L','images/베라.jpg');
INSERT INTO STORE VALUES('ICND022','04','Teisty Burger','인천광역시 미추홀구 학익동 2-4','테이스티(TEISTY BUGER)는 테이사장의 테이(TEI)와 맛있는(TEISTY) 그리고 버거(BURGER)를 합쳐 지어짐','01000000000','L','images/테이스티버거.jpg');
INSERT INTO STORE VALUES('ICND023','06','Randys Dounts','인천광역시 미추홀구 학익동 3-4',' 전문가가 매장에서 직접 만드는 신선하고 다양한 수제 도넛','01000000000','L','images/랜디스도넛.jpg');
INSERT INTO STORE VALUES('ICND024','04','Taco chily','인천광역시 미추홀구 학익동 560번길','멕시코의 대표적인 대중적 음식의 하나로, 토르티야에 여러 가지 요리를 싸서 먹는 것','01000000000','L','images/타코.jpg');
INSERT INTO STORE VALUES('ICND025','04','엄마의손길','인천광역시 미추홀구 학익동 힘의길','빠르게보다 ALL바르게 엄마의 정성을 담은 수제버거 AND 치킨 브랜드 맘스터치 입니다.','01000000000','L','images/맘스터치.jpg');
INSERT INTO STORE VALUES('ICND026','05','Subway','인천광역시 미추홀구 학익동 지하철','미국 프랜차이즈 1위! 써브웨이는 매장수 및 분포지역 기준,
Quick Service Restaurant(QSR) 부분 No.1 프랜차이즈입니다.','01000000000','L','images/서브웨이.jpg');
INSERT INTO STORE VALUES('ICND027','05','Domino pizza','인천광역시 미추홀구 학익동 606번길','고객이 원하는 가장 맛있고 영양 높은 피자를 가장 친절하게 고객들에게 제공하는 세계적인 피자브랜드','01000000000','L','images/도미노피자.jpg');
INSERT INTO STORE VALUES('ICND011','02','Domino pizza','인천광역시 미추홀구 학익동 606번길','고객이 원하는 가장 맛있고 영양 높은 피자를 가장 친절하게 고객들에게 제공하는 세계적인 피자브랜드','01000000000','L','images/도미노피자.jpg');

INSERT INTO STORE VALUES('ICND028','01','따뜻한 밥','인천광역시 미추홀구 학익동 막가는길','대단하진않지만 소박한 집밥맛을 느낄수있는 한식가게입니다.','01000000000','L','images/뜨신밥.jpg');
INSERT INTO STORE VALUES('ICND099','05','군대리야','인천광역시 미추홀구 학익동','군대버거','01095251639','L','images/군대.jpg');
UPDATE "STORE" SET ST_CACODE='04' WHERE ST_NAME = '요서무라';
UPDATE "STORE" SET ST_CACODE='04' WHERE ST_NAME = 'Pho Roi';
UPDATE "STORE" SET ST_CACODE='04' WHERE ST_NAME = 'Kuma Curry';
-------------------------------------------------------------------------------
CREATE TABLE FOODS(
FO_CODE NCHAR(4) NOT NULL,
FO_CACODE NCHAR(2) NOT NULL,
FO_NAME NVARCHAR2(10) NOT NULL,
FO_COMMONPRICE NUMBER(6) NOT NULL
FO_FILENAME NVARCHAR2(50),
FO_COMMENT NVARCHAR2(100),
FO_ENNAME NVARCHAR2(20)
)TABLESPACE BIRDFILE;

ALTER TABLE FOODS
ADD CONSTRAINT FO_CODE_PK PRIMARY KEY(FO_CODE)
ADD CONSTRAINT FO_CACODE_FK FOREIGN KEY (FO_CACODE) REFERENCES CATEGORY(CA_CODE);

INSERT INTO FOODS VALUES('0001','01','국밥','7500');
INSERT INTO FOODS VALUES('0002','01','제육볶음','7000');
INSERT INTO FOODS VALUES('0003','02','돈카츠','10000');
INSERT INTO FOODS VALUES('0004','02','텐동','8000');
INSERT INTO FOODS VALUES('0005','03','탕수육','13000');
INSERT INTO FOODS VALUES('0006','03','양장피','25000');
INSERT INTO FOODS VALUES('0007','04','한우스테이크','30000');
INSERT INTO FOODS VALUES('0008','04','파스타','12000');
INSERT INTO FOODS VALUES('0009','05','군대리아','500');
INSERT INTO FOODS VALUES('0010','05','고순튀','0');
INSERT INTO FOODS VALUES('0011','01','비빔밥','8000');
INSERT INTO FOODS VALUES('0012','01','된장찌개','7000');
INSERT INTO FOODS VALUES('0013','01','계란찜','4000');
INSERT INTO FOODS VALUES('0014','01','냉면','8000');
INSERT INTO FOODS VALUES('0015','01','육회','20000');
INSERT INTO FOODS VALUES('0016','01','불고기','7000');
INSERT INTO FOODS VALUES('0017','01','삼겹살','12000');
INSERT INTO FOODS VALUES('0018','02','모듬회','35000');
INSERT INTO FOODS VALUES('0019','02','초밥','15000');
INSERT INTO FOODS VALUES('0020','02','장어덮밥','50000');
INSERT INTO FOODS VALUES('0021','02','연어덮밥','12000');
INSERT INTO FOODS VALUES('0022','02','메밀소바','12000');
INSERT INTO FOODS VALUES('0023','02','오코노미야끼','20000');
INSERT INTO FOODS VALUES('0024','02','야끼토리','5000');
INSERT INTO FOODS VALUES('0025','03','짬뽕','8000');
INSERT INTO FOODS VALUES('0026','03','볶음밥','8000');
INSERT INTO FOODS VALUES('0027','03','잡채밥','8000');
INSERT INTO FOODS VALUES('0028','03','우동','8000');
INSERT INTO FOODS VALUES('0029','03','마파두부','8000');
INSERT INTO FOODS VALUES('0030','03','깐풍기','25000');
INSERT INTO FOODS VALUES('0031','03','해물 누룽지탕','35000');
INSERT INTO FOODS VALUES('0032','04','플레터','30000');
INSERT INTO FOODS VALUES('0033','04','미고랭','12000');
INSERT INTO FOODS VALUES('0034','04','나시고랭','10000');
INSERT INTO FOODS VALUES('0035','04','크림 파스타','12000');
INSERT INTO FOODS VALUES('0036','04','감바스','18000');
INSERT INTO FOODS VALUES('0037','05','떡만두국','0');
INSERT INTO FOODS VALUES('0038','05','해물비빔소스','0');
INSERT INTO FOODS VALUES('0039','05','소세지 야채 볶음','0');
INSERT INTO FOODS VALUES('0040','05','돼지고기 김치볶음','0');
INSERT INTO FOODS VALUES('0041','05','군대식 닭튀김','0');
INSERT INTO FOODS VALUES('0055','06','STARBUCKS','0','images/cof.jpg','Naturally No. 1 among coffee brands','STARBUCKS');
INSERT INTO FOODS VALUES('0056'	,'06'	,'EDIYA','0','images/cof2.jpg'	,'Korean coffee chain','EDIYA COFFEE');
INSERT INTO FOODS VALUES('0057','06','BLUE BOTTLE','0','images/cof3.jpg','I really dont know','BLUE BOTTLE');
INSERT INTO FOODS VALUES('0058','06','A TWOSOME PLACE','0','images/cof4.jpg','CJ Groups dessert cafe','	A TWOSOME PLACE');
INSERT INTO FOODS VALUES('0059','06','Gong cha','0','images/cof5.png','Milk tea brand','Gong cha');
INSERT INTO FOODS VALUES('0060','06','Caffe bene','0','images/cof6.jpg','I like this place','Caffe bene');
INSERT INTO FOODS VALUES('0061','06','The Coffee Bean','0','images/cof7.jpg','Specialty Coffee Tea','The Coffee Bean');
INSERT INTO FOODS VALUES('0062','06','TIGER SUGAR','0','images/cof8.jpg','A cafe famous for brown sugar drinks','TIGER SUGAR');
INSERT INTO FOODS VALUES('0063','06','SULBING','0','images/cof9.jpg','Where to go to shaved ice','SULBING');
INSERT INTO FOODS VALUES('0064','06','COFFINE GURUNARU','0','images/cof10.jpg','Where come COFFINE GURUNARU','COFFINE GURUNARU');
INSERT INTO FOODS VALUES('0065','06','baskin robbins','0','images/cof11.jpg','Ice cream shop','baskin robbins');
INSERT INTO FOODS VALUES('0066','06','Natuur','0','images/cof12.jpg','Brand by Lotte Confectionery','Natuur');
INSERT INTO FOODS VALUES('0067','06','YOGERPRESSO','0','images/cof13.jpg','Actually I dont know here','YOGERPRESSO');
INSERT INTO FOODS VALUES('0068','06','HOLLYS COFFEE','0','images/cof14.jpg','HOLLYS COFFEE','HOLLYS COFFEE');
INSERT INTO FOODS VALUES('0069','06','TOM N TOMS COFFEE','0','images/cof15.jpg','Pretzels,breads made in stores','TNTS COFFEE');
INSERT INTO FOODS VALUES('0070','06','DROPTOP','0','images/cof16.jpg','Special coffee','DROPTOP');

INSERT INTO FOODS VALUES('0012','03','Nanja wanseu','0','images/chi13.jpg','','Nanja wanseu');
INSERT INTO FOODS VALUES('0013','03','gochu japchae','0','images/chi14.jpg','','gochu japchae');
INSERT INTO FOODS VALUES('0014','03','Menbosha','0','images/chi15.jpg','','Menbosha');
INSERT INTO FOODS VALUES('0015','03','Dimsum','0','images/chi16.jpg','','Dimsum');
INSERT INTO FOODS VALUES ('0087','03','Jajang myeon','6000','.images/chi.jpg','','Jajang myeon');
INSERT INTO FOODS VALUES('0074','04','Tomato Pasta','10000','.images/wesfood.jpg','Pasta of Tomato Sauce','Tomato Pasta');
INSERT INTO FOODS VALUES('0075','04','Pork cutlet','8000','.images/wesfood3.jpg','Fried a pork','Pork cutlet');
INSERT INTO FOODS VALUES('0076','04','Pizza','15000','.images/wesfood5.jpg','Baked dou upside Souce and Cheese','Pizza');
INSERT INTO FOODS VALUES('0077','04','Salad','8000','.images/wesfood6.jpg','A mixture of raw or cold foods','Salad');
INSERT INTO FOODS VALUES('0078','04','Sandwich','7000','.images/wesfood7.jpg','Two slices of bread with a layer of food','Sandwich');
INSERT INTO FOODS VALUES('0079','04','Taco','7000','.images/wesfood8.jpg','Crispy Mexican pancake','Taco');
INSERT INTO FOODS VALUES('0080','04','Burrito','7000','.images/wesfood9.jpg','A tortilla folded over a filling','Burrito');
INSERT INTO FOODS VALUES('0081','04','Handmade Burger','10000','.images/wesfood10.jpg','a flat round of meat or vegetables in a bread','Handmade Burger');
INSERT INTO FOODS VALUES('0082','04',' Fried Chicken','17000','.images/wesfood11.png','Deep Fring Chicken',' Fried Chicken');
INSERT INTO FOODS VALUES('0083','04','Shrimp Pilaf','10000','.images/wesfood12.jpg','','Shrimp Pilaf');
INSERT INTO FOODS VALUES('0084','04','Gratin','10000','.images/wesfood13.jpg','','Gratin');
INSERT INTO FOODS VALUES('0085','04','VIPS','0','.images/wesfood14.jpg','','VIPS');
INSERT INTO FOODS VALUES('0086','04','ASHLEY','0','.images/wesfood15.jpg','','ASHLEY');
INSERT INTO FOODS VALUES('0088','02','California roll','0','.images/asia2.jpg','','California roll');
INSERT INTO FOODS VALUES('0089','02','Pad thai','0','.images/asia3.jpg','','Pad thai');
INSERT INTO FOODS VALUES('0090','02','Pho','0','.images/asia5.jpeg','','Pho');
INSERT INTO FOODS VALUES('0091','02','Japanese Curry','0','.images/asia6.jpg','','Japanese Curry');
INSERT INTO FOODS VALUES('0092','02','India Curr','0','.images/asia7.jpg','','India Curry');
INSERT INTO FOODS VALUES('0093','02','pupatpong curry','0','.images/asia8.jpg','','pupatpong curry');
INSERT INTO FOODS VALUES('0094','02','Donburi','0','.images/asia9.jpeg','','Donburi');
INSERT INTO FOODS VALUES('0095','02','Bunzza','0','.images/asia10.jpg','','Bunzza');
INSERT INTO FOODS VALUES('0096','02','Spring Rolls','0','.images/asia11.jpg','','Spring Rolls');
INSERT INTO FOODS VALUES('0097','02','Shabu-Shabu','0','.images/asia12.jpg','','Shabu-Shabu');
INSERT INTO FOODS VALUES('0098','02','Japanese Ramen','0','.images/asia13.jpg','','Japanese Ramen');
INSERT INTO FOODS VALUES('0099','02','Sashimi','0','.images/asia14.jpg','','Sashimi');
INSERT INTO FOODS VALUES('0100','02','Omelet rice','0','.images/asia16.jpg','','Omelet rice');
INSERT INTO FOODS VALUES('0116','05','MACDONALDS','0','images/fast.jpg','','MACDONALDS');
INSERT INTO FOODS VALUES('0101','05','LOTTERIA','0','images/fast1.jpeg','','LOTTERIA');
INSERT INTO FOODS VALUES('0102','05','MOMs TOUCH','0','images/fast2.jpg','','MOMs TOUCH');
INSERT INTO FOODS VALUES('0103','05','BON GOUSSE','0','images/fast3.jpg','','BON GOUSSE');
INSERT INTO FOODS VALUES('0104','05','BURGER KING','0','images/fast4.jpg','','BURGER KING');
INSERT INTO FOODS VALUES('0105','05','EGG DROP','0','images/fast5.jpeg','','EGG DROP');
INSERT INTO FOODS VALUES('0106','05','SUBWAY','0','images/fast6.png','','SUBWAY');
INSERT INTO FOODS VALUES('0107','05','CRY CHEESE BURGER','0','images/fast7.jpg','','CRY CHEESE BURGER');
INSERT INTO FOODS VALUES('0108','05','ISAAC TOAST','0','images/fast8.jpg','','ISAAC TOAST');
INSERT INTO FOODS VALUES('0109','05','KFC','0','images/fast9.png','','KFC');
INSERT INTO FOODS VALUES('0110','05','TACO BELL','0','images/fast10.jpg','','TACO BELL');
INSERT INTO FOODS VALUES('0111','05','SHAKE SHACK BURGER','0','images/fast11.jpg','','SHAKE SHACK BURGER');
INSERT INTO FOODS VALUES('0112','05','DUNKIN DONUTS','0','images/fast12.jpg','','DUNKIN DONUTS');
INSERT INTO FOODS VALUES('0113','05','KRISPYKREME DOUGHNUT','0','images/fast13.jpg','','KRISPYKREME DOUGHNUT');
INSERT INTO FOODS VALUES('0114','05','Pizza Hut','0','images/fast14.jpg','','Pizza Hut');
INSERT INTO FOODS VALUES('0115','05','Dominos Pizza','0','images/fast15.jpg','','Dominos Pizza');


--설계 문제로 인한 데이터값 수정

UPDATE FOODS SET FO_FILENAME = 'images/korfood14.png'
WHERE FO_NAME = '죽';
UPDATE FOODS SET FO_FILENAME = 'images/korfood12.png'
WHERE FO_NAME = '떡볶이';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '김치찌개';
UPDATE FOODS SET FO_FILENAME = 'images/korfood4.jpg'
WHERE FO_NAME = '닭볶음탕';
UPDATE FOODS SET FO_FILENAME = 'images/korfood5.jpg'
WHERE FO_NAME = '김밥';
UPDATE FOODS SET FO_FILENAME = 'images/korfood7.jpg'
WHERE FO_NAME = '칼국수';
UPDATE FOODS SET FO_FILENAME = 'images/korfood9.jpg'
WHERE FO_NAME = '감자탕';
UPDATE FOODS SET FO_FILENAME = 'images/korfood10.jpg'
WHERE FO_NAME = '순두부 찌개';
UPDATE FOODS SET FO_FILENAME = 'images/korfood11.jpg'
WHERE FO_NAME = '찜닭';
UPDATE FOODS SET FO_FILENAME = 'images/korfood12.jpg'
WHERE FO_NAME = '떡볶이';
UPDATE FOODS SET FO_FILENAME = 'images/korfood13.jpg'
WHERE FO_NAME = '쌈밥';
UPDATE FOODS SET FO_FILENAME = 'images/korfood14.jpg'
WHERE FO_NAME = '죽';
UPDATE FOODS SET FO_FILENAME = 'images/korfood15.jpg'
WHERE FO_NAME = '족발';
UPDATE FOODS SET FO_FILENAME = 'images/korfood16.jpg'
WHERE FO_NAME = '소주';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '막걸리';
UPDATE FOODS SET FO_FILENAME = 'images/asia15.jpg'
WHERE FO_NAME = '우동';
UPDATE FOODS SET FO_FILENAME = 'images/asia.jpg'
WHERE FO_NAME = '나시고랭';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood1.jpg'
WHERE FO_NAME = '크림 파스타';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '막걸리';
UPDATE FOODS SET FO_FILENAME = 'images/asia2.jpg'
WHERE FO_NAME = 'California roll';
UPDATE FOODS SET FO_FILENAME = 'images/aisa3.jpg'
WHERE FO_NAME = 'Pad thai';
UPDATE FOODS SET FO_FILENAME = 'images/asia5.jpg'
WHERE FO_NAME = 'Pho';
UPDATE FOODS SET FO_FILENAME = 'images/asia6.jpg'
WHERE FO_NAME = 'Japanese Curry';
UPDATE FOODS SET FO_FILENAME = 'images/asia7.jpg'
WHERE FO_NAME = 'India Curr';
UPDATE FOODS SET FO_FILENAME = 'images/asia8.jpg'
WHERE FO_NAME = 'pupatpong curry';
UPDATE FOODS SET FO_FILENAME = 'images/asia9.jpg'
WHERE FO_NAME = 'Donburi';
UPDATE FOODS SET FO_FILENAME = 'images/asia10.jpg'
WHERE FO_NAME = 'Bunzza';
UPDATE FOODS SET FO_FILENAME = 'images/asia12.jpg'
WHERE FO_NAME = 'Shabu-Shabu';
UPDATE FOODS SET FO_FILENAME = 'images/asia13.jpg'
WHERE FO_NAME = 'Japanese Ramen';
UPDATE FOODS SET FO_FILENAME = 'images/asia14.jpg'
WHERE FO_NAME = 'Sashimi';
UPDATE FOODS SET FO_FILENAME = 'images/asia16.jpg'
WHERE FO_NAME = 'Omelet rice';
UPDATE FOODS SET FO_FILENAME = 'images/asia11.jpg'
WHERE FO_NAME = 'Spring Rolls';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood.jpg'
WHERE FO_NAME = 'Tomato Pasta';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood3.jpg'
WHERE FO_NAME = 'Pork cutlet';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood5.jpg'
WHERE FO_NAME = 'Pizza';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood6.jpg'
WHERE FO_NAME = 'Salad';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood7.jpg'
WHERE FO_NAME = 'Sandwich';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood8.jpg'
WHERE FO_NAME = 'Taco';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood9.jpg'
WHERE FO_NAME = 'Burrito';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood10.jpg'
WHERE FO_NAME = 'Handmade Burger';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood11.jpg'
WHERE FO_NAME = ' Fried Chicken';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood12.jpg'
WHERE FO_NAME = 'Shrimp Pilaf';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood13.jpg'
WHERE FO_NAME = 'Gratin';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood14.jpg'
WHERE FO_NAME = 'VIPS';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood15.jpg'
WHERE FO_NAME = 'ASHLEY';
UPDATE FOODS SET FO_FILENAME = 'images/chi.jpg'
WHERE FO_NAME = 'Jajang myeon';
UPDATE FOODS SET FO_FILENAME = 'images/cof.jpg'
WHERE FO_NAME = 'STARBUCKS';
UPDATE FOODS SET FO_FILENAME = 'images/cof2.jpg'
WHERE FO_NAME = 'EDIYA';
UPDATE FOODS SET FO_FILENAME = 'images/cof3.jpg'
WHERE FO_NAME = 'BLUE BOTTLE';
UPDATE FOODS SET FO_FILENAME = 'images/cof4.jpg'
WHERE FO_NAME = 'A TWOSOME PLACE';
UPDATE FOODS SET FO_FILENAME = 'images/cof5.jpg'
WHERE FO_NAME = 'Gong cha';
UPDATE FOODS SET FO_FILENAME = 'images/cof6.jpg'
WHERE FO_NAME = 'Caffe bene';
UPDATE FOODS SET FO_FILENAME = 'images/cof7.jpg'
WHERE FO_NAME = 'The Coffee Bean';
UPDATE FOODS SET FO_FILENAME = 'images/cof8.jpg'
WHERE FO_NAME = 'TIGER SUGAR';
UPDATE FOODS SET FO_FILENAME = 'images/cof9.jpg'
WHERE FO_NAME = 'SULBING';
UPDATE FOODS SET FO_FILENAME = 'images/cof10.jpg'
WHERE FO_NAME = 'COFFINE GURUNARU';
UPDATE FOODS SET FO_FILENAME = 'images/cof11.jpg'
WHERE FO_NAME = 'baskin robbins';
UPDATE FOODS SET FO_FILENAME = 'images/cof12.jpg'
WHERE FO_NAME = 'Natuur';
UPDATE FOODS SET FO_FILENAME = 'images/cof13.jpg'
WHERE FO_NAME = 'YOGERPRESSO';
UPDATE FOODS SET FO_FILENAME = 'images/cof14.jpg'
WHERE FO_NAME = 'HOLLYS COFFEE';
UPDATE FOODS SET FO_FILENAME = 'images/cof15.jpg'
WHERE FO_NAME = 'TOM N TOMS COFFEE';
UPDATE FOODS SET FO_FILENAME = 'images/cof16.jpg'
WHERE FO_NAME = 'DROPTOP';
UPDATE FOODS SET FO_FILENAME = 'images/fuck1.jpg'
WHERE FO_NAME = '고순튀';
UPDATE FOODS SET FO_FILENAME = 'images/fuck2.jpg'
WHERE FO_NAME = '군대리아';
UPDATE FOODS SET FO_FILENAME = 'images/korfood1.jpg'
WHERE FO_NAME = '제육볶음';
UPDATE FOODS SET FO_FILENAME = 'images/asia1.jpg'
WHERE FO_NAME = '텐동';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE FO_NAME = '한우스테이크';
UPDATE FOODS SET FO_FILENAME = 'images/chi5.jpg'
WHERE FO_NAME = '잡채밥';
UPDATE FOODS SET FO_CACODE = '04'
WHERE FO_CACODE = '07';
UPDATE FOODS SET FO_ENNAME = 'UDON'
WHERE FO_NAME = '우동';
UPDATE FOODS SET FO_ENNAME = 'Nurungji tang'
WHERE FO_NAME = '해물 누룽지탕';
UPDATE FOODS SET FO_ENNAME = 'Ganpengji'
WHERE FO_NAME = '깐풍기';
UPDATE FOODS SET FO_ENNAME = 'Mapa Tofu'
WHERE FO_NAME = '마파두부';
UPDATE FOODS SET FO_ENNAME = 'Nasigoren'
WHERE FO_NAME = '나시고랭';
UPDATE FOODS SET FO_FILENAME = '.images/asia.jpg'
UPDATE FOODS SET FO_FILENAME = 'images/chi9.png' WHERE FO_NAME = '해물 누룽지탕';
UPDATE FOODS SET FO_FILENAME = 'images/fast6.png' WHERE FO_NAME = 'SUBWAY';
UPDATE FOODS SET FO_FILENAME = 'images/fast5.jpeg' WHERE FO_NAME = 'EGG DROP';
UPDATE FOODS SET FO_FILENAME = 'images/fast1.jpeg' WHERE FO_NAME = 'LOTTERIA';
UPDATE FOODS SET FO_FILENAME = 'images/fast9.png' WHERE FO_NAME = 'KFC';
UPDATE FOODS SET FO_FILENAME = 'images/asia9.jpeg' WHERE FO_NAME = 'Donburi';
UPDATE FOODS SET FO_FILENAME = 'images/fast14.jpeg' WHERE FO_NAME = 'Pizza Hut';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood11.png' , FO_NAME = 'Fride Chicken' WHERE FO_NAME = ' Fried Chicken';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood1.jpg' , FO_ENNAME = 'Cream Pasta'
WHERE FO_NAME = '크림 파스타';
UPDATE STORE SET ST_FILENAME = 'images/군대.jpg' 
WHERE ST_FILENAME = 'images/군대.JPG';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE ST_FILENAME = '';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE ST_FILENAME = 'images/';
UPDATE FOODS SET FO_FILENAME = 'images/chi6.jpg'
WHERE FO_NAME = '탕수육';
UPDATE FOODS SET FO_FILENAME = 'images/chi12.jpg'
WHERE FO_NAME = '양장피';
UPDATE FOODS SET FO_FILENAME = 'images/chi2.jpg'
WHERE FO_NAME = '짬뽕';
UPDATE FOODS SET FO_FILENAME = 'images/chi3.jpg'
WHERE FO_NAME = '볶음밥';
UPDATE FOODS SET FO_FILENAME = 'images/chi2.jpg'
WHERE FO_NAME = '잡채밥';
UPDATE FOODS SET FO_FILENAME = 'images/chi9.jpg'
WHERE FO_NAME = '해물 누룽지탕';
UPDATE FOODS SET FO_FILENAME = 'images/chi8.jpg'
WHERE FO_NAME = '깐풍기';
UPDATE FOODS SET FO_FILENAME = 'images/chi4.jpg'
WHERE FO_NAME = '마파두부';
UPDATE FOODS SET FO_FILENAME = 'images/chi11.jpg'
WHERE FO_NAME = '류산슬';
UPDATE FOODS SET FO_FILENAME = 'images/chi10.jpg'
WHERE FO_NAME = '팔보채';
UPDATE STORE SET ST_FILENAME = 'images/fast15.jpg' , ST_NAME='DOMINO PIZZA'
WHERE ST_CODE = 'ICND027';
UPDATE STORE SET ST_FILENAME = 'images/스테이크.jpg' , ST_NAME='Steak 101'
WHERE ST_NAME = 'Teisty Burger';
UPDATE STORE SET ST_FILENAME = 'images/파스타.jpg' , ST_NAME='cafe Pasta'
WHERE ST_NAME = '엄마의손길';

--------------------------------------------------------------------------------
CREATE TABLE COMMUNITY(
CO_MEID NVARCHAR2(12) NOT NULL,
CO_NUM NUMBER NOT NULL,
CO_DATE DATE NOT NULL,
CO_COMMENT NVARCHAR2(300),
CO_FILE NVARCHAR2(100),
CO_TITLE NVARCHAR2(50) NOT NULL
)TABLESPACE BIRDFILE;


ALTER TABLE COMMUNITY
ADD CONSTRAINT CO_MEID_NUM_PK PRIMARY KEY(CO_MEID,CO_NUM);
ADD CONSTRAINT CO_MEID_FK FOREIGN KEY (CO_MEID) REFERENCES "MEMBER"(ME_ID)
ADD CONSTRAINT CO_STCODE_FK FOREIGN KEY (CO_STCODE) REFERENCES STORE(ST_CODE);
------------------------------------------------------------------------------
CREATE TABLE HISTORY(
HI_MEID NVARCHAR2(12) NOT NULL,
HI_RANKDATE DATE NOT NULL,
HI_FOCODE NCHAR(4) NOT NULL
)TABLESPACE BIRDFILE;

ALTER TABLE HISTORY
ADD CONSTRAINT HI_RANKDATE_PK PRIMARY KEY(HI_RANKDATE)
ADD CONSTRAINT HI_MEID_FK FOREIGN KEY (HI_MEID) REFERENCES "MEMBER"(ME_ID)
ADD CONSTRAINT HI_FOCODE_FK FOREIGN KEY (HI_FOCODE) REFERENCES FOODS(FO_CODE);
--------------------------------------------------------------------------------
CREATE TABLE "EVENTS"(
EV_APCOCODE NCHAR(10) NOT NULL,
EV_APMEID NVARCHAR2(12) NOT NULL,
EV_EXPIRE DATE NOT NULL
)TABLESPACE BIRDFILE;

ALTER TABLE "EVENTS"
ADD CONSTRAINT EV_APMEID_APCOCODE_PK PRIMARY KEY(EV_APMEID,EV_APCOCODE);

ALTER TABLE "EVENTS"
ADD CONSTRAINT EV_APCOCODE_APMEID_FK FOREIGN KEY (EV_APCOCODE,EV_APMEID) REFERENCES APPLY(AP_COCODE,AP_MEID);
---------------------------------------------------------------------------------
CREATE TABLE COUPON(
CO_CODE NCHAR(10) NOT NULL,
CO_COMMENT NVARCHAR2(300) NOT NULL,
CO_DATE DATE NOT NULL,
CO_FUNCTION NVARCHAR2(10) NOT NULL,
CO_FILE NVARCHAR2(100) 
CO_STATE NCHAR(1) DEFAULT='F'
)TABLESPACE BIRDFILE;

ALTER TABLE COUPON
ADD CONSTRAINT CO_CODE_PK PRIMARY KEY(CO_CODE);
----------------------------------------------------------------------------------
CREATE TABLE APPLY(
AP_COCODE NCHAR(10) NOT NULL,
AP_MEID NVARCHAR2(12) NOT NULL,
AP_STATE NCHAR(1) DEFAULT='L'
)TABLESPACE BIRDFILE;

ALTER TABLE APPLY
ADD CONSTRAINT AP_COCODE_MEID_PK PRIMARY KEY (AP_COCODE,AP_MEID)
ADD CONSTRAINT AP_MEID_FK FOREIGN KEY (AP_MEID) REFERENCES "MEMBER"(ME_ID);
ALTER TABLE APPLY
ADD CONSTRAINT AP_COCODE_FK FOREIGN KEY (AP_COCODE) REFERENCES COUPON(CO_CODE);
---------------------------------------------------------------------------------
CREATE TABLE REPLY(
RE_CONUM NUMBER NOT NULL,
RE_DATE DATE NOT NULL,
RE_REPLY NVARCHAR2(100) NOT NULL,
RE_MEID NVARCHAR2(12) NOT NULL,
RE_COMEID NVARCHAR2(12) NOT NULL
)TABLESPACE BIRDFILE;


ALTER TABLE REPLY
ADD CONSTRAINT RE_CONUM_COMEID_FK FOREIGN KEY (RE_CONUM,RE_COMEID) REFERENCES COMMUNITY(CO_NUM,CO_MEID)
ADD CONSTRAINT RE_MEID_FK FOREIGN KEY (RE_MEID) REFERENCES MEMBER(ME_ID);
-- PRIMARY KEY 복수지정시 해당 PRIMARY KEY 모두를 들고와야함.
---------------------------------------------------------------------------------
CREATE TABLE THUMBS(
TH_MEID NVARCHAR2(12) NOT NULL,
TH_COMEID NVARCHAR2(12) NOT NULL,
TH_STATE NUMBER(1) NOT NULL,
TH_DATE DATE,
TH_CONUM NUMBER NOT NULL
)TABLESPACE BIRDFILE;

ALTER TABLE THUMBS     
ADD CONSTRAINT TH_COMEID_CONUM_STATE_MEID_PK PRIMARY KEY (TH_COMEID,TH_CONUM,TH_STATE,TH_MEID);
ALTER TABLE THUMBS   
ADD CONSTRAINT TH_COMEID_CONUM_FK FOREIGN KEY (TH_COMEID,TH_CONUM) REFERENCES COMMUNITY(CO_MEID,CO_NUM)
ADD CONSTRAINT TH_MEID_FK FOREIGN KEY (TH_MEID) REFERENCES MEMBER(ME_ID);
------------------------------------------------------------------------
CREATE TABLE USERLOG(
UL_MEID NVARCHAR2(12) NOT NULL,
UL_STATE NUMBER(2),
UL_DATE DATE
)TABLESPACE BIRDFILE;

ALTER TABLE USERLOG
ADD CONSTRAINT UL_MEID_DATE_PK PRIMARY KEY(UL_MEID,UL_DATE)
ADD CONSTRAINT UL_MEID_FK FOREIGN KEY (UL_MEID) REFERENCES MEMBER(ME_ID);

-----------------------------------------------------------------
--CREATE TABLE STOREMENU(
--SM_STCODE NCHAR(7) NOT NULL, 
--SM_FOCODE NCHAR(4) NOT NULL,
--SM_CODE NCHAR(2) NOT NULL,
--SM_PRICE NUMBER(6) NOT NULL,
--SM_NAME NVARCHAR2(15) NOT NULL,
--SM_COMMENT NVARCHAR2(50)
--)TABLESPACE BIRDFILE;
--
--ALTER TABLE STOREMENU
--ADD CONSTRAINT SM_STCODE_FOCODE_CODE_PK PRIMARY KEY(SM_STCODE,SM_FOCODE,SM_CODE)
--ADD CONSTRAINT SM_STCODE_FK FOREIGN KEY (SM_STCODE) REFERENCES "STORE"(ST_CODE)
--ADD CONSTRAINT SM_FOCODE_FK FOREIGN KEY (SM_FOCODE) REFERENCES FOODS(FO_CODE);
-----------------------------------------------------------------
--CREATE TABLE "STATISTICS"(
--STA_FOCODE NCHAR(4) NOT NULL,
--STA_MEID NVARCHAR2(12) NOT NULL,
--STA_DATE DATE NOT NULL
--)TABLESPACE BIRDFILE;
--
--ALTER TABLE STATISTICS
--ADD CONSTRAINT STA_FOCODE_MEID_DATE_PK PRIMARY KEY(STA_FOCODE,STA_MEID,STA_DATE)
--ADD CONSTRAINT STA_FOCODE_FK FOREIGN KEY (STA_FOCODE) REFERENCES FOODS(FO_CODE)
--ADD CONSTRAINT STA_MEID_FK FOREIGN KEY (STA_MEID) REFERENCES "MEMBER"(ME_ID);
------------------------------------------ VIEW 생성
--추천 VIEW
CREATE OR REPLACE VIEW THUMBVIEW 
AS
SELECT CO_MEID,
        CO_NUM,
        CO_DATE,
        CO_COMMENT,
        CO_THUMB,
        CO_FILE,
        CO_TITLE,
        ME_NAME,
         RANK() OVER(PARTITION BY 1 ORDER BY CO_THUMB DESC) AS LIST        
        FROM COMMUNITY
        
INNER JOIN "MEMBER" ON CO_MEID = ME_ID;
SELECT * FROM HISTORY;

--Ranking Top 3 


CREATE OR REPLACE VIEW RANKINGVIEW
AS
SELECT TO_CHAR(HI_RANKDATE, 'YYYY-MM-DD') AS RANKDATE,
    HI_FOCODE AS FOCODE,
    COUNT(HI_FOCODE) AS CNT
FROM RANKING
GROUP BY HI_FOCODE,
        TO_CHAR(HI_RANKDATE, 'YYYY-MM-DD');
        
SELECT * FROM RANKINGVIEW;

CREATE OR REPLACE VIEW MONTHRANKING
AS
SELECT  FOODS.*,
        MAX(CNT) AS CNT,
        RANKDATE AS RANKDATE
        FROM RANKINGVIEW
        INNER JOIN FOODS ON FOCODE = FO_CODE
        WHERE RANKDATE = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
GROUP BY  RANKDATE, 
FO_CACODE , FO_NAME , FO_COMMONPRICE , FO_FILENAME, FO_COMMENT, FO_ENNAME , FO_CODE;
SELECT * FROM MONTHRANKING;

CREATE OR REPLACE VIEW FIRSTRANK
AS
SELECT MONTHRANKING.*,
RANK() OVER(ORDER BY CNT DESC) AS "COUNT"
FROM MONTHRANKING;
SELECT * FROM FIRSTRANK WHERE ROWNUM <= 4;

