-- neo4j清空所有数据命令如下

-- MATCH (n)
-- OPTIONAL MATCH (n)-[r]-()
-- DELETE n,r


CREATE (oa:Job {name:'自动化办公'})
CREATE (webDevelop:Job {name:'web开发'})
CREATE (reptile:Job {name:'爬虫'})
CREATE (dataAnalysis:Job {name:'数据分析'})
CREATE (artificialIntel:Job {name:'人工智能'})
CREATE (bigData:Job {name:'大数据'})


CREATE (linux:Knowledge {name:'Linux'})
CREATE (css:Knowledge {name:'CSS'})
CREATE (xpath:Knowledge {name:'XPath'})
CREATE (html:Knowledge {name:'HTML'})
CREATE (network:Knowledge {name:'网络'})
CREATE (windowsOffice:Knowledge {name:'Windows办公软件'})
CREATE (industryKnowledge:Knowledge {name:'所属行业业务知识'})
CREATE (statistics:Knowledge {name:'统计'})
CREATE (advanceMath:Knowledge {name:'高数'})
CREATE (machineLearning:Knowledge {name:'机器学习'})
CREATE (deepLearning:Knowledge {name:'深度学习'})
CREATE (python:Knowledge {name:'Python基础'})
CREATE (fileProcess:Knowledge {name:'文件处理'})
CREATE (flask:Knowledge {name:'Flask'})
CREATE (django:Knowledge {name:'Django'})
CREATE (requests:Knowledge {name:'Requests'})
CREATE (bs4:Knowledge {name:'bs4'})
CREATE (scrapy:Knowledge {name:'Scrapy'})
CREATE (mysql:Knowledge {name:'MySQL'})
CREATE (mongodb:Knowledge {name:'MongoDB'})
CREATE (hbase:Knowledge {name:'HBase'})
CREATE (hive:Knowledge {name:'Hive'})
CREATE (scala:Knowledge {name:'Scala'})
CREATE (spark:Knowledge {name:'Spark'})
CREATE (hadoop:Knowledge {name:'Hadoop'})
CREATE (java:Knowledge {name:'JAVA'})
CREATE (flink:Knowledge {name:'FLink'})
CREATE (flume:Knowledge {name:'flume'})
CREATE (kafka:Knowledge {name:'Kafka'})
CREATE (storm:Knowledge {name:'Storm'})


CREATE (offlineCalculate:JobDirection {name:'离线计算'})
CREATE (onlineCalculate:JobDirection {name:'实时计算'})
CREATE (vision:JobDirection {name:'视觉'})
CREATE (voice:JobDirection {name:'语音'})
CREATE (nlp:JobDirection {name:'NLP'})
CREATE (recommend:JobDirection {name:'推荐'})


CREATE 
	(oa)-[:PATH_OA]->(python),
	(python)-[:PATH_OA]->(fileProcess)

CREATE 
	(webDevelop)-[:PATH_WEB_DEVELOP]->(python),
	(webDevelop)-[:PATH_WEB_DEVELOP]->(linux),
	(python)-[:PATH_WEB_DEVELOP]->(fileProcess),
	(fileProcess)-[:PATH_WEB_DEVELOP]->(flask),
	(fileProcess)-[:PATH_WEB_DEVELOP]->(django),
	(flask)-[:PATH_WEB_DEVELOP]->(mysql),
	(django)-[:PATH_WEB_DEVELOP]->(mysql)

CREATE 
	(reptile)-[:PATH_REPTILE]->(network),
	(reptile)-[:PATH_REPTILE]->(linux),
	(reptile)-[:PATH_REPTILE]->(html),
	(html)-[:PATH_REPTILE]->(xpath),
	(html)-[:PATH_REPTILE]->(css)

CREATE 
	(dataAnalysis)-[:PATH_DATA_ABALYSIS]->(linux),
	(dataAnalysis)-[:PATH_DATA_ABALYSIS]->(windowsOffice),
	(dataAnalysis)-[:PATH_DATA_ABALYSIS]->(industryKnowledge),
	(dataAnalysis)-[:PATH_DATA_ABALYSIS]->(statistics),
	(dataAnalysis)-[:PATH_DATA_ABALYSIS]->(python),
	(python)-[:PATH_DATA_ABALYSIS]->(mysql),
	(python)-[:PATH_DATA_ABALYSIS]->(mongodb),
	(python)-[:PATH_DATA_ABALYSIS]->(hbase),
	(python)-[:PATH_DATA_ABALYSIS]->(hive)

CREATE 
	(artificialIntel)-[:PATH_AI]->(python),
	(artificialIntel)-[:PATH_AI]->(advanceMath),
	(advanceMath)-[:PATH_AI]->(statistics),
	(statistics)-[:PATH_AI]->(machineLearning),
	(machineLearning)-[:PATH_AI]->(linux),
	(machineLearning)-[:PATH_AI]->(deepLearning),
	(deepLearning)-[:PATH_AI]->(vision),
	(deepLearning)-[:PATH_AI]->(voice),
	(deepLearning)-[:PATH_AI]->(nlp),
	(deepLearning)-[:PATH_AI]->(recommend)

CREATE 
	(bigData)-[:PATH_BIG_DATA]->(linux),
	(bigData)-[:PATH_BIG_DATA]->(offlineCalculate),
	(bigData)-[:PATH_BIG_DATA]->(onlineCalculate),
	(offlineCalculate)-[:PATH_BIG_DATA]->(hive),
	(offlineCalculate)-[:PATH_BIG_DATA]->(hbase),
	(offlineCalculate)-[:PATH_BIG_DATA]->(scala),
	(offlineCalculate)-[:PATH_BIG_DATA]->(hadoop),
	(scala)-[:PATH_BIG_DATA]->(spark),
	(onlineCalculate)-[:PATH_BIG_DATA]->(java),
	(java)-[:PATH_BIG_DATA]->(hadoop),
	(java)-[:PATH_BIG_DATA]->(flink),
	(java)-[:PATH_BIG_DATA]->(flume),
	(java)-[:PATH_BIG_DATA]->(kafka),
	(java)-[:PATH_BIG_DATA]->(storm)

CREATE
	(python)-[:PATH_PYTHON]->(requests),
	(requests)-[:PATH_PYTHON]->(bs4),
	(bs4)-[:PATH_PYTHON]->(scrapy),
	(scrapy)-[:PATH_PYTHON]->(mysql),
	(scrapy)-[:PATH_PYTHON]->(mongodb)
