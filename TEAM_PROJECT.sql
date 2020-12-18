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

INSERT INTO "MEMBER" VALUES('TEST' , '1234' ,'����� ������' , '�׽�Ʈ����' , '0');
INSERT INTO "MEMBER" VALUES('ADMIN' , '1234' ,'������' , '���ΰ���' , '1');
INSERT INTO "MEMBER" VALUES('APPLY1' , '1234' ,'��õ �߱� ��â�Ϸ�' , '��÷����1' , '1');
INSERT INTO "MEMBER" VALUES('APPLY2' , '1234' ,'���� ���� ȭ���' , '��÷����2' , '1');
INSERT INTO "MEMBER" VALUES('APPLY3' , '1234' ,'�λ� ���� �ؿ���' , '��÷����3' , '1');
INSERT INTO "MEMBER" VALUES('APPLY4' , '1234' ,'�뱸 ���� �ݾ߿���' , '��÷����4' , '1');
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


INSERT INTO STORE VALUES('ICND013','02','Pho Roi','��õ������ ����Ȧ�� ���͵� 1-1','��Ʈ�� �ұ��� ������','01000000000','L','images/������.jpg');
INSERT INTO STORE VALUES('ICND014','02','Kuma Curry','��õ������ ����Ȧ�� ���͵� 1-2','�Ͻ� ī�� �� ��ī�� ������','01000000000','L','images/��ī��.jpg');
INSERT INTO STORE VALUES('ICND015','02','�伭����','��õ������ ����Ȧ�� ���͵� 1-3','�Ͻ� ������','01000000000','L','images/�伭����.jpg');
INSERT INTO STORE VALUES('ICND016','03','��Ÿ��¥��','��õ������ ����Ȧ�� ���͵� 1-4','���׿��� ���������ִ� �߱���','01000000000','L','images/��Ÿ��¥��.jpg');
INSERT INTO STORE VALUES('ICND017','03','������','��õ������ ����Ȧ�� ���͵� 1-5','�߱��� �Դϴ�.','01000000000','L','images/������.jpg');
INSERT INTO STORE VALUES('ICND018','03','õ�ȹ�','��õ������ ����Ȧ�� ���͵� 1-6','�߱��� �Դϴ�.','01000000000','L','images/õ�ȹ�.jpg');
INSERT INTO STORE VALUES('ICND019','06','Gong cha','��õ������ ����Ȧ�� ���͵� 2-1','Ȳ�ǿ� ��ġ�� ��(�), ������ �Ұ��մϴ�.
���� ��ĥ ��, �� ���� ������ �߱� Ȳ�ǿ�����
�� �� �� �ִ� �����̾� ����Ƽ�� ��(�)�� ��ģ�ٴ�
�ǹ̸� ���ϰ� �ֽ��ϴ�.
�߱� Ȳ�ǿ� �����ϴ� �븸�� �����̾� ������
�ż��ϰ� ����� ��, �װ��� �ٷ� �������ϴ�.','01000000000','L','images/����.jpg');

INSERT INTO STORE VALUES('ICND020','06','Tiger Sugar','��õ������ ����Ȧ�� ���͵� 2-2','BRAVE AS A TIGER
��������� ���ο� ���� ��ȭ�� â���� �������ũƼ�� ����
Ÿ�̰� ����

Ư���� ���� �������� ���� ����ȭ��
���� �̸� �����迡 �˸���.','01000000000','L','images/Ÿ�̰Ž���.jpg');

INSERT INTO STORE VALUES('ICND021','06','baskin robbins','��õ������ ����Ȧ�� ���͵� 2-3','����Ų���(Baskin Robbins)�� �̱��� ���̽�ũ�� �����������̴�. ���������� 4,500���� �Ѵ� ������ �ְ�, �̱��� �� 2,300���� ������ �ΰ� �ִ�.[1] �轺Ų��󽺴� "���󿡼� ���� ū ���̽�ũ�� ����������"��� �ҷ� �޶�� �����Ѵ�. ���� �轺Ų��󽺴� ��Ų ������, �̽��� ���Ӱ� �Բ�, ��Ų �귣���� ��ȸ�� �迭�� ���ϰ� �ִ�','01000000000','L','images/����.jpg');
INSERT INTO STORE VALUES('ICND022','04','Teisty Burger','��õ������ ����Ȧ�� ���͵� 2-4','���̽�Ƽ(TEISTY BUGER)�� ���̻����� ����(TEI)�� ���ִ�(TEISTY) �׸��� ����(BURGER)�� ���� ������','01000000000','L','images/���̽�Ƽ����.jpg');
INSERT INTO STORE VALUES('ICND023','06','Randys Dounts','��õ������ ����Ȧ�� ���͵� 3-4',' �������� ���忡�� ���� ����� �ż��ϰ� �پ��� ���� ����','01000000000','L','images/���𽺵���.jpg');
INSERT INTO STORE VALUES('ICND024','04','Taco chily','��õ������ ����Ȧ�� ���͵� 560����','�߽����� ��ǥ���� ������ ������ �ϳ���, �丣Ƽ�߿� ���� ���� �丮�� �μ� �Դ� ��','01000000000','L','images/Ÿ��.jpg');
INSERT INTO STORE VALUES('ICND025','04','�����Ǽձ�','��õ������ ����Ȧ�� ���͵� ���Ǳ�','�����Ժ��� ALL�ٸ��� ������ ������ ���� �������� AND ġŲ �귣�� ������ġ �Դϴ�.','01000000000','L','images/������ġ.jpg');
INSERT INTO STORE VALUES('ICND026','05','Subway','��õ������ ����Ȧ�� ���͵� ����ö','�̱� ���������� 1��! �����̴� ����� �� �������� ����,
Quick Service Restaurant(QSR) �κ� No.1 �����������Դϴ�.','01000000000','L','images/�������.jpg');
INSERT INTO STORE VALUES('ICND027','05','Domino pizza','��õ������ ����Ȧ�� ���͵� 606����','���� ���ϴ� ���� ���ְ� ���� ���� ���ڸ� ���� ģ���ϰ� ���鿡�� �����ϴ� �������� ���ں귣��','01000000000','L','images/���̳�����.jpg');
INSERT INTO STORE VALUES('ICND011','02','Domino pizza','��õ������ ����Ȧ�� ���͵� 606����','���� ���ϴ� ���� ���ְ� ���� ���� ���ڸ� ���� ģ���ϰ� ���鿡�� �����ϴ� �������� ���ں귣��','01000000000','L','images/���̳�����.jpg');

INSERT INTO STORE VALUES('ICND028','01','������ ��','��õ������ ����Ȧ�� ���͵� �����±�','������������� �ҹ��� ������� �������ִ� �ѽİ����Դϴ�.','01000000000','L','images/�߽Ź�.jpg');
INSERT INTO STORE VALUES('ICND099','05','���븮��','��õ������ ����Ȧ�� ���͵�','�������','01095251639','L','images/����.jpg');
UPDATE "STORE" SET ST_CACODE='04' WHERE ST_NAME = '�伭����';
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

INSERT INTO FOODS VALUES('0001','01','����','7500');
INSERT INTO FOODS VALUES('0002','01','��������','7000');
INSERT INTO FOODS VALUES('0003','02','��ī��','10000');
INSERT INTO FOODS VALUES('0004','02','�ٵ�','8000');
INSERT INTO FOODS VALUES('0005','03','������','13000');
INSERT INTO FOODS VALUES('0006','03','������','25000');
INSERT INTO FOODS VALUES('0007','04','�ѿ콺����ũ','30000');
INSERT INTO FOODS VALUES('0008','04','�Ľ�Ÿ','12000');
INSERT INTO FOODS VALUES('0009','05','���븮��','500');
INSERT INTO FOODS VALUES('0010','05','���Ƣ','0');
INSERT INTO FOODS VALUES('0011','01','�����','8000');
INSERT INTO FOODS VALUES('0012','01','�����','7000');
INSERT INTO FOODS VALUES('0013','01','�����','4000');
INSERT INTO FOODS VALUES('0014','01','�ø�','8000');
INSERT INTO FOODS VALUES('0015','01','��ȸ','20000');
INSERT INTO FOODS VALUES('0016','01','�Ұ��','7000');
INSERT INTO FOODS VALUES('0017','01','����','12000');
INSERT INTO FOODS VALUES('0018','02','���ȸ','35000');
INSERT INTO FOODS VALUES('0019','02','�ʹ�','15000');
INSERT INTO FOODS VALUES('0020','02','����','50000');
INSERT INTO FOODS VALUES('0021','02','�����','12000');
INSERT INTO FOODS VALUES('0022','02','�޹мҹ�','12000');
INSERT INTO FOODS VALUES('0023','02','���ڳ�̾߳�','20000');
INSERT INTO FOODS VALUES('0024','02','�߳��丮','5000');
INSERT INTO FOODS VALUES('0025','03','«��','8000');
INSERT INTO FOODS VALUES('0026','03','������','8000');
INSERT INTO FOODS VALUES('0027','03','��ä��','8000');
INSERT INTO FOODS VALUES('0028','03','�쵿','8000');
INSERT INTO FOODS VALUES('0029','03','���ĵκ�','8000');
INSERT INTO FOODS VALUES('0030','03','��ǳ��','25000');
INSERT INTO FOODS VALUES('0031','03','�ع� ��������','35000');
INSERT INTO FOODS VALUES('0032','04','�÷���','30000');
INSERT INTO FOODS VALUES('0033','04','�̰�','12000');
INSERT INTO FOODS VALUES('0034','04','���ð�','10000');
INSERT INTO FOODS VALUES('0035','04','ũ�� �Ľ�Ÿ','12000');
INSERT INTO FOODS VALUES('0036','04','���ٽ�','18000');
INSERT INTO FOODS VALUES('0037','05','�����α�','0');
INSERT INTO FOODS VALUES('0038','05','�ع�����ҽ�','0');
INSERT INTO FOODS VALUES('0039','05','�Ҽ��� ��ä ����','0');
INSERT INTO FOODS VALUES('0040','05','������� ��ġ����','0');
INSERT INTO FOODS VALUES('0041','05','����� ��Ƣ��','0');
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


--���� ������ ���� �����Ͱ� ����

UPDATE FOODS SET FO_FILENAME = 'images/korfood14.png'
WHERE FO_NAME = '��';
UPDATE FOODS SET FO_FILENAME = 'images/korfood12.png'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '��ġ�';
UPDATE FOODS SET FO_FILENAME = 'images/korfood4.jpg'
WHERE FO_NAME = '�ߺ�����';
UPDATE FOODS SET FO_FILENAME = 'images/korfood5.jpg'
WHERE FO_NAME = '���';
UPDATE FOODS SET FO_FILENAME = 'images/korfood7.jpg'
WHERE FO_NAME = 'Į����';
UPDATE FOODS SET FO_FILENAME = 'images/korfood9.jpg'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/korfood10.jpg'
WHERE FO_NAME = '���κ� �';
UPDATE FOODS SET FO_FILENAME = 'images/korfood11.jpg'
WHERE FO_NAME = '���';
UPDATE FOODS SET FO_FILENAME = 'images/korfood12.jpg'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/korfood13.jpg'
WHERE FO_NAME = '�ӹ�';
UPDATE FOODS SET FO_FILENAME = 'images/korfood14.jpg'
WHERE FO_NAME = '��';
UPDATE FOODS SET FO_FILENAME = 'images/korfood15.jpg'
WHERE FO_NAME = '����';
UPDATE FOODS SET FO_FILENAME = 'images/korfood16.jpg'
WHERE FO_NAME = '����';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '���ɸ�';
UPDATE FOODS SET FO_FILENAME = 'images/asia15.jpg'
WHERE FO_NAME = '�쵿';
UPDATE FOODS SET FO_FILENAME = 'images/asia.jpg'
WHERE FO_NAME = '���ð�';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood1.jpg'
WHERE FO_NAME = 'ũ�� �Ľ�Ÿ';
UPDATE FOODS SET FO_FILENAME = 'images/korfood.jpg'
WHERE FO_NAME = '���ɸ�';
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
WHERE FO_NAME = '���Ƣ';
UPDATE FOODS SET FO_FILENAME = 'images/fuck2.jpg'
WHERE FO_NAME = '���븮��';
UPDATE FOODS SET FO_FILENAME = 'images/korfood1.jpg'
WHERE FO_NAME = '��������';
UPDATE FOODS SET FO_FILENAME = 'images/asia1.jpg'
WHERE FO_NAME = '�ٵ�';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE FO_NAME = '�ѿ콺����ũ';
UPDATE FOODS SET FO_FILENAME = 'images/chi5.jpg'
WHERE FO_NAME = '��ä��';
UPDATE FOODS SET FO_CACODE = '04'
WHERE FO_CACODE = '07';
UPDATE FOODS SET FO_ENNAME = 'UDON'
WHERE FO_NAME = '�쵿';
UPDATE FOODS SET FO_ENNAME = 'Nurungji tang'
WHERE FO_NAME = '�ع� ��������';
UPDATE FOODS SET FO_ENNAME = 'Ganpengji'
WHERE FO_NAME = '��ǳ��';
UPDATE FOODS SET FO_ENNAME = 'Mapa Tofu'
WHERE FO_NAME = '���ĵκ�';
UPDATE FOODS SET FO_ENNAME = 'Nasigoren'
WHERE FO_NAME = '���ð�';
UPDATE FOODS SET FO_FILENAME = '.images/asia.jpg'
UPDATE FOODS SET FO_FILENAME = 'images/chi9.png' WHERE FO_NAME = '�ع� ��������';
UPDATE FOODS SET FO_FILENAME = 'images/fast6.png' WHERE FO_NAME = 'SUBWAY';
UPDATE FOODS SET FO_FILENAME = 'images/fast5.jpeg' WHERE FO_NAME = 'EGG DROP';
UPDATE FOODS SET FO_FILENAME = 'images/fast1.jpeg' WHERE FO_NAME = 'LOTTERIA';
UPDATE FOODS SET FO_FILENAME = 'images/fast9.png' WHERE FO_NAME = 'KFC';
UPDATE FOODS SET FO_FILENAME = 'images/asia9.jpeg' WHERE FO_NAME = 'Donburi';
UPDATE FOODS SET FO_FILENAME = 'images/fast14.jpeg' WHERE FO_NAME = 'Pizza Hut';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood11.png' , FO_NAME = 'Fride Chicken' WHERE FO_NAME = ' Fried Chicken';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood1.jpg' , FO_ENNAME = 'Cream Pasta'
WHERE FO_NAME = 'ũ�� �Ľ�Ÿ';
UPDATE STORE SET ST_FILENAME = 'images/����.jpg' 
WHERE ST_FILENAME = 'images/����.JPG';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE ST_FILENAME = '';
UPDATE FOODS SET FO_FILENAME = 'images/wesfood4.jpg'
WHERE ST_FILENAME = 'images/';
UPDATE FOODS SET FO_FILENAME = 'images/chi6.jpg'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/chi12.jpg'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/chi2.jpg'
WHERE FO_NAME = '«��';
UPDATE FOODS SET FO_FILENAME = 'images/chi3.jpg'
WHERE FO_NAME = '������';
UPDATE FOODS SET FO_FILENAME = 'images/chi2.jpg'
WHERE FO_NAME = '��ä��';
UPDATE FOODS SET FO_FILENAME = 'images/chi9.jpg'
WHERE FO_NAME = '�ع� ��������';
UPDATE FOODS SET FO_FILENAME = 'images/chi8.jpg'
WHERE FO_NAME = '��ǳ��';
UPDATE FOODS SET FO_FILENAME = 'images/chi4.jpg'
WHERE FO_NAME = '���ĵκ�';
UPDATE FOODS SET FO_FILENAME = 'images/chi11.jpg'
WHERE FO_NAME = '���꽽';
UPDATE FOODS SET FO_FILENAME = 'images/chi10.jpg'
WHERE FO_NAME = '�Ⱥ�ä';
UPDATE STORE SET ST_FILENAME = 'images/fast15.jpg' , ST_NAME='DOMINO PIZZA'
WHERE ST_CODE = 'ICND027';
UPDATE STORE SET ST_FILENAME = 'images/������ũ.jpg' , ST_NAME='Steak 101'
WHERE ST_NAME = 'Teisty Burger';
UPDATE STORE SET ST_FILENAME = 'images/�Ľ�Ÿ.jpg' , ST_NAME='cafe Pasta'
WHERE ST_NAME = '�����Ǽձ�';

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
-- PRIMARY KEY ���������� �ش� PRIMARY KEY ��θ� ���;���.
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
------------------------------------------ VIEW ����
--��õ VIEW
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

