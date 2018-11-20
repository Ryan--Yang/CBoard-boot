-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: renren_fast
-- ------------------------------------------------------
-- Server version	5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dashboard_board`
--

DROP TABLE IF EXISTS `dashboard_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board` (
  `board_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `board_name` varchar(100) NOT NULL,
  `layout_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board`
--

LOCK TABLES `dashboard_board` WRITE;
/*!40000 ALTER TABLE `dashboard_board` DISABLE KEYS */;
INSERT INTO `dashboard_board` VALUES (1,'1',1,'FoodMart','{\"rows\":[{\"type\":\"param\",\"params\":[{\"paramType\":\"slider\",\"selects\":[],\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"the_date\",\"datasetId\":2}],\"cfg\":{\"formatter\":\"YYYY-MM-DD\",\"min\":\"now(-8,\'M\')\",\"max\":\"now(6,\'M\')\",\"width\":\"12\",\"range\":\"interval(240,\'d\')\",\"step\":\"interval(30,\'d\')\",\"maxRange\":\"interval(360,\'d\')\",\"value_fmt\":\"YYYY-MM-DD\"},\"values\":[\"2018-08-25\",\"2019-04-22\"],\"name\":\"DateSlider\",\"type\":\"[a,b]\"},{\"paramType\":\"selector\",\"selects\":[\"Canada\",\"Mexico\",\"USA\"],\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"SALES_COUNTRY\",\"datasetId\":2}],\"values\":[],\"name\":\"Country\",\"type\":\"=\"},{\"paramType\":\"selector\",\"selects\":[\"F\",\"M\"],\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"gender\",\"datasetId\":2}],\"values\":[],\"name\":\"Gender\",\"type\":\"=\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":10,\"name\":\"KPI1\",\"width\":\"3\"},{\"widgetId\":12,\"name\":\"KPI3\",\"width\":\"3\"},{\"widgetId\":11,\"name\":\"KPI2\",\"width\":\"3\"},{\"widgetId\":13,\"name\":\"KPI4\",\"width\":\"3\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":14,\"name\":\"LineBar_Double_Aixes\",\"width\":12}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":6,\"name\":\"LineBar_Percentage\",\"width\":\"6\"},{\"widgetId\":4,\"name\":\"LineBar_Top10_Horizontal\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":5,\"name\":\"LineBar_Top10_Vertical\",\"width\":\"6\"},{\"widgetId\":7,\"name\":\"Radar\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":1,\"name\":\"CrossTable\",\"width\":\"12\"}],\"height\":\"450\"},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":8,\"name\":\"Map\",\"width\":\"6\"},{\"widgetId\":3,\"name\":\"Sanky\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":2,\"name\":\"Funnel\",\"width\":\"6\"},{\"widgetId\":9,\"name\":\"Bubble\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":15,\"name\":\"PieChart\",\"width\":\"8\"}]}]}','2018-10-15 06:03:57','2018-10-22 05:44:37','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(2,'1',1,'FoodMart_Timeline','{\"type\":\"timeline\",\"rows\":[{\"params\":[{\"paramType\":\"slider\",\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"the_date\",\"datasetId\":2}],\"cfg\":{\"formatter\":\"YYYY-MM-DD\",\"min\":\"now(-8,\'M\')\",\"max\":\"now(6,\'M\')\",\"width\":\"12\",\"range\":\"interval(240,\'d\')\",\"step\":\"interval(30,\'d\')\",\"maxRange\":\"interval(360,\'d\')\",\"value_fmt\":\"YYYY-MM-DD\"},\"name\":\"the date\"}],\"type\":\"param\",\"height\":\"\"},{\"nodeName\":\"KPI\",\"node\":\"parent\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":10,\"name\":\"KPI1\",\"width\":\"3\"},{\"widgetId\":11,\"name\":\"KPI2\",\"width\":\"3\"},{\"widgetId\":12,\"name\":\"KPI3\",\"width\":\"3\"},{\"widgetId\":13,\"name\":\"KPI4\",\"width\":\"3\"}],\"title\":\"Main Title\"},{\"node\":\"leaf\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":9,\"name\":\"Bubble\",\"width\":\"6\"},{\"widgetId\":14,\"name\":\"LineBar_Double_Aixes\",\"width\":\"6\"}],\"title\":\"SubTitle\"}]}','2018-10-15 06:03:57','2018-10-15 06:03:57','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(3,'1',2,'dashboard1','{\"rows\":[{\"type\":\"widget\",\"widgets\":[{\"widgetId\":16,\"name\":\"chart1\",\"width\":\"5\"},{\"widgetId\":18,\"name\":\"chart3\",\"width\":\"5\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":17,\"name\":\"chart2\",\"width\":\"5\"},{\"widgetId\":19,\"name\":\"widget_sample4\",\"width\":\"5\"}]}]}','2018-10-15 09:56:34','2018-10-31 01:29:17','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(4,'1',2,'dashboard2','{\"type\":\"timeline\",\"rows\":[{\"params\":[{\"paramType\":\"selector\",\"selects\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"],\"col\":[{\"name\":\"foodmart_sample1\",\"column\":\"MONTH_OF_YEAR\",\"datasetId\":8}],\"cfg\":{\"formatter\":\"YYYY-MM-DD\",\"min\":\"now(-24,\'M\')\",\"max\":\"now(8,\'M\')\",\"width\":\"12\",\"range\":\"interval(120,\'d\')\",\"step\":\"interval(30,\'d\')\",\"maxRange\":\"interval(360,\'d\')\",\"filterType\":\"[a,b]\",\"value_fmt\":\"YYYY-MM-DD\"},\"values\":[\"4\",\"10\"],\"name\":\"month\",\"type\":\"(a,b]\"}],\"type\":\"param\",\"height\":\"\"},{\"nodeName\":\"KPI\",\"node\":\"parent\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":29,\"name\":\"widget_sample14_kpi1\",\"width\":\"4\"},{\"widgetId\":30,\"name\":\"widget_sample15_kpi2\",\"width\":\"4\"},{\"widgetId\":31,\"name\":\"widget_sample16_kpi3\",\"width\":\"4\"}],\"title\":\"Main Title\"},{\"node\":\"leaf\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":26,\"name\":\"widget_sample11_treemap\",\"width\":\"6\"},{\"widgetId\":27,\"name\":\"widget_sample12_heatmap\",\"width\":\"6\"}],\"title\":\"Sub Title\"}]}','2018-10-16 06:11:07','2018-10-16 06:17:20','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(5,'1',2,'dashboard3','{\"rows\":[{\"type\":\"param\",\"params\":[{\"paramType\":\"selector\",\"selects\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"],\"col\":[{\"name\":\"foodmart_sample1\",\"column\":\"MONTH_OF_YEAR\",\"datasetId\":8}],\"cfg\":{\"width\":\"12\"},\"values\":[\"2\",\"10\"],\"name\":\"month\",\"type\":\"[a,b]\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":21,\"name\":\"widget_sample6_funnel\",\"width\":\"6\"},{\"widgetId\":20,\"name\":\"widget_sample5_sankey\",\"width\":\"6\"}]}]}','2018-10-17 05:37:24','2018-10-17 05:51:02','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(6,'1',2,'dashboard4','{\"type\":\"timeline\",\"rows\":[{\"params\":[{\"paramType\":\"slider\",\"selects\":[],\"col\":[{\"name\":\"foodmart_sample1\",\"column\":\"MONTH_OF_YEAR\",\"datasetId\":8}],\"cfg\":{\"formatter\":\"YYYY-MM-DD\",\"min\":\"now(-24,\'M\')\",\"max\":\"now(+2,\'M\')\",\"width\":\"12\",\"range\":\"interval(30,\'d\')\",\"step\":\"interval(30,\'d\')\",\"maxRange\":\"interval(120,\'d\')\",\"filterType\":\"\",\"value_fmt\":\"YYYY-MM-DD\"},\"values\":[\"2018-11-22\",\"2018-12-22\"],\"name\":\"month\",\"type\":\"\"}],\"type\":\"param\",\"height\":\"\"},{\"nodeName\":\"main1\",\"node\":\"parent\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":16,\"name\":\"widget_sample1_pie\",\"width\":\"6\"},{\"widgetId\":17,\"name\":\"widget_sample2_map\",\"width\":\"6\"}],\"title\":\"main1\",\"height\":\"400\"},{\"node\":\"leaf\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":18,\"name\":\"widget_sample3_map2\",\"width\":\"6\"},{\"widgetId\":19,\"name\":\"widget_sample4_line\",\"width\":\"6\"}],\"title\":\"sub1\"}]}','2018-10-17 06:24:07','2018-10-22 02:18:08','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(7,'1',2,'first','{\"rows\":[{\"type\":\"widget\",\"widgets\":[{\"positionY\":\"0\",\"border\":\"url(statics/imgs/cockpit/border/01.png)\",\"chartWidth\":\"24\",\"bgColor\":\"none\",\"widgetId\":25,\"domId\":\"chart_1539758601945\",\"chartHeight\":\"31\",\"positionX\":\"0\"},{\"positionY\":\"0\",\"border\":\"url(statics/imgs/cockpit/border/01.png)\",\"chartWidth\":\"23\",\"bgColor\":\"none\",\"widgetId\":26,\"domId\":\"chart_1539758611017\",\"chartHeight\":\"31\",\"positionX\":\"24\"},{\"positionY\":\"31\",\"border\":\"url(statics/imgs/cockpit/border/01.png)\",\"chartWidth\":\"47\",\"bgColor\":\"none\",\"widgetId\":29,\"domId\":\"chart_1539758630753\",\"chartHeight\":\"17\",\"positionX\":\"0\"},{\"positionY\":\"31\",\"border\":\"url(statics/imgs/cockpit/border/01.png)\",\"chartWidth\":\"53\",\"bgColor\":\"none\",\"widgetId\":30,\"domId\":\"chart_1539758645114\",\"chartHeight\":\"17\",\"positionX\":\"47\"},{\"positionY\":\"0\",\"border\":\"\",\"chartWidth\":\"26\",\"bgColor\":\"none\",\"widgetId\":19,\"domId\":\"chart_1539758756465\",\"chartHeight\":\"31\",\"positionX\":\"47\"},{\"positionY\":\"48\",\"border\":\"url(statics/imgs/cockpit/border/01.png)\",\"chartWidth\":\"37\",\"bgColor\":\"none\",\"widgetId\":17,\"domId\":\"chart_1539758780113\",\"chartHeight\":\"52\",\"positionX\":\"0\"},{\"positionY\":\"0\",\"border\":\"\",\"chartWidth\":\"27\",\"bgColor\":\"#ff8000\",\"widgetId\":28,\"domId\":\"chart_1539758890433\",\"chartHeight\":\"31\",\"positionX\":\"73\"}]},{\"type\":\"other\",\"others\":[{\"positionY\":\"48\",\"chartWidth\":\"26\",\"jsonData\":{\"value\":\"[{label:\'表头\', value:\'头\'}, {\'第一行\':\'这是第二种\', \'第二行\':\'value1\', \'第三行\':\'value2\', \'第四行\':\'value3\'}]\"},\"chartStyle\":\"\",\"cockpitConfChartCSS\":{\"labelFontSize\":12,\"labelFontWeight\":\"normal\",\"textAlign\":\"left\",\"colBorderWidth\":1,\"headFontSize\":14,\"headColor\":\"#FFFFFF\",\"widthPercentage\":\"\",\"textColor\":\"#5CFFAC\",\"labelColor\":\"#03A2C9\",\"textFontSize\":12,\"colBorderColor\":\"#57D2FE\",\"labelAlign\":\"left\",\"textFontWeight\":\"normal\",\"headBgColor\":\"none\",\"oddRowBgColor\":\"#631616\",\"rowBorderColor\":\"#57D2FE\",\"headFontWeight\":\"normal\",\"rowBorderWidth\":1,\"evenRowBgColor\":\"#333333\"},\"domId\":\"table_1539760069330\",\"type\":\"table\",\"chartHeight\":\"27\",\"positionX\":\"37\"},{\"positionY\":\"48\",\"chartWidth\":\"37\",\"jsonData\":{},\"chartStyle\":\"\",\"cockpitConfChartCSS\":{\"textFontSize\":\"12\",\"labelPadding\":\"5\",\"labelFontSize\":\"12\",\"textFontWeight\":\"normal\",\"textColor\":\"#FFFFFF\",\"labelColor\":\"#FFFFFF\",\"textFormat\":\"yyyy-MM-dd hh:mm:ss\"},\"domId\":\"clock_1539760476647\",\"type\":\"clock\",\"chartHeight\":\"12\",\"positionX\":\"63\"}]}],\"type\":\"cockpit\",\"cockpitConf\":{\"screenWidth\":100,\"viewName\":\"first\",\"background\":\"#000000\",\"screenHeight\":100,\"fontColor\":\"#FFFFFF\",\"categoryId\":2}}','2018-10-17 06:47:27','2018-10-30 09:57:02','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(9,'1',2,'second','{\"rows\":[{\"type\":\"widget\",\"widgets\":[{\"widgetId\":\"34\",\"name\":\"widget_sample17_pie4\",\"width\":\"6\"},{\"widgetId\":\"35\",\"name\":\"widget_sample18_pie5\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":\"36\",\"name\":\"widget_sample19_bubble2\",\"width\":12}]}]}','2018-10-31 01:30:28','2018-10-31 01:30:34','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data'),(11,'1',2,'c01','{\"rows\":[{\"type\":\"param\",\"params\":[{\"paramType\":\"selector\",\"selects\":[\"\",\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"小\",\"微\",\"东北\",\"东南\",\"东风\",\"北风\",\"南风\",\"微风\",\"旋转\",\"无持\",\"西北\",\"西南\",\"西风\"],\"col\":[{\"name\":\"map_data\",\"column\":\"wind_level\",\"datasetId\":\"14\"},{\"name\":\"map_data\",\"column\":\"wind_direct\",\"datasetId\":\"14\"}],\"values\":[],\"name\":\"wind\",\"type\":\"=\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":\"38\",\"name\":\"w01\",\"width\":12}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":\"39\",\"name\":\"w02\",\"width\":12}],\"height\":\"500\"},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":\"41\",\"name\":\"t1\",\"width\":12}]}]}','2018-11-01 02:42:34','2018-11-13 01:31:47','sys:board:list,sys:board:save,sys:board:update,sys:board:delete,sys:board:data');
/*!40000 ALTER TABLE `dashboard_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_board_param`
--

DROP TABLE IF EXISTS `dashboard_board_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board_param` (
  `board_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `config` text,
  PRIMARY KEY (`board_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board_param`
--

LOCK TABLES `dashboard_board_param` WRITE;
/*!40000 ALTER TABLE `dashboard_board_param` DISABLE KEYS */;
INSERT INTO `dashboard_board_param` VALUES (4,'1',6,'[{\"name\":\"aa\",\"params\":{}},{\"params\":{}}]'),(5,'1',1,'[{\"params\":{\"Country\":{\"type\":\"=\",\"values\":[]},\"Gender\":{\"type\":\"=\",\"values\":[]}}},{\"name\":\"Male\",\"params\":{\"Country\":{\"type\":\"=\",\"values\":[]},\"Gender\":{\"type\":\"=\",\"values\":[\"M\"]}}},{\"name\":\"USA-F\",\"params\":{\"Country\":{\"type\":\"=\",\"values\":[\"USA\"]},\"Gender\":{\"type\":\"=\",\"values\":[\"F\"]}}}]');
/*!40000 ALTER TABLE `dashboard_board_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_category`
--

DROP TABLE IF EXISTS `dashboard_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_category`
--

LOCK TABLES `dashboard_category` WRITE;
/*!40000 ALTER TABLE `dashboard_category` DISABLE KEYS */;
INSERT INTO `dashboard_category` VALUES (1,'Demo','1'),(2,'test','1');
/*!40000 ALTER TABLE `dashboard_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_dataset`
--

DROP TABLE IF EXISTS `dashboard_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_dataset` (
  `dataset_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `dataset_name` varchar(100) DEFAULT NULL,
  `data_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_dataset`
--

LOCK TABLES `dashboard_dataset` WRITE;
/*!40000 ALTER TABLE `dashboard_dataset` DISABLE KEYS */;
INSERT INTO `dashboard_dataset` VALUES (2,1,'Default Category','FoodMart_Sample','{\"schema\":{\"measure\":[{\"column\":\"store_cost\",\"id\":\"da02ba11-30d0-4b03-9b12-5b19edc5d7c6\",\"type\":\"column\"},{\"column\":\"store_sales\",\"id\":\"12b42233-b0e7-418f-8f68-d36d227d41d1\",\"type\":\"column\"},{\"column\":\"unit_sales\",\"id\":\"1f429f76-cbf9-4391-80a2-4d4d3b449a66\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"SALES_COUNTRY\",\"alias\":\"country\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"column\"},{\"column\":\"SALES_REGION\",\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"column\"},{\"column\":\"SALES_DISTRICT\",\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"column\"}],\"alias\":\"Geo\",\"id\":\"618953e0-d71c-41a4-8dee-a6748fe92bbd\",\"type\":\"level\"},{\"columns\":[{\"column\":\"the_year\",\"alias\":\"year\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"column\"},{\"column\":\"month_of_year\",\"alias\":\"month\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"column\"},{\"column\":\"day_of_month\",\"alias\":\"day\",\"id\":\"7cb06baf-c95d-4da3-a47d-74c70f068fc9\",\"type\":\"column\"},{\"column\":\"the_date\",\"id\":\"ba7bcba4-59b7-452e-b3b4-1329a65b5158\",\"type\":\"column\"}],\"alias\":\"Date\",\"id\":\"6a82cfd1-97a0-4118-b000-6f69c227959d\",\"type\":\"level\"},{\"column\":\"gender\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"column\"}]},\"datasource\":1,\"query\":{\"sql\":\"SELECT    \\r\\n       b.the_year + 5 AS the_year, b.month_of_year, b.day_of_month,\\r\\n       date_add(b.the_date, interval 5 year) AS the_date,\\r\\n       r.SALES_DISTRICT, r.SALES_REGION, r.SALES_COUNTRY,\\r\\n       d.yearly_income, d.total_children, d.member_card, d.num_cars_owned, d.gender,\\r\\n       a.store_sales, a.store_cost, a.unit_sales\\r\\n  FROM foodmart.sales_fact_sample a\\r\\n  JOIN foodmart.time_by_day b ON a.time_id = b.time_id\\r\\n  JOIN foodmart.store c ON a.store_id = c.store_id\\r\\n  JOIN foodmart.region r ON c.REGION_ID = r.REGION_ID\\r\\n  JOIN foodmart.customer d ON a.CUSTOMER_ID = d.CUSTOMER_ID\\r\\n WHERE SALES_COUNTRY IS NOT NULL\"},\"filters\":[{\"filters\":[{\"col\":\"the_date\",\"values\":[\"{now(\'M\', -2, \'yyyy-MM-dd\')}\"],\"type\":\">\"}],\"id\":\"405f1bd3-758b-4025-b6c1-e3807a3ab000\",\"group\":\"last6months\"}],\"expressions\":[{\"alias\":\"UnitSales\",\"id\":\"1810a1d1-0fc3-455f-a9bc-43aaaac26eb9\",\"type\":\"exp\",\"exp\":\"sum(store_sales)/sum(unit_sales)\"}]}','2018-10-15 06:03:54','2018-10-15 09:22:37','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(7,1,'Default Category','Map_Sample','{\"schema\":{\"measure\":[{\"column\":\"cnt\",\"id\":\"f35c040b-4410-429a-ba69-260af846b52f\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"province\",\"id\":\"5f90de30-ae03-4c50-ad4d-ad6a52fa81ea\",\"type\":\"column\"},{\"column\":\"city\",\"id\":\"0526c056-c57c-486f-aa00-525f74d93c3e\",\"type\":\"column\"},{\"column\":\"district\",\"id\":\"f25bf8d7-4789-4252-98b0-b3a5679f6548\",\"type\":\"column\"}],\"alias\":\"GEO\",\"id\":\"a89157b2-0bfa-4221-90c3-09cd44a5be39\",\"type\":\"level\"},{\"column\":\"wind_level\",\"id\":\"81955bba-5745-42dc-8e7a-d0c6db31c858\",\"type\":\"column\"},{\"column\":\"wind_direct\",\"id\":\"95cfeadc-1562-4577-a638-452d778e2f20\",\"type\":\"column\"}]},\"selects\":[\"city\",\"cnt\",\"district\",\"max_temp\",\"province\",\"wind_direct\",\"wind_level\"],\"datasource\":\"1\",\"query\":{\"sql\":\"SELECT * FROM foodmart.map_data_sample;\"},\"filters\":[],\"expressions\":[{\"alias\":\"cc\",\"id\":\"d26880aa-ea42-454b-97c0-511f34791889\",\"type\":\"exp\",\"exp\":\"count(city)\"}]}','2018-10-15 06:03:54','2018-10-29 09:22:00','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(8,1,'Default Category','foodmart_sample1','{\"schema\":{\"measure\":[{\"column\":\"STORE_COST\",\"id\":\"c4117cdb-3a44-45e4-8cca-c013d9af6245\",\"type\":\"column\"},{\"column\":\"STORE_SALES\",\"id\":\"251b635c-20a7-4fae-9b17-5c46bb73b621\",\"type\":\"column\"},{\"column\":\"UNIT_SALES\",\"id\":\"2a2b7671-f70d-4243-8842-e23cdde98bcb\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"SALES_COUNTRY\",\"alias\":\"country\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"column\"},{\"column\":\"SALES_REGION\",\"alias\":\"region\",\"id\":\"41b62b30-8d31-4da0-a92f-7ad3e0320a4a\",\"type\":\"column\"},{\"column\":\"SALES_DISTRICT\",\"alias\":\"district\",\"id\":\"be92ea8e-d14d-436d-886d-ec4f0e1c329b\",\"type\":\"column\"}],\"alias\":\"Geo\",\"id\":\"81a3808f-b558-4e02-a798-ba8675d65611\",\"type\":\"level\"},{\"columns\":[{\"column\":\"the_year\",\"alias\":\"year\",\"id\":\"4be636c6-4633-40bb-a0d5-3df18a3714d1\",\"type\":\"column\"},{\"column\":\"MONTH_OF_YEAR\",\"alias\":\"month\",\"id\":\"0ea455c4-f3fa-4f43-9684-7eb81ebf65c7\",\"type\":\"column\"},{\"column\":\"DAY_OF_MONTH\",\"alias\":\"day\",\"id\":\"8a785eed-dbbe-4e83-a8c5-dda6ba4a009d\",\"type\":\"column\"},{\"column\":\"the_date\",\"id\":\"a20ffb84-69c5-4f63-929f-3b008b18f1f2\",\"type\":\"column\"}],\"alias\":\"Date\",\"id\":\"b412080c-d1b5-4403-91fd-a7acafac1b7a\",\"type\":\"level\"},{\"column\":\"GENDER\",\"id\":\"c3c1b0f5-cf42-480e-abff-a4793ce734a8\",\"type\":\"column\"}]},\"selects\":[\"DAY_OF_MONTH\",\"GENDER\",\"MEMBER_CARD\",\"MONTH_OF_YEAR\",\"NUM_CARS_OWNED\",\"SALES_COUNTRY\",\"SALES_DISTRICT\",\"SALES_REGION\",\"STORE_COST\",\"STORE_SALES\",\"TOTAL_CHILDREN\",\"UNIT_SALES\",\"YEARLY_INCOME\",\"the_date\",\"the_year\"],\"datasource\":\"2\",\"query\":{\"sql\":\"SELECT    \\r\\n       b.THE_YEAR + 5 AS the_year, b.MONTH_OF_YEAR, b.DAY_OF_MONTH,\\r\\n       date_add(b.THE_DATE, interval 5 year) AS the_date,\\r\\n       r.SALES_DISTRICT, r.SALES_REGION, r.SALES_COUNTRY,\\r\\n       d.YEARLY_INCOME, d.TOTAL_CHILDREN, d.MEMBER_CARD, d.NUM_CARS_OWNED, d.GENDER,\\r\\n       a.STORE_SALES, a.STORE_COST, a.UNIT_SALES\\r\\n  FROM foodmart.sales_fact_sample a\\r\\n  JOIN foodmart.time_by_day b ON a.TIME_ID = b.TIME_ID\\r\\n  JOIN foodmart.store c ON a.STORE_ID = c.STORE_ID\\r\\n  JOIN foodmart.region r ON c.REGION_ID = r.REGION_ID\\r\\n  JOIN foodmart.customer d ON a.CUSTOMER_ID = d.CUSTOMER_ID\\r\\n WHERE SALES_COUNTRY IS NOT NULL\"},\"filters\":[{\"filters\":[{\"col\":\"the_date\",\"values\":[\"{now(\'M\', -2, \'yyyy-MM-dd\')}\"],\"type\":\">\"}],\"id\":\"66386e33-7ec2-4ac0-9664-830a238622c4\",\"group\":\"last6months\"}],\"expressions\":[{\"alias\":\"UnitSales\",\"id\":\"b3d20326-2f56-4473-9a96-a6f2185d8a0a\",\"type\":\"exp\",\"exp\":\"sum(store_sales)/sum(unit_sales)\"}]}','2018-10-15 07:58:48','2018-10-31 03:04:08','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(9,1,'Default Category','foodmart_sample2','{\"schema\":{\"measure\":[{\"column\":\"cnt\",\"id\":\"91b0265f-7ded-455a-89bb-11ba247ee700\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"province\",\"id\":\"013fb94b-8cb6-48cf-9923-027154d5ec54\",\"type\":\"column\"},{\"column\":\"city\",\"id\":\"aee47203-5578-4b50-9b01-335c97e22214\",\"type\":\"column\"},{\"column\":\"district\",\"id\":\"79ee29ea-3adc-4569-b48a-8bedb3167d8b\",\"type\":\"column\"}],\"alias\":\"GEO\",\"id\":\"654c8cfc-8003-4944-b90a-4575c7170ff4\",\"type\":\"level\"},{\"column\":\"wind_level\",\"id\":\"07e40395-c918-4bb1-99f1-aea70823ce47\",\"type\":\"column\"},{\"column\":\"wind_direct\",\"id\":\"c7d88d89-ce81-4d12-a5b0-5ba45c7fec62\",\"type\":\"column\"}]},\"selects\":[\"city\",\"cnt\",\"district\",\"max_temp\",\"province\",\"wind_direct\",\"wind_level\"],\"datasource\":\"2\",\"query\":{\"sql\":\"SELECT * FROM foodmart.map_data_sample;\"},\"filters\":[],\"expressions\":[{\"alias\":\"cc\",\"id\":\"fa99e90e-84fd-4481-81d7-546b8cd52f2d\",\"type\":\"exp\",\"exp\":\"count(city)\"}]}','2018-10-15 08:03:59','2018-10-30 03:46:02','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(11,1,'Default Category','foodmart_sample3','{\"schema\":{\"measure\":[{\"column\":\"cnt\",\"id\":\"8f8c2020-d030-49c9-912f-7072b92c807d\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"provn\",\"id\":\"d20dc98e-2af5-49c6-8764-49cdcde780e4\",\"type\":\"column\"},{\"column\":\"city\",\"id\":\"9816dd16-d4b2-47b5-b2c2-c30a5b551dc5\",\"type\":\"column\"}],\"alias\":\"GEO\",\"id\":\"0e3d3cea-ff20-476c-a01f-549c6a0891dc\",\"type\":\"level\"},{\"column\":\"gender\",\"id\":\"99288587-694d-48c1-8c05-3eac2842ee98\",\"type\":\"column\"}]},\"selects\":[\"city\",\"cnt\",\"gender\",\"provn\"],\"datasource\":\"2\",\"query\":{\"sql\":\"select * \\n    from foodmart.chinagis1\\n    limit 100;\"},\"filters\":[],\"expressions\":[]}','2018-10-15 09:35:38','2018-10-30 03:46:07','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(12,1,'Default Category','foodmart_sample4','{\"schema\":{\"measure\":[{\"column\":\"SALARY\",\"alias\":\"salary\",\"id\":\"f28329de-55ec-470a-b6be-a9ffa8e1fd5f\",\"type\":\"column\"},{\"column\":\"BIRTH_DATE\",\"alias\":\"birth\",\"id\":\"5650c999-3045-4338-9bc5-093d83a1131d\",\"type\":\"column\"},{\"column\":\"HIRE_DATE\",\"alias\":\"hire\",\"id\":\"da5bf1cd-da39-4177-9a0c-df7458cf2320\",\"type\":\"column\"}],\"dimension\":[{\"column\":\"EMPLOYEE_ID\",\"alias\":\"employeeId\",\"id\":\"aaddf716-9e2a-463d-9178-9945aaadca5e\",\"type\":\"column\"},{\"column\":\"GENDER\",\"alias\":\"gender\",\"id\":\"8e26cc4e-37e7-4fe4-98e2-ec9ea9649556\",\"type\":\"column\"},{\"column\":\"LAST_NAME\",\"alias\":\"last_name\",\"id\":\"7f6614b6-990c-47b8-b0c3-256beda10d62\",\"type\":\"column\"},{\"column\":\"POSITION_TITLE\",\"alias\":\"position\",\"id\":\"98d4da4b-8bc3-45dd-bc2f-f69b76f0450e\",\"type\":\"column\"},{\"column\":\"DEPARTMENT_ID\",\"alias\":\"departmentId\",\"id\":\"3590402b-3dc9-428d-afe2-fd101abb9d21\",\"type\":\"column\"},{\"column\":\"EDUCATION_LEVEL\",\"alias\":\"education\",\"id\":\"5f5dd2c4-2198-4879-9cc2-aed70b8a3510\",\"type\":\"column\"},{\"column\":\"SUPERVISOR_ID\",\"alias\":\"boosId\",\"id\":\"8fda74c0-fd52-4875-b1bc-44f71e157630\",\"type\":\"column\"},{\"columns\":[],\"alias\":\"date\",\"id\":\"47c1136d-6735-437d-8f50-538a34b6cc5e\",\"type\":\"level\"}]},\"selects\":[\"BIRTH_DATE\",\"DEPARTMENT_ID\",\"EDUCATION_LEVEL\",\"EMPLOYEE_ID\",\"END_DATE\",\"FIRST_NAME\",\"FULL_NAME\",\"GENDER\",\"HIRE_DATE\",\"LAST_NAME\",\"MANAGEMENT_ROLE\",\"MARITAL_STATUS\",\"POSITION_ID\",\"POSITION_TITLE\",\"SALARY\",\"STORE_ID\",\"SUPERVISOR_ID\"],\"datasource\":\"2\",\"query\":{\"sql\":\"select * from foodmart.employee\"},\"filters\":[{\"filters\":[{\"col\":\"EDUCATION_LEVEL\",\"values\":[],\"type\":\"=\"}],\"id\":\"3562ef8e-cb49-412d-bd11-a4fccb880985\",\"group\":\"education\"}],\"expressions\":[{\"alias\":\"avg_salary\",\"id\":\"b252a564-b3ab-4e09-a51e-4fdbb04f1ce2\",\"type\":\"exp\",\"exp\":\"sum(SALARY)/count(EMPLOYEE_ID)\"}]}','2018-10-30 05:58:12','2018-10-30 06:14:00','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list,sys:dataset:data'),(13,1,'Default Category','dataset-re','{\"schema\":{\"measure\":[{\"column\":\"CASES_PER_PALLET\",\"alias\":\"case\",\"id\":\"ac88f069-1406-4ec2-8f20-ecacd970c2bb\",\"type\":\"column\"}],\"dimension\":[{\"column\":\"PRODUCT_NAME\",\"alias\":\"product_name\",\"id\":\"ea060de2-92ba-4166-95b6-8f27df2f0b73\",\"type\":\"column\"},{\"column\":\"PRODUCT_FAMILY\",\"alias\":\"product_cate\",\"id\":\"58015779-a5d5-4f28-8002-cb8cfe9ac182\",\"type\":\"column\"}]},\"selects\":[\"BRAND_NAME\",\"CASES_PER_PALLET\",\"GROSS_WEIGHT\",\"LOW_FAT\",\"NET_WEIGHT\",\"PRODUCT_CATEGORY\",\"PRODUCT_CLASS_ID\",\"PRODUCT_DEPARTMENT\",\"PRODUCT_FAMILY\",\"PRODUCT_ID\",\"PRODUCT_NAME\",\"PRODUCT_SUBCATEGORY\",\"RECYCLABLE_PACKAGE\",\"SHELF_DEPTH\",\"SHELF_HEIGHT\",\"SHELF_WIDTH\",\"SKU\",\"SRP\",\"UNITS_PER_CASE\"],\"datasource\":\"6\",\"query\":{\"sql\":\"select * from product;\"},\"filters\":[],\"expressions\":[]}','2018-10-31 01:40:32','2018-10-31 01:40:32','sys:dataset:list,sys:dataset:data'),(14,1,'Default Category','map_data','{\"schema\":{\"measure\":[{\"column\":\"cnt\",\"id\":\"1ac7d699-ce3a-47cb-8d1c-aecbdbef68bc\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"province\",\"id\":\"0647182d-101d-49ac-b622-5cadde92de99\",\"type\":\"column\"},{\"column\":\"city\",\"id\":\"2d2a5a53-d73d-43a7-8f8d-3d0d3ba5610f\",\"type\":\"column\"},{\"column\":\"district\",\"id\":\"559b23f3-70c5-4975-a9c8-fe3724ddc23d\",\"type\":\"column\"}],\"alias\":\"GEO\",\"id\":\"9e40799f-45a8-4ff6-bf88-b4c8f21881e1\",\"type\":\"level\"},{\"column\":\"wind_direct\",\"id\":\"7b163a67-f3c5-498c-850a-9272c73d18da\",\"type\":\"column\"},{\"column\":\"wind_level\",\"id\":\"161db53b-d2b2-4561-bccb-c3fe89d357e5\",\"type\":\"column\"}]},\"selects\":[\"city\",\"cnt\",\"district\",\"max_temp\",\"province\",\"wind_direct\",\"wind_level\"],\"datasource\":\"2\",\"query\":{\"sql\":\"select * from map_data_sample\"},\"interval\":\"120\",\"filters\":[{\"filters\":[{\"col\":\"wind_direct\",\"values\":[],\"type\":\"=\"}],\"id\":\"49a9fba3-1afb-46cf-8c0c-30d9eba90189\",\"group\":\"wind_direct\"},{\"filters\":[{\"col\":\"wind_level\",\"values\":[],\"type\":\"=\"}],\"id\":\"b2dc2c97-3d26-4e2b-95c2-88fe6fe4d155\",\"group\":\"wind_level\"}],\"expressions\":[{\"alias\":\"avg_cnt\",\"id\":\"2d3f593e-d351-4b3b-bca5-0d40ddadfbdf\",\"type\":\"exp\",\"exp\":\"sum(cnt)/count(district)\"}]}','2018-11-01 01:41:51','2018-11-02 02:45:21','sys:dataset:save,sys:dataset:update,sys:dataset:delete,sys:dataset:list'),(16,1,'Default Category','t1','{\"schema\":{\"measure\":[{\"column\":\"SALARY\",\"id\":\"b7557ae5-6433-4a3e-a0bf-905fd0f1a381\",\"type\":\"column\"}],\"dimension\":[{\"column\":\"DEPARTMENT_ID\",\"id\":\"44e8bfce-e8f6-4b22-a25b-af979de5ad4e\",\"type\":\"column\"},{\"column\":\"GENDER\",\"id\":\"6b78190c-5e47-4a00-8321-f8e701017103\",\"type\":\"column\"}]},\"selects\":[\"BIRTH_DATE\",\"DEPARTMENT_ID\",\"EDUCATION_LEVEL\",\"EMPLOYEE_ID\",\"END_DATE\",\"FIRST_NAME\",\"FULL_NAME\",\"GENDER\",\"HIRE_DATE\",\"LAST_NAME\",\"MANAGEMENT_ROLE\",\"MARITAL_STATUS\",\"POSITION_ID\",\"POSITION_TITLE\",\"SALARY\",\"STORE_ID\",\"SUPERVISOR_ID\"],\"datasource\":\"9\",\"query\":{\"sql\":\"select * from employee\"},\"filters\":[],\"expressions\":[]}','2018-11-13 01:22:52','2018-11-20 03:40:05','sys:dataset:list,sys:dataset:data');
/*!40000 ALTER TABLE `dashboard_dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_datasource`
--

DROP TABLE IF EXISTS `dashboard_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_datasource` (
  `datasource_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `source_type` varchar(100) NOT NULL,
  `config` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`datasource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_datasource`
--

LOCK TABLES `dashboard_datasource` WRITE;
/*!40000 ALTER TABLE `dashboard_datasource` DISABLE KEYS */;
INSERT INTO `dashboard_datasource` VALUES (1,'1','FoodMart_AD','jdbc','{\"aggregateProvider\":true,\"password\":\"mysql\",\"driver\":\"com.mysql.jdbc.Driver\",\"pooled\":true,\"jdbcurl\":\"jdbc:mysql://localhost:3306/foodmart?characterEncoding=utf8&useSSL=true\",\"username\":\"root\"}','2018-10-15 06:03:55','2018-11-19 08:57:45','sys:datasource:list,sys:datasource:save,sys:datasource:update,sys:datasource:delete'),(2,'1','foodmart','jdbc','{\"aggregateProvider\":true,\"password\":\"mysql\",\"pooled\":true,\"driver\":\"com.mysql.jdbc.Driver\",\"jdbcurl\":\"jdbc:mysql://localhost:3306/foodmart?characterEncoding=utf8&useSSL=true\",\"username\":\"root\"}','2018-10-15 07:11:04','2018-11-19 09:20:52','sys:datasource:list,sys:datasource:save,sys:datasource:update,sys:datasource:delete'),(6,'1','re-test','jdbc','{\"aggregateProvider\":true,\"password\":\"mysql\",\"pooled\":true,\"driver\":\"com.mysql.jdbc.Driver\",\"jdbcurl\":\"jdbc:mysql://localhost:3306/foodmart?characterEncoding=utf8&useSSL=true\",\"username\":\"root\"}','2018-10-30 05:49:44','2018-11-19 08:57:58','sys:datasource:list,sys:datasource:save,sys:datasource:update,sys:datasource:delete'),(9,'1','t1','jdbc','{\"aggregateProvider\":true,\"password\":\"mysql\",\"pooled\":true,\"driver\":\"com.mysql.jdbc.Driver\",\"jdbcurl\":\"jdbc:mysql://localhost:3306/foodmart?characterEncoding=utf8&useSSL=true\",\"username\":\"root\"}','2018-11-13 01:22:01','2018-11-19 08:58:10','sys:datasource:list,sys:datasource:save,sys:datasource:update,sys:datasource:delete');
/*!40000 ALTER TABLE `dashboard_datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_job`
--

DROP TABLE IF EXISTS `dashboard_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(200) DEFAULT NULL,
  `cron_exp` varchar(200) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `job_type` varchar(200) DEFAULT NULL,
  `job_config` text,
  `user_id` varchar(100) DEFAULT NULL,
  `last_exec_time` timestamp NULL DEFAULT NULL,
  `job_status` bigint(20) DEFAULT NULL,
  `exec_log` text,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_job`
--

LOCK TABLES `dashboard_job` WRITE;
/*!40000 ALTER TABLE `dashboard_job` DISABLE KEYS */;
INSERT INTO `dashboard_job` VALUES (1,'Foodmart Daily Report','0 0 9 * * ?','2017-04-30 16:00:00','2017-05-25 16:00:00','mail','{\"subject\":\"Foodmart Report\",\"boards\":[{\"id\":1,\"type\":\"xls,img\"}],\"to\":\"cc@gmail.com\"}','1','2018-10-22 06:21:45',0,'java.lang.NullPointerException\r\n	at org.cboard.services.persist.excel.XlsProcessService.dashboardToXls(XlsProcessService.java:83)\r\n	at org.cboard.services.persist.excel.XlsProcessService.dashboardToXls(XlsProcessService.java:34)\r\n	at org.cboard.services.MailService.sendDashboard(MailService.java:85)\r\n	at org.cboard.services.job.JobService.sendMail(JobService.java:90)\r\n	at org.cboard.services.job.JobService.lambda$exec$0(JobService.java:149)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','sys:job:list,sys:job:save,sys:job:update,sys:job:delete'),(2,'job1','0 0 15 * * ?','2018-11-06 16:00:00','2018-11-10 16:00:00','mail','{\"subject\":\"cboard test\",\"boards\":[{\"id\":3,\"type\":\"xls\"}],\"to\":\"865210181@qq.com\"}','1','2018-11-18 08:06:35',2,'','sys:job:list,sys:job:save,sys:job:update,sys:job:delete');
/*!40000 ALTER TABLE `dashboard_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget`
--

DROP TABLE IF EXISTS `dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `widget_name` varchar(100) DEFAULT NULL,
  `data_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget`
--

LOCK TABLES `dashboard_widget` WRITE;
/*!40000 ALTER TABLE `dashboard_widget` DISABLE KEYS */;
INSERT INTO `dashboard_widget` VALUES (1,'1','Demo','CrossTable','{\"datasetId\":2,\"config\":{\"chart_type\":\"table\",\"keys\":[{\"col\":\"gender\",\"values\":[],\"sort\":\"asc\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"eq\"},{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"},{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(2,'1','Demo','Funnel','{\"datasetId\":2,\"config\":{\"chart_type\":\"funnel\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"},{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"},{\"col\":\"unit_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(3,'1','Demo','Sanky','{\"datasource\":1,\"query\":{\"sql\":\"SELECT * FROM sanky_date\"},\"config\":{\"chart_type\":\"sankey\",\"keys\":[{\"col\":\"source\",\"values\":[],\"sort\":\"asc\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"value\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"target\",\"values\":[],\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(4,'1','Demo','LineBar_Top10_Vertical','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"bar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_top\":10,\"sort\":\"desc\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(5,'1','Demo','LineBar_Top10_Horizontal','{\"datasetId\":2,\"config\":{\"valueAxis\":\"horizontal\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"bar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_top\":10,\"sort\":\"desc\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(6,'1','Demo','LineBar_Percentage','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"percentbar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(7,'1','Demo','Radar','{\"datasetId\":2,\"config\":{\"chart_type\":\"radar\",\"keys\":[{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[\"North West\"],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"=\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"=\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"gender\",\"values\":[],\"sort\":\"asc\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"eq\"}],\"filters\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"}]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(8,'1','Demo','Map','{\"datasetId\":7,\"config\":{\"chart_type\":\"map\",\"keys\":[{\"col\":\"province\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"983188c3-ade1-48ee-8d33-53239ae271bf\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(9,'1','Demo','Bubble','{\"datasetId\":2,\"config\":{\"chart_type\":\"scatter\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"eq\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"store_sales\",\"aggregate_type\":\"min\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"unit_sales\",\"aggregate_type\":\"count\"}]}],\"groups\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(10,'1','Demo/KPI','KPI1','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI1\",\"format\":\"0a.00\",\"style\":\"bg-aqua\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(11,'1','Demo/KPI','KPI2','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI2\",\"format\":\"0a.00\",\"style\":\"bg-red\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"count\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(12,'1','Demo/KPI','KPI3','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI3\",\"format\":\"0a.000\",\"style\":\"bg-green\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"avg\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(13,'1','Demo/KPI','KPI4','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI4\",\"format\":\"0a.000%\",\"style\":\"bg-yellow\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"max\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(14,'1','Demo','LineBar_Double_Aixes','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"percentbar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_type\":\">\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"series_type\":\"line\",\"type\":\"value\",\"cols\":[{\"col\":\"unit_sales\",\"f_values\":[],\"f_top\":\"\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[{\"filters\":[{\"col\":\"the_date\",\"values\":[\"{now(\'M\', -2, \'yyyy-MM-dd\')}\"],\"type\":\">\"}],\"id\":\"405f1bd3-758b-4025-b6c1-e3807a3ab000\",\"group\":\"last6months\"}]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(15,'1','Demo','PieChart','{\"datasetId\":2,\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"sort\":\"asc\",\"aggregate_type\":\"count\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 06:03:56','2018-10-15 06:03:56','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(16,'1','Default Category','widget_sample1_pie','{\"datasetId\":8,\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"41b62b30-8d31-4da0-a92f-7ad3e0320a4a\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 09:28:19','2018-10-23 03:42:31','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(17,'1','Default Category','widget_sample2_map','{\"datasetId\":11,\"config\":{\"chart_type\":\"areaMap\",\"keys\":[{\"col\":\"provn\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"d20dc98e-2af5-49c6-8764-49cdcde780e4\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"hasSuffix\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 09:46:28','2018-10-16 03:00:58','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(18,'1','Default Category','widget_sample3_pie2','{\"datasetId\":11,\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"provn\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"d20dc98e-2af5-49c6-8764-49cdcde780e4\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 09:47:50','2018-10-23 03:57:49','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(19,'1','Default Category','widget_sample4_line','{\"datasetId\":8,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"5f106474-8316-4024-b428-b86a8fe6d119\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"line\",\"type\":\"value\",\"cols\":[{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"}],\"filters\":[],\"coordinateSystem\":\"cartesian2d\",\"option\":{\"dataZoom\":false,\"gridCustom\":false,\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-15 09:50:26','2018-10-16 03:01:46','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(20,'1','Default Category','widget_sample5_sankey','{\"datasetId\":8,\"config\":{\"chart_type\":\"sankey\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"5f106474-8316-4024-b428-b86a8fe6d119\",\"type\":\"eq\"}],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 02:27:43','2018-10-16 03:02:13','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(21,'1','Default Category','widget_sample6_funnel','{\"datasetId\":8,\"config\":{\"chart_type\":\"funnel\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"},{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"},{\"col\":\"unit_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 02:50:28','2018-10-16 03:02:28','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(22,'1','Default Category','widget_sample7_radar','{\"datasetId\":8,\"config\":{\"drawBy\":\"column\",\"chart_type\":\"radar\",\"keys\":[{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[\"North West\"],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"41b62b30-8d31-4da0-a92f-7ad3e0320a4a\",\"type\":\"=\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"be92ea8e-d14d-436d-886d-ec4f0e1c329b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_COST\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"GENDER\",\"values\":[],\"sort\":\"asc\",\"id\":\"c3c1b0f5-cf42-480e-abff-a4793ce734a8\",\"type\":\"eq\"}],\"filters\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"=\"}],\"option\":{\"legendY\":\"top\",\"legendShow\":true,\"legendOrient\":\"vertical\",\"legendX\":\"center\"}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 02:59:52','2018-10-16 03:02:44','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(23,'1','Default Category','widget_sample8_bubble','{\"datasetId\":8,\"config\":{\"chart_type\":\"scatter\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"41b62b30-8d31-4da0-a92f-7ad3e0320a4a\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_COST\",\"alias\":\"\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"UNIT_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"be92ea8e-d14d-436d-886d-ec4f0e1c329b\",\"type\":\"eq\"}],\"filters\":[],\"option\":{\"dataZoom\":false,\"gridCustom\":true,\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 03:26:02','2018-10-16 03:26:02','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(24,'1','Default Category','widget_sample9_contrast','{\"datasetId\":8,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"contrast\",\"keys\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"be92ea8e-d14d-436d-886d-ec4f0e1c329b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_COST\",\"aggregate_type\":\"sum\"},{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 03:32:26','2018-10-16 03:32:26','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(25,'1','Default Category','widget_sample10_wordcloud','{\"datasetId\":8,\"config\":{\"chart_type\":\"wordCloud\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"4be636c6-4633-40bb-a0d5-3df18a3714d1\",\"type\":\"eq\"},{\"col\":\"MONTH_OF_YEAR\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"0ea455c4-f3fa-4f43-9684-7eb81ebf65c7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 05:41:05','2018-10-30 02:16:12','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(26,'1','Default Category','widget_sample11_treemap','{\"datasetId\":8,\"config\":{\"chart_type\":\"treeMap\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"f9e4d631-5f17-464e-892b-7482aef28e5d\",\"type\":\"eq\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"be92ea8e-d14d-436d-886d-ec4f0e1c329b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 05:43:25','2018-10-16 05:58:23','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(27,'1','Default Category','widget_sample12_heatmap','{\"datasetId\":8,\"config\":{\"chart_type\":\"heatMapTable\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"4be636c6-4633-40bb-a0d5-3df18a3714d1\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"style\":\"blue\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"MONTH_OF_YEAR\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"0ea455c4-f3fa-4f43-9684-7eb81ebf65c7\",\"type\":\"eq\"}],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 05:45:48','2018-10-16 05:45:48','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(28,'1','Default Category','widget_sample13_relation','{\"datasetId\":8,\"config\":{\"chart_type\":\"relation\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"4be636c6-4633-40bb-a0d5-3df18a3714d1\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"MONTH_OF_YEAR\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"0ea455c4-f3fa-4f43-9684-7eb81ebf65c7\",\"type\":\"eq\"}],\"filters\":[],\"option\":{\"nodeProportion\":\"5\"}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 05:48:24','2018-10-16 05:48:24','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(29,'1','Default Category','widget_sample14_kpi1','{\"datasetId\":8,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"store_sales\",\"style\":\"bg-red\",\"cols\":[{\"col\":\"STORE_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 05:52:41','2018-10-16 06:00:59','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(30,'1','Default Category','widget_sample15_kpi2','{\"datasetId\":8,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"\",\"style\":\"bg-aqua\",\"cols\":[{\"col\":\"STORE_COST\",\"sort\":\"asc\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 06:00:48','2018-10-16 06:00:48','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(31,'1','Default Category','widget_sample16_kpi3','{\"datasetId\":8,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"\",\"style\":\"bg-aqua\",\"cols\":[{\"col\":\"UNIT_SALES\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-10-16 06:01:24','2018-10-16 06:01:24','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(34,'1','Default Category','widget_sample17_pie4','{\"datasetId\":\"12\",\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"POSITION_TITLE\",\"values\":[],\"alias\":\"position\",\"sort\":\"asc\",\"id\":\"98d4da4b-8bc3-45dd-bc2f-f69b76f0450e\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"alias\":\"avg_salary\",\"id\":\"b252a564-b3ab-4e09-a51e-4fdbb04f1ce2\",\"type\":\"exp\",\"exp\":\"sum(SALARY)/count(EMPLOYEE_ID)\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-30 06:05:03','2018-10-30 06:09:16','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(35,'1','Default Category','widget_sample18_pie5','{\"datasetId\":\"12\",\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"EDUCATION_LEVEL\",\"values\":[],\"alias\":\"education\",\"sort\":\"asc\",\"id\":\"5f5dd2c4-2198-4879-9cc2-aed70b8a3510\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"alias\":\"avg_salary\",\"id\":\"b252a564-b3ab-4e09-a51e-4fdbb04f1ce2\",\"type\":\"exp\",\"exp\":\"sum(SALARY)/count(EMPLOYEE_ID)\"}]}],\"groups\":[],\"filters\":[{\"filters\":[{\"col\":\"EDUCATION_LEVEL\",\"values\":[],\"type\":\"=\"}],\"id\":\"3562ef8e-cb49-412d-bd11-a4fccb880985\",\"group\":\"education\"}],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-30 06:09:01','2018-10-30 06:09:01','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(36,'1','Default Category','widget_sample19_bubble2','{\"datasetId\":\"12\",\"config\":{\"chart_type\":\"scatter\",\"keys\":[{\"col\":\"POSITION_TITLE\",\"values\":[],\"alias\":\"position\",\"sort\":\"asc\",\"id\":\"98d4da4b-8bc3-45dd-bc2f-f69b76f0450e\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"alias\":\"avg_salary\",\"id\":\"b252a564-b3ab-4e09-a51e-4fdbb04f1ce2\",\"type\":\"exp\",\"exp\":\"sum(SALARY)/count(EMPLOYEE_ID)\"}]},{\"name\":\"\",\"cols\":[]},{\"name\":\"\",\"cols\":[]}],\"groups\":[{\"col\":\"EDUCATION_LEVEL\",\"values\":[],\"alias\":\"education\",\"sort\":\"asc\",\"id\":\"5f5dd2c4-2198-4879-9cc2-aed70b8a3510\",\"type\":\"eq\"}],\"filters\":[],\"option\":{\"dataZoom\":false,\"gridCustom\":false,\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-30 06:23:00','2018-10-30 06:23:00','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(37,'1','Default Category','widget_sample20_re','{\"datasetId\":\"13\",\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"PRODUCT_FAMILY\",\"values\":[],\"alias\":\"product_cate\",\"sort\":\"asc\",\"id\":\"58015779-a5d5-4f28-8002-cb8cfe9ac182\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"col\":\"CASES_PER_PALLET\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-10-31 02:16:21','2018-10-31 02:17:16','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(38,'1','Test','w01','{\"datasetId\":\"14\",\"config\":{\"chart_type\":\"table\",\"keys\":[{\"col\":\"province\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"0647182d-101d-49ac-b622-5cadde92de99\",\"type\":\"eq\"},{\"col\":\"city\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"2d2a5a53-d73d-43a7-8f8d-3d0d3ba5610f\",\"type\":\"eq\"},{\"col\":\"district\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"559b23f3-70c5-4975-a9c8-fe3724ddc23d\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[{\"filters\":[{\"col\":\"wind_level\",\"values\":[],\"type\":\"=\"}],\"id\":\"b2dc2c97-3d26-4e2b-95c2-88fe6fe4d155\",\"group\":\"wind_level\"},{\"filters\":[{\"col\":\"wind_direct\",\"values\":[],\"type\":\"=\"}],\"id\":\"49a9fba3-1afb-46cf-8c0c-30d9eba90189\",\"group\":\"wind_direct\"}],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-11-01 01:51:42','2018-11-05 03:24:27','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(39,'1','Test','w02','{\"datasetId\":\"14\",\"config\":{\"chart_type\":\"map\",\"keys\":[{\"col\":\"province\",\"level\":\"GEO\",\"values\":[\"内蒙古自治区\"],\"sort\":\"asc\",\"id\":\"0647182d-101d-49ac-b622-5cadde92de99\",\"type\":\"=\"},{\"col\":\"city\",\"level\":\"GEO\",\"values\":[\"赤峰市\"],\"id\":\"2d2a5a53-d73d-43a7-8f8d-3d0d3ba5610f\",\"sort\":\"asc\",\"type\":\"=\"},{\"col\":\"district\",\"level\":\"GEO\",\"values\":[],\"id\":\"559b23f3-70c5-4975-a9c8-fe3724ddc23d\",\"sort\":\"asc\",\"type\":\"=\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{}},\"expressions\":[],\"filterGroups\":[]}','2018-11-01 01:56:42','2018-11-01 02:02:40','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data'),(41,'1','Default Category','t1','{\"datasetId\":\"16\",\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"DEPARTMENT_ID\",\"values\":[],\"sort\":\"asc\",\"id\":\"44e8bfce-e8f6-4b22-a25b-af979de5ad4e\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"pie\",\"type\":\"value\",\"cols\":[{\"col\":\"SALARY\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[],\"option\":{\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2018-11-13 01:31:24','2018-11-13 01:31:24','sys:widget:list,sys:widget:save,sys:widget:update,sys:widget:delete,sys:widget:data');
/*!40000 ALTER TABLE `dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_captcha`
--

DROP TABLE IF EXISTS `sys_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_captcha` (
  `uuid` char(36) NOT NULL COMMENT 'uuid',
  `code` varchar(6) NOT NULL COMMENT '验证码',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_captcha`
--

LOCK TABLES `sys_captcha` WRITE;
/*!40000 ALTER TABLE `sys_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'CLOUD_STORAGE_CONFIG_KEY','{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}',0,'云存储配置信息');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `resource_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'菜单',NULL,NULL,0,'fa fa-cog',0,NULL),(2,1,'数据源管理','modules/sys/user.html',NULL,1,'fa fa-user',1,NULL),(3,1,'数据集管理','modules/sys/role.html',NULL,1,'fa fa-user-secret',2,NULL),(4,1,'图表','modules/sys/menu.html',NULL,1,'fa fa-th-list',3,NULL),(5,1,'看板','druid/sql.html',NULL,1,'fa fa-bug',4,NULL),(6,1,'定时任务','modules/job/schedule.html',NULL,1,'fa fa-tasks',5,NULL),(7,6,'查看',NULL,'sys:job:list',2,NULL,0,NULL),(8,6,'新增',NULL,'sys:job:save',2,NULL,0,NULL),(9,6,'修改',NULL,'sys:job:update',2,NULL,0,NULL),(10,6,'删除',NULL,'sys:job:delete',2,NULL,0,NULL),(11,6,'暂停',NULL,'sys:job:pause',2,NULL,0,NULL),(12,6,'恢复',NULL,'sys:job:resume',2,NULL,0,NULL),(13,6,'立即执行',NULL,'sys:job:run',2,NULL,0,NULL),(14,6,'日志列表',NULL,'sys:job:log',2,NULL,0,NULL),(15,2,'查看',NULL,'sys:datasource:list',2,NULL,0,NULL),(16,2,'新增',NULL,'sys:datasource:save',2,NULL,0,NULL),(17,2,'修改',NULL,'sys:datasource:update',2,NULL,0,NULL),(18,2,'删除',NULL,'sys:datasource:delete',2,NULL,0,NULL),(19,3,'查看',NULL,'sys:dataset:list',2,NULL,0,NULL),(20,3,'新增',NULL,'sys:dataset:save',2,NULL,0,NULL),(21,3,'修改',NULL,'sys:dataset:update',2,NULL,0,NULL),(22,3,'删除',NULL,'sys:dataset:delete',2,NULL,0,NULL),(23,4,'查看',NULL,'sys:widget:list',2,NULL,0,NULL),(24,4,'新增',NULL,'sys:widget:save',2,NULL,0,NULL),(25,4,'修改',NULL,'sys:widget:update',2,NULL,0,NULL),(26,4,'删除',NULL,'sys:widget:delete',2,NULL,0,NULL),(27,5,'查看','','sys:board:list',2,'',6,NULL),(29,5,'新增','','sys:board:save',2,'',7,NULL),(30,5,'修改','','sys:board:update',2,'',6,NULL),(31,5,'删除','','sys:board:delete',2,'',1,NULL),(32,3,'获取数据',NULL,'sys:dataset:data',2,NULL,0,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','系统管理员',1,'2018-11-17 17:02:49'),(2,'用户','普通用户',1,'2018-11-17 17:06:00');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_board`
--

DROP TABLE IF EXISTS `sys_role_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_board` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `board_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_board`
--

LOCK TABLES `sys_role_board` WRITE;
/*!40000 ALTER TABLE `sys_role_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dataset`
--

DROP TABLE IF EXISTS `sys_role_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dataset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `dataset_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dataset`
--

LOCK TABLES `sys_role_dataset` WRITE;
/*!40000 ALTER TABLE `sys_role_dataset` DISABLE KEYS */;
INSERT INTO `sys_role_dataset` VALUES (1,1,2),(2,1,7),(3,1,8),(4,1,9),(5,1,11),(6,1,12),(7,1,13),(8,1,14),(9,1,16);
/*!40000 ALTER TABLE `sys_role_dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_datasource`
--

DROP TABLE IF EXISTS `sys_role_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_datasource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `datasource_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_datasource`
--

LOCK TABLES `sys_role_datasource` WRITE;
/*!40000 ALTER TABLE `sys_role_datasource` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_job`
--

DROP TABLE IF EXISTS `sys_role_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_job`
--

LOCK TABLES `sys_role_job` WRITE;
/*!40000 ALTER TABLE `sys_role_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_widget`
--

DROP TABLE IF EXISTS `sys_role_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_widget` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_widget`
--

LOCK TABLES `sys_role_widget` WRITE;
/*!40000 ALTER TABLE `sys_role_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b','YzcmCZNvbXocrsz9dm8e','root@renren.io','13612345678',1,1,'2016-11-11 11:11:11');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_token`
--

DROP TABLE IF EXISTS `sys_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_token`
--

LOCK TABLES `sys_user_token` WRITE;
/*!40000 ALTER TABLE `sys_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'mark','13612345678','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','2017-03-23 22:37:41');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-20 11:57:33
