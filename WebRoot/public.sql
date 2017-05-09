/*
Navicat PGSQL Data Transfer

Source Server         : postgreSQL
Source Server Version : 90404
Source Host           : localhost:5432
Source Database       : hncm
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90404
File Encoding         : 65001

Date: 2017-05-09 10:52:12
*/


-- ----------------------------
-- Sequence structure for _company_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."_company_id_seq";
CREATE SEQUENCE "public"."_company_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."_company_id_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_users_uid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_users_uid_seq";
CREATE SEQUENCE "public"."t_users_uid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_users_uid_seq"', 1, true);

-- ----------------------------
-- Table structure for _area
-- ----------------------------
DROP TABLE IF EXISTS "public"."_area";
CREATE TABLE "public"."_area" (
"id" int4 NOT NULL,
"name" varchar(10) COLLATE "default",
"cid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of _area
-- ----------------------------
INSERT INTO "public"."_area" VALUES ('1', '田家庵', '1');
INSERT INTO "public"."_area" VALUES ('2', '寿县', '1');
INSERT INTO "public"."_area" VALUES ('3', '八公山区', '1');
INSERT INTO "public"."_area" VALUES ('4', '丰台区', '1');
INSERT INTO "public"."_area" VALUES ('5', '大通区', '1');
INSERT INTO "public"."_area" VALUES ('6', '毛集试验区', '1');
INSERT INTO "public"."_area" VALUES ('7', '潘集区', '1');
INSERT INTO "public"."_area" VALUES ('8', '经济技术开发区', '1');
INSERT INTO "public"."_area" VALUES ('9', '谢家集区', '1');
INSERT INTO "public"."_area" VALUES ('10', '高新区', '1');
INSERT INTO "public"."_area" VALUES ('11', '肥东', '2');
INSERT INTO "public"."_area" VALUES ('12', '肥西', '2');

-- ----------------------------
-- Table structure for _city
-- ----------------------------
DROP TABLE IF EXISTS "public"."_city";
CREATE TABLE "public"."_city" (
"id" int4 NOT NULL,
"name" varchar(10) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of _city
-- ----------------------------
INSERT INTO "public"."_city" VALUES ('1', '淮南市');
INSERT INTO "public"."_city" VALUES ('2', '合肥市');

-- ----------------------------
-- Table structure for _company
-- ----------------------------
DROP TABLE IF EXISTS "public"."_company";
CREATE TABLE "public"."_company" (
"id" int4 DEFAULT nextval('_company_id_seq'::regclass) NOT NULL,
"name" varchar(20) COLLATE "default",
"corporation" varchar(20) COLLATE "default",
"tel" varchar(15) COLLATE "default",
"registeredcaptial" float8,
"address" varchar(25) COLLATE "default",
"scope" text COLLATE "default",
"aid" int4,
"tid" int4,
"registeredtime" varchar COLLATE "default",
"cid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of _company
-- ----------------------------
INSERT INTO "public"."_company" VALUES ('5', 'xx商务公司', '阿三', '13855443322', '2000000', '古城墙边', '电子商务', '2', '2', '2017-05-02', '1');
INSERT INTO "public"."_company" VALUES ('170411001', '淮南市天宝网络科技有限公司', '王五', '13177889900', '3000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '1', '2', '2016-11-15', '1');
INSERT INTO "public"."_company" VALUES ('170411002', '淮南市天宝网络科技有限公司', '张三', '13477778888', '4000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '7', '1', '2016-12-20', '1');
INSERT INTO "public"."_company" VALUES ('170411003', '淮南市天宝网络科技有限公司', '张三', '13477778888', '3000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '8', '1', '2017-05-01', '1');
INSERT INTO "public"."_company" VALUES ('170411004', '淮南市天宝网络科技有限公司', '李四', '14711223344', '1000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '9', '1', '2016-11-17', '1');
INSERT INTO "public"."_company" VALUES ('170411007', '淮南市天宝网络科技有限公司', '张三', '13477778888', '100000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '3', '1', '2017-05-01', '1');
INSERT INTO "public"."_company" VALUES ('170411008', '淮南市天宝网络科技有限公司', '李四', '14711223344', '50000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '6', '1', '2016-11-17', '1');
INSERT INTO "public"."_company" VALUES ('170411009', '淮南市天宝网络科技有限公司', '王五', '13177889900', '600000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '1', '1', '2016-09-30', '1');
INSERT INTO "public"."_company" VALUES ('170411011', '淮南市天宝网络科技有限公司', '张三', '13477778888', '3500000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '5', '1', '2016-10-20', '1');
INSERT INTO "public"."_company" VALUES ('170411012', '淮南市天宝网络科技有限公司', '张三', '13477778888', '4000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '1', '2016-12-20', '1');
INSERT INTO "public"."_company" VALUES ('170411013', '淮南市天宝网络科技有限公司', '李四', '14711223344', '60000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '12', '1', '2016-12-14', '2');
INSERT INTO "public"."_company" VALUES ('170411014', '淮南市天宝网络科技有限公司', '王五', '13177889900', '250000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '1', '2', '2016-11-15', '1');
INSERT INTO "public"."_company" VALUES ('170411018', '淮南市天宝网络科技有限公司', '张三', '13477778888', '20000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '5', '1', '2016-10-20', '1');
INSERT INTO "public"."_company" VALUES ('1704110010', '淮南市天宝网络科技有限公司', '赵六', '15855443322', '200000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '4', '1', '2017-01-09', '1');
INSERT INTO "public"."_company" VALUES ('1704110015', '淮南市天宝网络科技有限公司', '赵六', '15855443322', '300000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '4', '1', '2016-08-24', '1');
INSERT INTO "public"."_company" VALUES ('1704110017', '淮南市天宝网络科技有限公司', '赵六', '15855443322', '4000000', '朝阳中路瑞鑫大厦办公602', '线上线下销售日用百货、电子产品、数码产品、家居用品、化妆品、家用电器、五金交电、纺织品、服装鞋帽、厨房用具、计生用品、计算机、宠物用品、办公用品、文具用品、体育用品、通讯器材、玩具、箱包、钟表、珠宝首饰、汽车饰品、橡胶制品、食用菌、食用农产品、食用油、预包装食品（含熟食卤味、含冷冻冷藏）、乳制品（含婴幼儿配方奶粉），票务代理，从事货物及技术的进出口业务，设计、制作、代理各类广告，利用自有媒体发布广告，企业营销策划，文化艺术交流策划。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '10', '1', '2017-01-09', '1');

-- ----------------------------
-- Table structure for _type
-- ----------------------------
DROP TABLE IF EXISTS "public"."_type";
CREATE TABLE "public"."_type" (
"id" int4 NOT NULL,
"name" varchar(10) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of _type
-- ----------------------------
INSERT INTO "public"."_type" VALUES ('1', '大数据企业');
INSERT INTO "public"."_type" VALUES ('2', '电子商务');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_users";
CREATE TABLE "public"."t_users" (
"uid" int8 DEFAULT nextval('t_users_uid_seq'::regclass) NOT NULL,
"username" varchar(60) COLLATE "default" NOT NULL,
"account" varchar(60) COLLATE "default" NOT NULL,
"pwd" varchar(60) COLLATE "default",
"status" int4,
"createdby" varchar(50) COLLATE "default",
"createdtime" varchar(50) COLLATE "default",
"lastmodifiedby" varchar(50) COLLATE "default",
"lastmodifiedtime" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO "public"."t_users" VALUES ('1', '管理员', 'admin', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('2', '张三', 'admin', '12345', '1', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('3', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('4', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('5', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('6', '李四', 'lisi', '12345', '1', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('7', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('8', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('9', '李四', 'lisi', '12345', '1', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('10', '李四', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('11', '王八', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('12', '小六', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('13', '钱七', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);
INSERT INTO "public"."t_users" VALUES ('14', '王五', 'lisi', '12345', '0', 'admin', '2017-04-20 09:04:29', null, null);

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."_company_id_seq" OWNED BY "_company"."id";
ALTER SEQUENCE "public"."t_users_uid_seq" OWNED BY "t_users"."uid";

-- ----------------------------
-- Primary Key structure for table _area
-- ----------------------------
ALTER TABLE "public"."_area" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table _city
-- ----------------------------
ALTER TABLE "public"."_city" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table _company
-- ----------------------------
ALTER TABLE "public"."_company" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table _type
-- ----------------------------
ALTER TABLE "public"."_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_users
-- ----------------------------
ALTER TABLE "public"."t_users" ADD PRIMARY KEY ("uid");
