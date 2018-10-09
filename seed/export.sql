--------------------------------------------------------
--  File created - Tuesday-October-09-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HNI_GROUPS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_GROUPS" 
   (	"GROUP_ID" VARCHAR2(36 BYTE), 
	"GROUP_NAME" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_GROUPTOPIC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_GROUPTOPIC" 
   (	"GROUP_ID" VARCHAR2(36 BYTE), 
	"TOPIC_ID" VARCHAR2(36 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_RESOURCES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_RESOURCES" 
   (	"RESOURCE_ID" VARCHAR2(36 BYTE), 
	"RESOURCE_TYPE" VARCHAR2(20 BYTE), 
	"RESOURCE_NAME" VARCHAR2(20 BYTE), 
	"RESOURCE_LOCATION" VARCHAR2(500 BYTE), 
	"RESOURCE_ATTR" VARCHAR2(2000 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_RULES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_RULES" 
   (	"RULE_ID" VARCHAR2(36 BYTE), 
	"RULE_NAME" VARCHAR2(200 BYTE), 
	"RULE_LOCATION" VARCHAR2(500 BYTE), 
	"RULE_VERSION" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_TOPICRESOURCE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_TOPICRESOURCE" 
   (	"TOPIC_ID" VARCHAR2(36 BYTE), 
	"RESOURCE_ID" VARCHAR2(36 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_TOPICRULE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_TOPICRULE" 
   (	"TOPIC_ID" VARCHAR2(36 BYTE), 
	"RULE_ID" VARCHAR2(36 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_TOPICS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_TOPICS" 
   (	"TOPIC_ID" VARCHAR2(36 BYTE), 
	"TOPIC_NAME" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_USERGROUP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_USERGROUP" 
   (	"USER_ID" VARCHAR2(36 BYTE), 
	"GROUP_ID" VARCHAR2(36 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HNI_USERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HNI_USERS" 
   (	"USER_ID" VARCHAR2(36 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE)
   ) ;
REM INSERTING into SYSTEM.HNI_GROUPS
SET DEFINE OFF;
Insert into SYSTEM.HNI_GROUPS (GROUP_ID,GROUP_NAME) values ('g1','g1');
Insert into SYSTEM.HNI_GROUPS (GROUP_ID,GROUP_NAME) values ('g2','g2');
REM INSERTING into SYSTEM.HNI_GROUPTOPIC
SET DEFINE OFF;
REM INSERTING into SYSTEM.HNI_RESOURCES
SET DEFINE OFF;
Insert into SYSTEM.HNI_RESOURCES (RESOURCE_ID,RESOURCE_TYPE,RESOURCE_NAME,RESOURCE_LOCATION,RESOURCE_ATTR) values ('r1','uploaded file','file',null,null);
REM INSERTING into SYSTEM.HNI_RULES
SET DEFINE OFF;
Insert into SYSTEM.HNI_RULES (RULE_ID,RULE_NAME,RULE_LOCATION,RULE_VERSION) values ('r1','rule 1',null,null);
Insert into SYSTEM.HNI_RULES (RULE_ID,RULE_NAME,RULE_LOCATION,RULE_VERSION) values ('r2','rule 2',null,null);
Insert into SYSTEM.HNI_RULES (RULE_ID,RULE_NAME,RULE_LOCATION,RULE_VERSION) values ('r3','rule 3',null,null);
Insert into SYSTEM.HNI_RULES (RULE_ID,RULE_NAME,RULE_LOCATION,RULE_VERSION) values ('r4','rule 4',null,null);
REM INSERTING into SYSTEM.HNI_TOPICRESOURCE
SET DEFINE OFF;
REM INSERTING into SYSTEM.HNI_TOPICRULE
SET DEFINE OFF;
Insert into SYSTEM.HNI_TOPICRULE (TOPIC_ID,RULE_ID) values ('t1','r1');
Insert into SYSTEM.HNI_TOPICRULE (TOPIC_ID,RULE_ID) values ('t1','r2');
Insert into SYSTEM.HNI_TOPICRULE (TOPIC_ID,RULE_ID) values ('t2','r1');
Insert into SYSTEM.HNI_TOPICRULE (TOPIC_ID,RULE_ID) values ('t2','r3');
REM INSERTING into SYSTEM.HNI_TOPICS
SET DEFINE OFF;
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t1','topic 1111');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t2','topic 2');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t3','topic 3');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t4','topic 4');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t5','topic 5');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t6','topic 6');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t7','topic 7');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('t8','topic 8');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('ab9a92d6-c78d-48ed-a713-634d798f205e','test');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('84f2e805-d92e-4d2f-835f-d41c19d9d135','test1');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('470fb517-8e8d-4af2-a7fa-a0898e84ee02','test2');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('81df038f-ff21-4990-acf9-522dec7aa4eb','testa');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('f8d6c1ee-4187-497b-9dc5-2ac24339a1b4','testb');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('8e05b056-b9cd-4239-add6-caf9245ad989','testc');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('2c1a933e-ddbf-4ad9-b6b6-00676a57954f','testd');
Insert into SYSTEM.HNI_TOPICS (TOPIC_ID,TOPIC_NAME) values ('312497a5-1892-4ac6-8f47-0077d3f13b04','teste');
REM INSERTING into SYSTEM.HNI_USERGROUP
SET DEFINE OFF;
Insert into SYSTEM.HNI_USERGROUP (USER_ID,GROUP_ID) values ('u1','g1');
Insert into SYSTEM.HNI_USERGROUP (USER_ID,GROUP_ID) values ('u2','g1');
Insert into SYSTEM.HNI_USERGROUP (USER_ID,GROUP_ID) values ('u1','g2');
REM INSERTING into SYSTEM.HNI_USERS
SET DEFINE OFF;
Insert into SYSTEM.HNI_USERS (USER_ID,USER_NAME) values ('u1','User1');
Insert into SYSTEM.HNI_USERS (USER_ID,USER_NAME) values ('u2','User 2');
--------------------------------------------------------
--  Constraints for Table HNI_GROUPS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HNI_GROUPS" ADD CONSTRAINT "HNI_GROUPS_PK" PRIMARY KEY ("GROUP_ID") ENABLE;
  ALTER TABLE "SYSTEM"."HNI_GROUPS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HNI_RESOURCES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HNI_RESOURCES" ADD CONSTRAINT "HNI_RESOURCES_PK" PRIMARY KEY ("RESOURCE_ID") ENABLE;
  ALTER TABLE "SYSTEM"."HNI_RESOURCES" MODIFY ("RESOURCE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HNI_RESOURCES" MODIFY ("RESOURCE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HNI_RULES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HNI_RULES" ADD CONSTRAINT "NHI_RULES_PK" PRIMARY KEY ("RULE_ID") ENABLE;
  ALTER TABLE "SYSTEM"."HNI_RULES" MODIFY ("RULE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HNI_TOPICS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HNI_TOPICS" ADD CONSTRAINT "HNI_TOPICS_PK" PRIMARY KEY ("TOPIC_ID") ENABLE;
  ALTER TABLE "SYSTEM"."HNI_TOPICS" MODIFY ("TOPIC_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HNI_USERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HNI_USERS" ADD CONSTRAINT "NHI_USERS_PK" PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "SYSTEM"."HNI_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
