
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'FraserTask')
  BEGIN
    CREATE DATABASE FraserTask
    
    USE FraserTask

IF OBJECT_ID('RAW_Table_ProductsFG') IS NOT NULL DROP TABLE RAW_Table_ProductsFG;
create table RAW_Table_ProductsFG (
Product					nvarchar (20),
Financial_week			int   ,
Week_Commencing          date,
Store_sales_units		int   ,
Web_sale_Units			int		,
Total_sales_units		int ,
Store_Turnover			int ,
Web_Turnover			int ,
Total_turnover			int ,
Store_Average_SellPrice float ,
Web_average_sellPrice   float ,
Average_sell_price		float ,
Stock_availability		float   
)

Insert into RAW_Table_ProductsFG 
 values  
 ('Product_A'	,201746	,CONVERT( DATE ,'06-03-2017',105),	748		,86			,834				,26031	,	2656	,		28687		,	34.80	,	30.88		,	34.40	,	94.6	 )
,('Product_A'	,201747	,CONVERT( DATE ,'13-03-2017',105),	692		,85			,777				,24131	,	2585	,		26715		,	34.87	,	30.41		,	34.38	,	95.6	 )
,('Product_A'	,201748	,CONVERT( DATE ,'20-03-2017',105),	699		,86			,785				,24347	,	2643	,		26990		,	34.83	,	30.74		,	34.38	,	94.8	 )
,('Product_A'	,201749	,CONVERT( DATE ,'27-03-2017',105),	735		,86			,821				,25678	,	2675	,		28354		,	34.94	,	31.11		,	34.54	,	94.3	 )
,('Product_A'	,201750	,CONVERT( DATE ,'03-04-2017',105),	665		,81			,746				,23207	,	2514	,		25721		,	34.90	,	31.04		,	34.48	,	95.9	 )
,('Product_A'	,201751	,CONVERT( DATE ,'10-04-2017',105),	705		,72			,777				,24566	,	2279	,		26845		,	34.84	,	31.66		,	34.55	,	93.9	 )
,('Product_A'	,201752	,CONVERT( DATE ,'17-04-2017',105),	677		,60			,737				,23599	,	1863	,		25462		,	34.86	,	31.05		,	34.55	,	93.8	 )
,('Product_A'	,201753	,CONVERT( DATE ,'24-04-2017',105),	700		,66			,766				,24290	,	2051	,		26341		,	34.70	,	31.08		,	34.39	,	89.8	 )
,('Product_A'	,201801	,CONVERT( DATE ,'01-05-2017',105),	686		,94			,780				,23843	,	2928	,		26771		,	34.76	,	31.15		,	34.32	,	90.8	 )
,('Product_A'	,201802	,CONVERT( DATE ,'08-05-2017',105),	605		,86			,691				,21065	,	2672	,		23737		,	34.82	,	31.06		,	34.35	,	92.4	 )
,('Product_A'	,201803	,CONVERT( DATE ,'15-05-2017',105),	719		,76			,795				,24786	,	2369	,		27156		,	34.47	,	31.18		,	34.16	,	91.4	 )
,('Product_A'	,201804	,CONVERT( DATE ,'22-05-2017',105),	534		,67			,601				,18408	,	2077	,		20485		,	34.47	,	31.00		,	34.08	,	92.8	 )
,('Product_A'	,201805	,CONVERT( DATE ,'29-05-2017',105),	664		,83			,747				,23056	,	2513	,		25569		,	34.72	,	30.28		,	34.23	,	92.2	 )
,('Product_A'	,201806	,CONVERT( DATE ,'05-06-2017',105),	648		,93			,741				,22591	,	2871	,		25462		,	34.86	,	30.87		,	34.36	,	91.3	 )
,('Product_A'	,201807	,CONVERT( DATE ,'12-06-2017',105),	537		,74			,611				,18732	,	2260	,		20992		,	34.88	,	30.54		,	34.36	,	92.7	 )
,('Product_A'	,201808	,CONVERT( DATE ,'19-06-2017',105),	461		,82			,543				,16078	,	2541	,		18619		,	34.88	,	30.99		,	34.29	,	97.1	 )
,('Product_A'	,201809	,CONVERT( DATE ,'26-06-2017',105),	558		,63			,621				,19460	,	1953	,		21413		,	34.87	,	31.00		,	34.48	,	100		 )
,('Product_A'	,201810	,CONVERT( DATE ,'03-07-2017',105),	485		,71			,556				,16930	,	2203	,		19133		,	34.91	,	31.03		,	34.41	,	100		 )
,('Product_A'	,201811	,CONVERT( DATE ,'10-07-2017',105),	534		,59			,593				,18641	,	1831	,		20472		,	34.91	,	31.04		,	34.52	,	100		 )
,('Product_A'	,201812	,CONVERT( DATE ,'17-07-2017',105),	496		,68			,564				,17313	,	2114	,		19427		,	34.90	,	31.09		,	34.44	,	100		 )
,('Product_A'	,201813	,CONVERT( DATE ,'24-07-2017',105),	658		,80			,738				,22984	,	2483	,		25467		,	34.93	,	31.04		,	34.51	,	100		 )
,('Product_A'	,201814	,CONVERT( DATE ,'31-07-2017',105),	596		,117		,713				,20813	,	3621	,		24434		,	34.92	,	30.95		,	34.27	,	100		 )
,('Product_A'	,201815	,CONVERT( DATE ,'07-08-2017',105),	594		,100		,694				,20748	,	3077	,		23826		,	34.93	,	30.77		,	34.33	,	100		 )
,('Product_A'	,201816	,CONVERT( DATE ,'14-08-2017',105),	618		,99			,717				,21582	,	3067	,		24649		,	34.92	,	30.98		,	34.38	,	100		 )
,('Product_A'	,201817	,CONVERT( DATE ,'21-08-2017',105),	600		,111		,711				,20947	,	3423	,		24370		,	34.91	,	30.83		,	34.28	,	100		 )
,('Product_A'	,201818	,CONVERT( DATE ,'28-08-2017',105),	645		,134		,779				,22530	,	4100	,		26631		,	34.93	,	30.60		,	34.19	,	100		 )
,('Product_A'	,201819	,CONVERT( DATE ,'04-09-2017',105),	729		,189		,918				,25435	,	5787	,		31222		,	34.89	,	30.62		,	34.01	,	100		 )
,('Product_A'	,201820	,CONVERT( DATE ,'11-09-2017',105),	779		,180		,959				,27198	,	5501	,		32699		,	34.91	,	30.56		,	34.10	,	100		 )
,('Product_A'	,201821	,CONVERT( DATE ,'18-09-2017',105),	853		,196		,1049				,29776	,	6011	,		35787		,	34.91	,	30.67		,	34.12	,	97.4	 )
,('Product_A'	,201822	,CONVERT( DATE ,'25-09-2017',105),	841		,241		,1082				,30811	,	7450	,		38261		,	36.64	,	30.91		,	35.36	,	95.9	 )
,('Product_A'	,201823	,CONVERT( DATE ,'02-10-2017',105),	795		,173		,968				,30049	,	5567	,		35616		,	37.80	,	32.18		,	36.79	,	100 	 )
,('Product_A'	,201824	,CONVERT( DATE ,'09-10-2017',105),	815		,159		,974				,30818	,	5111	,		35929		,	37.81	,	32.15		,	36.89	,	100 	 )
,('Product_A'	,201825	,CONVERT( DATE ,'16-10-2017',105),	868		,161		,1029				,32734	,	5245	,		37980		,	37.71	,	32.58		,	36.91	,	99.6	 )
,('Product_A'	,201826	,CONVERT( DATE ,'23-10-2017',105),	874		,194		,1068				,33041	,	6323	,		39365		,	37.80	,	32.59		,	36.86	,	97.6	 )
,('Product_A'	,201827	,CONVERT( DATE ,'30-10-2017',105),	792		,176		,968				,29878	,	5745	,		35623		,	37.72	,	32.64		,	36.80	,	99.5	 )
,('Product_A'	,201828	,CONVERT( DATE ,'06-11-2017',105),	780		,204		,984				,29516	,	6517	,		36033		,	37.84	,	31.95		,	36.62	,	100 	 )
,('Product_A'	,201829	,CONVERT( DATE ,'13-11-2017',105),	801		,238		,1039				,30308	,	7111	,		37419		,	37.84	,	29.88		,	36.01	,	99.8	 )
,('Product_A'	,201830	,CONVERT( DATE ,'20-11-2017',105),	956		,286		,1242				,36120	,	9011	,		45131		,	37.78	,	31.51		,	36.34	,	99.9	 )
,('Product_A'	,201831	,CONVERT( DATE ,'27-11-2017',105),	1029	,289		,1318				,38927	,	9327	,		48254		,	37.83	,	32.27		,	36.61	,	99.0	 )
,('Product_A'	,201832	,CONVERT( DATE ,'04-12-2017',105),	1240	,273		,1513				,47018	,	8768	,		55786		,	37.92	,	32.12		,	36.87	,	99.2	 )
,('Product_A'	,201833	,CONVERT( DATE ,'11-12-2017',105),	1545	,307		,1852				,58537	,	10003	,		68540		,	37.89	,	32.58		,	37.01	,	97.4	 )
,('Product_A'	,201834	,CONVERT( DATE ,'18-12-2017',105),	1242	,162		,1404				,47023	,	5079	,		52102		,	37.86	,	31.35		,	37.11	,	99.8	 )
,('Product_A'	,201835	,CONVERT( DATE ,'25-12-2017',105),	1499	,145		,1644				,56770	,	4794	,		61565		,	37.87	,	33.06		,	37.45	,	93.8	 )
,('Product_A'	,201836	,CONVERT( DATE ,'01-01-2018',105),	1032	,209		,1241				,39114	,	6863	,		45976		,	37.90	,	32.84		,	37.05	,	86.2	 )
,('Product_A'	,201837	,CONVERT( DATE ,'08-01-2018',105),	808		,161		,969				,30664	,	5303	,		35967		,	37.95	,	32.94		,	37.12	,	99.1	 )
,('Product_A'	,201838	,CONVERT( DATE ,'15-01-2018',105),	914		,177		,1091				,34686	,	5580	,		40265		,	37.95	,	31.52		,	36.91	,	92.2	 )
,('Product_A'	,201839	,CONVERT( DATE ,'22-01-2018',105),	751		,154		,905				,28467	,	5128	,		33595		,	37.91	,	33.30		,	37.12	,	82.7	 )
,('Product_A'	,201840	,CONVERT( DATE ,'29-01-2018',105),	635		,138		,773				,24048	,	4511	,		28559		,	37.87	,	32.69		,	36.95	,	76.5	 )
,('Product_A'	,201841	,CONVERT( DATE ,'05-02-2018',105),	653		,96			,749				,24740	,	3171	,		27911		,	37.89	,	33.03		,	37.26	,	66.8	 )
,('Product_A'	,201842	,CONVERT( DATE ,'12-02-2018',105),	491		,64			,555				,18591	,	2112	,		20703		,	37.86	,	33.00		,	37.30	,	65.7	 )
,('Product_A'	,201843	,CONVERT( DATE ,'19-02-2018',105),	471		,91			,562				,17865	,	2970	,		20835		,	37.93	,	32.64		,	37.07	,	100 	 )
,('Product_A'	,201844	,CONVERT( DATE ,'26-02-2018',105),	1438	,218		,1656				,54430	,	7155	,		61585		,	37.85	,	32.82		,	37.19	,	98.9	 )
,('Product_B'	,201746	,CONVERT( DATE ,'06-03-2017',105),	6875	,35			,6910				,22731	,	114		,		22845		,	3.31	,	3.24		,	3.31	,	99.0	 )
,('Product_B'	,201747	,CONVERT( DATE ,'13-03-2017',105),	7161	,85			,7246				,23921	,	268		,		24189		,	3.34	,	3.15		,	3.34	,	97.8	 )
,('Product_B'	,201748	,CONVERT( DATE ,'20-03-2017',105),	9230	,23			,9253				,31064	,	79		,		31143		,	3.37	,	3.42		,	3.37	,	99.7	 )
,('Product_B'	,201749	,CONVERT( DATE ,'27-03-2017',105),	7385	,8			,7393				,24724	,	29		,		24753		,	3.35	,	3.65		,	3.35	,	98.2	 )
,('Product_B'	,201750	,CONVERT( DATE ,'03-04-2017',105),	2390	,18			,2408				, 7835	,	60		,		 7895		,	3.28	,	3.33		,	3.28	,	99.7	 )
,('Product_B'	,201751	,CONVERT( DATE ,'10-04-2017',105),	4092	,19			,4111				,13552	,	66		,		13617		,	3.31	,	3.45		,	3.31	,	99.0	 )
,('Product_B'	,201752	,CONVERT( DATE ,'17-04-2017',105),	3048	,16			,3064				,10000	,	58		,		10058		,	3.28	,	3.60		,	3.28	,	99.3	 )
,('Product_B'	,201753	,CONVERT( DATE ,'24-04-2017',105),	6317	,18			,6335				,20894	,	58		,		20952		,	3.31	,	3.24		,	3.31	,	99.1	 )
,('Product_B'	,201801	,CONVERT( DATE ,'01-05-2017',105),	4216	,15			,4231				,14027	,	51		,		14078		,	3.33	,	3.42		,	3.33	,	99.8	 )
,('Product_B'	,201802	,CONVERT( DATE ,'08-05-2017',105),	5766	,15			,5781				,19277	,	54		,		19331		,	3.34	,	3.60		,	3.34	,	98.7	 )
,('Product_B'	,201803	,CONVERT( DATE ,'15-05-2017',105),	27223	,35			,27258				,91660	,	123		,		91783		,	3.37	,	3.51		,	3.37	,	96.0	 )
,('Product_B'	,201804	,CONVERT( DATE ,'22-05-2017',105),	7010	,10			,7020				,23179	,	36		,		23215		,	3.31	,	3.60		,	3.31	,	98.3	 )
,('Product_B'	,201805	,CONVERT( DATE ,'29-05-2017',105),	13080	,11			,13091				,43593	,	40		,		43633		,	3.33	,	3.64		,	3.33	,	97.2	 )
,('Product_B'	,201806	,CONVERT( DATE ,'05-06-2017',105),	31003	,32			,31035				,103161,	110		,		103271		,	3.33	,	3.44		,	3.33	,	94.9	 )
,('Product_B'	,201807	,CONVERT( DATE ,'12-06-2017',105),	5439	,33			,5472				,17803	,	110		,		17914		,	3.27	,	3.35		,	3.27	,	98.8	 )
,('Product_B'	,201808	,CONVERT( DATE ,'19-06-2017',105),	6823	,12			,6835				,22510	,	42		,		22552		,	3.30	,	3.50		,	3.30	,	100		 )
,('Product_B'	,201809	,CONVERT( DATE ,'26-06-2017',105),	20599	,32			,20631				,68515	,	110		,		68625		,	3.33	,	3.44		,	3.33	,	100		 )
,('Product_B'	,201810	,CONVERT( DATE ,'03-07-2017',105),	7519	,27			,7546				,24771	,	94		,		24865		,	3.29	,	3.48		,	3.30	,	100		 )
,('Product_B'	,201811	,CONVERT( DATE ,'10-07-2017',105),	17792	,9			,17801				,59174	,	32		,		59206		,	3.33	,	3.56		,	3.33	,	100		 )
,('Product_B'	,201812	,CONVERT( DATE ,'17-07-2017',105),	28816	,33			,28849				,95102	,	117		,		95219		,	3.30	,	3.53		,	3.30	,	100		 )
,('Product_B'	,201813	,CONVERT( DATE ,'24-07-2017',105),	35126	,51			,35177				,115679,	169		,		115.848		,	3.29	,	3.30		,	3.29	,	100		 )
,('Product_B'	,201814	,CONVERT( DATE ,'31-07-2017',105),	30288	,32			,30320				,99864	,	110		,		99975		,	3.30	,	3.45		,	3.30	,	100		 )
,('Product_B'	,201815	,CONVERT( DATE ,'07-08-2017',105),	27824	,36			,27860				,91795	,	124		,		91919		,	3.30	,	3.43		,	3.30	,	100		 )
,('Product_B'	,201816	,CONVERT( DATE ,'14-08-2017',105),	17144	,22			,17166				,56243	,	78		,		56322		,	3.28	,	3.55		,	3.28	,	100		 )
,('Product_B'	,201817	,CONVERT( DATE ,'21-08-2017',105),	10044	,139		,10183				,32782	,	437		,		33219		,	3.26	,	3.14		,	3.26	,	100		 )
,('Product_B'	,201818	,CONVERT( DATE ,'28-08-2017',105),	16178	,90			,16268				,53271	,	285		,		53556		,	3.29	,	3.16		,	3.29	,	100		 )
,('Product_B'	,201819	,CONVERT( DATE ,'04-09-2017',105),	38514	,134		,38648				,126166,	454		,		126620		,	3.28	,	3.39		,	3.28	,	100		 )
,('Product_B'	,201820	,CONVERT( DATE ,'11-09-2017',105),	31591	,84			,31675				,103194,	275		,		103469		,	3.27	,	3.27		,	3.27	,	100		 )
,('Product_B'	,201821	,CONVERT( DATE ,'18-09-2017',105),	18187	,72			,18259				,59543	,	233		,		59775		,	3.27	,	3.23		,	3.27	,	100		 )
,('Product_B'	,201822	,CONVERT( DATE ,'25-09-2017',105),	24357	,68			,24425				,79801	,	213		,		80014		,	3.28	,	3.13		,	3.28	,	100		 )
,('Product_B'	,201823	,CONVERT( DATE ,'02-10-2017',105),	13506	,32			,13538				,44242	,	104		,		44346		,	3.28	,	3.24		,	3.28	,	100		 )
,('Product_B'	,201824	,CONVERT( DATE ,'09-10-2017',105),	9752	,40			,9792				,32051	,	139		,		32190		,	3.29	,	3.47		,	3.29	,	100		 )
,('Product_B'	,201825	,CONVERT( DATE ,'16-10-2017',105),	17722	,35			,17757				,58675	,	116		,		58791		,	3.31	,	3.31		,	3.31	,	100		 )
,('Product_B'	,201826	,CONVERT( DATE ,'23-10-2017',105),	9356	,31			,9387				,30630	,	103		,		30732		,	3.27	,	3.32		,	3.27	,	100		 )
,('Product_B'	,201827	,CONVERT( DATE ,'30-10-2017',105),	8864	,49			,8913				,28928	,	154		,		29081		,	3.26	,	3.13		,	3.26	,	100		 )
,('Product_B'	,201828	,CONVERT( DATE ,'06-11-2017',105),	10243	,57			,10300				,33688	,	189		,		33877		,	3.29	,	3.32		,	3.29	,	96.8	 )
,('Product_B'	,201829	,CONVERT( DATE ,'13-11-2017',105),	7472	,70			,7542				,24663	,	226		,		24889		,	3.30	,	3.24		,	3.30	,	100		 )
,('Product_B'	,201830	,CONVERT( DATE ,'20-11-2017',105),	10773	,46			,10819				,35822	,	150		,		35972		,	3.33	,	3.26		,	3.32	,	100		 )
,('Product_B'	,201831	,CONVERT( DATE ,'27-11-2017',105),	6945	,38			,6983				,22933	,	139		,		23071		,	3.30	,	3.65		,	3.30	,	100		 )
,('Product_B'	,201832	,CONVERT( DATE ,'04-12-2017',105),	6877	,34			,6911				,22809	,	121		,		22930		,	3.32	,	3.56		,	3.32	,	100		 )
,('Product_B'	,201833	,CONVERT( DATE ,'11-12-2017',105),	15529	,48			,15577				,52024	,	159		,		52184		,	3.35	,	3.32		,	3.35	,	100		 )
,('Product_B'	,201834	,CONVERT( DATE ,'18-12-2017',105),	6270	,14			,6284				,20687	,	51		,		20738		,	3.30	,	3.67		,	3.30	,	100		 )
,('Product_B'	,201835	,CONVERT( DATE ,'25-12-2017',105),	11896	,12			,11908				,39238	,	44		,		39282		,	3.30	,	3.67		,	3.30	,	100		 )
,('Product_B'	,201836	,CONVERT( DATE ,'01-01-2018',105),	13195	,36			,13231				,43461	,	137		,		43597		,	3.29	,	3.80		,	3.30	,	100		 )
,('Product_B'	,201837	,CONVERT( DATE ,'08-01-2018',105),	4693	,15			,4708				,15313	,	57		,		15370		,	3.26	,	3.79		,	3.26	,	100		 )
,('Product_B'	,201838	,CONVERT( DATE ,'15-01-2018',105),	15953	,8			,15961				,52955	,	30		,		52985		,	3.32	,	3.75		,	3.32	,	100		 )
,('Product_B'	,201839	,CONVERT( DATE ,'22-01-2018',105),	14114	,45			,14159				,46692	,	146		,		46838		,	3.31	,	3.24		,	3.31	,	100		 )
,('Product_B'	,201840	,CONVERT( DATE ,'29-01-2018',105),	10212	,12			,10224				,33774	,	46		,		33820		,	3.31	,	3.83		,	3.31	,	100		 )
,('Product_B'	,201841	,CONVERT( DATE ,'05-02-2018',105),	8387	,28			,8415				,27816	,	90		,		27906		,	3.32	,	3.21		,	3.32	,	100		 )
,('Product_B'	,201842	,CONVERT( DATE ,'12-02-2018',105),	7967	,70			,8037				,26521	,	228		,		26749		,	3.33	,	3.25		,	3.33	,	100		 )
,('Product_B'	,201843	,CONVERT( DATE ,'19-02-2018',105),	3982	,11			,3993				,12957	,	41		,		12997		,	3.25	,	3.71		,	3.26	,	100		 )
,('Product_B'	,201844	,CONVERT( DATE ,'26-02-2018',105),	3673	,41			,3714				,12132	,	150		,		12282		,	3.30	,	3.66		,	3.31	,	100		 )
,('Product_C'	,201746	,CONVERT( DATE ,'06-03-2017',105),	1903	,100		,2003				,13295	,	700		,		13995		,	6.99	,	7.00		,	6.99	,	95.4	 )
,('Product_C'	,201747	,CONVERT( DATE ,'13-03-2017',105),	1705	,66			,1771				,11902	,	457		,		12359		,	6.98	,	6.93		,	6.98	,	94.4	 )
,('Product_C'	,201748	,CONVERT( DATE ,'20-03-2017',105),	1913	,67			,1980				,13364	,	469		,		13833		,	6.99	,	7.00		,	6.99	,	93.6	 )
,('Product_C'	,201749	,CONVERT( DATE ,'27-03-2017',105),	1319	,70			,1389				,9218	,	489		,		 9707		,	6.99	,	6.99		,	6.99	,	95.5	 )
,('Product_C'	,201750	,CONVERT( DATE ,'03-04-2017',105),	957		,53			,1010				,6682	,	372		,		 7055		,	6.98	,	7.03		,	6.98	,	97.8	 )
,('Product_C'	,201751	,CONVERT( DATE ,'10-04-2017',105),	1168	,29			,1197				,8160	,	208		,		 8368		,	6.99	,	7.17		,	6.99	,	89.6	 )
,('Product_C'	,201752	,CONVERT( DATE ,'17-04-2017',105),	1087	,48			,1135				,7596	,	336		,		 7932		,	6.99	,	7.00		,	6.99	,	95.6	 )
,('Product_C'	,201753	,CONVERT( DATE ,'24-04-2017',105),	1743	,50			,1793				,12180	,	336		,		12516		,	6.99	,	6.72		,	6.98	,	90.2	 )
,('Product_C'	,201801	,CONVERT( DATE ,'01-05-2017',105),	1019	,55			,1074				,7119	,	386		,		 7504		,	6.99	,	7.01		,	6.99	,	93.5	 )
,('Product_C'	,201802	,CONVERT( DATE ,'08-05-2017',105),	781		,51			,832				,5454	,	358		,		 5812		,	6.98	,	7.02		,	6.99	,	94.2	 )
,('Product_C'	,201803	,CONVERT( DATE ,'15-05-2017',105),	730		,45			,775				,5101	,	318		,		 5418		,	6.99	,	7.06		,	6.99	,	95.3	 )
,('Product_C'	,201804	,CONVERT( DATE ,'22-05-2017',105),	352		,42			,394				,2459	,	296		,		 2755		,	6.99	,	7.04		,	6.99	,	95.0	 )
,('Product_C'	,201805	,CONVERT( DATE ,'29-05-2017',105),	491		,11			,502				,3432	,	77		,		 3509		,	6.99	,	6.99		,	6.99	,	94.4	 )
,('Product_C'	,201806	,CONVERT( DATE ,'05-06-2017',105),	657		,31			,688				,4592	,	217		,		 4809		,	6.99	,	6.99		,	6.99	,	92.5	 )
,('Product_C'	,201807	,CONVERT( DATE ,'12-06-2017',105),	265		,19			,284				,1843	,	134		,		 1976		,	6.95	,	7.03		,	6.96	,	94.1	 )
,('Product_C'	,201808	,CONVERT( DATE ,'19-06-2017',105),	290		,22			,312				,2027	,	154		,		 2182		,	6.99	,	7.02		,	6.99	,	100		 )
,('Product_C'	,201809	,CONVERT( DATE ,'26-06-2017',105),	472		,38			,510				,3299	,	264		,		 3563		,	6.99	,	6.93		,	6.99	,	100		 )
,('Product_C'	,201810	,CONVERT( DATE ,'03-07-2017',105),	326		,21			,347				,2274	,	148		,		 2422		,	6.97	,	7.07		,	6.98	,	100		 )
,('Product_C'	,201811	,CONVERT( DATE ,'10-07-2017',105),	353		,35			,388				,2467	,	247		,		 2713		,	6.99	,	7.04		,	6.99	,	100		 )
,('Product_C'	,201812	,CONVERT( DATE ,'17-07-2017',105),	359		,36			,395				,2507	,	253		,		 2760		,	6.98	,	7.03		,	6.99	,	100		 )
,('Product_C'	,201813	,CONVERT( DATE ,'24-07-2017',105),	430		,37			,467				,3003	,	261		,		 3264		,	6.98	,	7.05		,	6.99	,	100		 )
,('Product_C'	,201814	,CONVERT( DATE ,'31-07-2017',105),	408		,32			,440				,2849	,	224		,		 3073		,	6.98	,	7.00		,	6.98	,	100		 )
,('Product_C'	,201815	,CONVERT( DATE ,'07-08-2017',105),	487		,48			,535				,3400	,	337		,		 3737		,	6.98	,	7.02		,	6.98	,	100		 )
,('Product_C'	,201816	,CONVERT( DATE ,'14-08-2017',105),	465		,36			,501				,3250	,	253		,		 3502		,	6.99	,	7.02		,	6.99	,	100		 )
,('Product_C'	,201817	,CONVERT( DATE ,'21-08-2017',105),	413		,41			,454				,2885	,	287		,		 3172		,	6.98	,	7.00		,	6.99	,	100		 )
,('Product_C'	,201818	,CONVERT( DATE ,'28-08-2017',105),	614		,53			,667				,4284	,	369		,		 4653		,	6.98	,	6.97		,	6.98	,	100		 )
,('Product_C'	,201819	,CONVERT( DATE ,'04-09-2017',105),	801		,68			,869				,5595	,	475		,		 6070		,	6.99	,	6.99		,	6.99	,	100		 )
,('Product_C'	,201820	,CONVERT( DATE ,'11-09-2017',105),	1162	,97			,1259				,8111	,	674		,		 8785		,	6.98	,	6.94		,	6.98	,	100		 )
,('Product_C'	,201821	,CONVERT( DATE ,'18-09-2017',105),	1061	,137		,1198				,7414	,	957		,		 8371		,	6.99	,	6.98		,	6.99	,	100		 )
,('Product_C'	,201822	,CONVERT( DATE ,'25-09-2017',105),	960		,124		,1084				,6706	,	861		,		 7568		,	6.99	,	6.95		,	6.98	,	100		 )
,('Product_C'	,201823	,CONVERT( DATE ,'02-10-2017',105),	1361	,230		,1591				,9506	,	1597	,		11103		,	6.98	,	6.94		,	6.98	,	100		 )
,('Product_C'	,201824	,CONVERT( DATE ,'09-10-2017',105),	954		,214		,1168				,6662	,	1496	,		 8158		,	6.98	,	6.99		,	6.98	,	100		 )
,('Product_C'	,201825	,CONVERT( DATE ,'16-10-2017',105),	1322	,169		,1491				,9230	,	1171	,		10401		,	6.98	,	6.93		,	6.98	,	100		 )
,('Product_C'	,201826	,CONVERT( DATE ,'23-10-2017',105),	1586	,215		,1801				,11078	,	1494	,		12572		,	6.98	,	6.95		,	6.98	,	100		 )
,('Product_C'	,201827	,CONVERT( DATE ,'30-10-2017',105),	2711	,355		,3066				,18926	,	2480	,		21406		,	6.98	,	6.99		,	6.98	,	100		 )
,('Product_C'	,201828	,CONVERT( DATE ,'06-11-2017',105),	4373	,521		,4894				,30519	,	3626	,		34145		,	6.98	,	6.96		,	6.98	,	57.8	 )
,('Product_C'	,201829	,CONVERT( DATE ,'13-11-2017',105),	5244	,714		,5958				,36593	,	4950	,		41544		,	6.98	,	6.93		,	6.97	,	100		 )
,('Product_C'	,201830	,CONVERT( DATE ,'20-11-2017',105),	5960	,606		,6566				,41587	,	4234	,		45821		,	6.98	,	6.99		,	6.98	,	100		 )
,('Product_C'	,201831	,CONVERT( DATE ,'27-11-2017',105),	10675	,1206		,11881				,74466	,	8412	,		82878		,	6.98	,	6.98		,	6.98	,	100		 )
,('Product_C'	,201832	,CONVERT( DATE ,'04-12-2017',105),	11238	,1016		,12254				,78422	,	7075	,		85497		,	6.98	,	6.96		,	6.98	,	100		 )
,('Product_C'	,201833	,CONVERT( DATE ,'11-12-2017',105),	14169	,1108		,15277				,98838	,	7718	,		106556		,	6.98	,	6.97		,	6.97	,	100		 )
,('Product_C'	,201834	,CONVERT( DATE ,'18-12-2017',105),	9931	,583		,10514				,69325	,	4022	,		73347		,	6.98	,	6.90		,	6.98	,	75.8	 )
,('Product_C'	,201835	,CONVERT( DATE ,'25-12-2017',105),	8197	,368		,8565				,57195	,	2573	,		59768		,	6.98	,	6.99		,	6.98	,	100		 )
,('Product_C'	,201836	,CONVERT( DATE ,'01-01-2018',105),	6265	,519		,6784				,43746	,	3569	,		47315		,	6.98	,	6.88		,	6.97	,	78.9	 )
,('Product_C'	,201837	,CONVERT( DATE ,'08-01-2018',105),	6208	,489		,6697				,43340	,	3395	,		46735		,	6.98	,	6.94		,	6.98	,	100		 )
,('Product_C'	,201838	,CONVERT( DATE ,'15-01-2018',105),	7376	,450		,7826				,51494	,	3111	,		54605		,	6.98	,	6.91		,	6.98	,	100		 )
,('Product_C'	,201839	,CONVERT( DATE ,'22-01-2018',105),	4274	,325		,4599				,29852	,	2251	,		32103		,	6.98	,	6.93		,	6.98	,	90.7	 )
,('Product_C'	,201840	,CONVERT( DATE ,'29-01-2018',105),	5388	,295		,5683				,37619	,	2052	,		39671		,	6.98	,	6.96		,	6.98	,	81.2	 )
,('Product_C'	,201841	,CONVERT( DATE ,'05-02-2018',105),	8385	,317		,8702				,58539	,	2220	,		60760		,	6.98	,	7.00		,	6.98	,	86.6	 )
,('Product_C'	,201842	,CONVERT( DATE ,'12-02-2018',105),	6458	,226		,6684				,45089	,	1565	,		46654		,	6.98	,	6.93		,	6.98	,	66.7	 )
,('Product_C'	,201843	,CONVERT( DATE ,'19-02-2018',105),	6416	,214		,6630				,44815	,	1513	,		46328		,	6.98	,	7.07		,	6.99	,	78.6	 )
,('Product_C'	,201844	,CONVERT( DATE ,'26-02-2018',105),	2606	,129		,2735				,18170	,	904		,		19074		,	6.97	,	7.01		,	6.97	,	19.4	 )
,('Product_D'	,201733	,CONVERT( DATE ,'05-12-2016',105),	119		,41			,160				,11780	,	4100	,		15880		,	98.99	,	100.00		,	99.25	,	100		 )
,('Product_D'	,201734	,CONVERT( DATE ,'12-12-2016',105),	282		,22			,304				,24642	,	2040	,		26682		,	87.38	,	92.73		,	87.77	,	100		 )
,('Product_D'	,201735	,CONVERT( DATE ,'19-12-2016',105),	243		,103		,346				,19072	,	8200	,		27272		,	78.49	,	79.61		,	78.82	,	100		 )
,('Product_D'	,201736	,CONVERT( DATE ,'26-12-2016',105),	103		,57			,160				,8056	,	4460	,		12516		,	78.21	,	78.25		,	78.23	,	100		 )
,('Product_D'	,201737	,CONVERT( DATE ,'02-01-2017',105),	74		,32			,106				,5860	,	2540	,		8400		,	79.19	,	79.38		,	79.25	,	100		 )
,('Product_D'	,201738	,CONVERT( DATE ,'09-01-2017',105),	59		,18			,77					,4720	,	1360	,		6080		,	80.00	,	75.56		,	78.96	,	100		 )
,('Product_D'	,201739	,CONVERT( DATE ,'16-01-2017',105),	79		,19			,98					,6296	,	1520	,		7816		,	79.70	,	80.00		,	79.76	,	100		 )
,('Product_D'	,201740	,CONVERT( DATE ,'23-01-2017',105),	69		,35			,104				,5504	,	2800	,		8304		,	79.77	,	80.00		,	79.85	,	100		 )
,('Product_D'	,201741	,CONVERT( DATE ,'30-01-2017',105),	36		,8			,44					,3470	,	800		,		4270		,	96.39	,	100.00		,	97.05	,	100		 )
,('Product_D'	,201742	,CONVERT( DATE ,'06-02-2017',105),	36		,6			,42					,3600	,	600		,		4200		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201743	,CONVERT( DATE ,'13-02-2017',105),	38		,6			,44					,3780	,	620		,		4400		,	99.47	,	103.33		,	100.00	,	100		 )
,('Product_D'	,201744	,CONVERT( DATE ,'20-02-2017',105),	32		,9			,41					,2940	,	800		,		3740		,	91.88	,	88.89		,	91.22	,	100		 )
,('Product_D'	,201745	,CONVERT( DATE ,'27-02-2017',105),	30		,19			,49					,2960	,	1780	,		4740		,	98.67	,	93.68		,	96.73	,	100		 )
,('Product_D'	,201746	,CONVERT( DATE ,'06-03-2017',105),	39		,4			,43					,3870	,	420		,		4290		,	99.23	,	105.00		,	99.77	,	100		 )
,('Product_D'	,201747	,CONVERT( DATE ,'13-03-2017',105),	26		,7			,33					,2580	,	700		,		3280		,	99.23	,	100.00		,	99.39	,	100		 )
,('Product_D'	,201748	,CONVERT( DATE ,'20-03-2017',105),	39		,7			,46					,3900	,	700		,		4600		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201749	,CONVERT( DATE ,'27-03-2017',105),	49		,5			,54					,4780	,	490		,		5270		,	97.55	,	98.00		,	97.59	,	100		 )
,('Product_D'	,201750	,CONVERT( DATE ,'03-04-2017',105),	42		,8			,50					,4180	,	800		,		4980		,	99.52	,	100.00		,	99.60	,	100		 )
,('Product_D'	,201751	,CONVERT( DATE ,'10-04-2017',105),	25		,9			,34					,2480	,	900		,		3380		,	99.20	,	100.00		,	99.41	,	100		 )
,('Product_D'	,201752	,CONVERT( DATE ,'17-04-2017',105),	57		,9			,66					,5660	,	900		,		6560		,	99.30	,	100.00		,	99.39	,	100		 )
,('Product_D'	,201753	,CONVERT( DATE ,'24-04-2017',105),	47		,10			,57					,4660	,	1000	,		5660		,	99.15	,	100.00		,	99.30	,	100		 )
,('Product_D'	,201801	,CONVERT( DATE ,'01-05-2017',105),	37		,8			,45					,3700	,	800		,		4500		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201802	,CONVERT( DATE ,'08-05-2017',105),	24		,7			,31					,2400	,	700		,		3100		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201803	,CONVERT( DATE ,'15-05-2017',105),	28		,10			,38					,2800	,	1000	,		3800		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201804	,CONVERT( DATE ,'22-05-2017',105),	52		,3			,55					,5160	,	300		,		5460		,	99.23	,	100.00		,	99.27	,	100		 )
,('Product_D'	,201805	,CONVERT( DATE ,'29-05-2017',105),	35		,4			,39					,3450	,	400		,		3850		,	98.57	,	100.00		,	98.72	,	100		 )
,('Product_D'	,201806	,CONVERT( DATE ,'05-06-2017',105),	35		,6			,41					,3536	,	600		,		4136		,	101.03	,	100.00		,	100.88	,	100		 )
,('Product_D'	,201807	,CONVERT( DATE ,'12-06-2017',105),	34		,2			,36					,3400	,	200		,		3600		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201808	,CONVERT( DATE ,'19-06-2017',105),	42		,10			,52					,3610	,	920		,		4530		,	85.95	,	92.00		,	87.12	,	100		 )
,('Product_D'	,201809	,CONVERT( DATE ,'26-06-2017',105),	46		,26			,72					,3632	,	2060	,		5692		,	78.96	,	79.23		,	79.06	,	100		 )
,('Product_D'	,201810	,CONVERT( DATE ,'03-07-2017',105),	62		,16			,78					,4940	,	1280	,		6220		,	79.68	,	80.00		,	79.74	,	100		 )
,('Product_D'	,201811	,CONVERT( DATE ,'10-07-2017',105),	62		,13			,75					,4940	,	1040	,		5980		,	79.68	,	80.00		,	79.73	,	100		 )
,('Product_D'	,201812	,CONVERT( DATE ,'17-07-2017',105),	78		,35			,113				,6204	,	2800	,		9004		,	79.54	,	80.00		,	79.68	,	100		 )
,('Product_D'	,201813	,CONVERT( DATE ,'24-07-2017',105),	100		,36			,136				,8000	,	2940	,		10940		,	80.00	,	81.67		,	80.44	,	100		 )
,('Product_D'	,201814	,CONVERT( DATE ,'31-07-2017',105),	105		,38			,143				,8400	,	3040	,		11440		,	80.00	,	80.00		,	80.00	,	100		 )
,('Product_D'	,201815	,CONVERT( DATE ,'07-08-2017',105),	116		,67			,183				,9272	,	5424	,		14696		,	79.93	,	80.96		,	80.31	,	100		 )
,('Product_D'	,201816	,CONVERT( DATE ,'14-08-2017',105),	152		,67			,219				,12144	,	5360	,		17504		,	79.89	,	80.00		,	79.93	,	100		 )
,('Product_D'	,201817	,CONVERT( DATE ,'21-08-2017',105),	268		,130		,398				,21440	,	10448	,		31888		,	80.00	,	80.37		,	80.12	,	100		 )
,('Product_D'	,201818	,CONVERT( DATE ,'28-08-2017',105),	185		,40			,225				,14784	,	3200	,		17984		,	79.91	,	80.00		,	79.93	,	100		 )
,('Product_D'	,201819	,CONVERT( DATE ,'04-09-2017',105),	39		,2			,41					,3790	,	280		,		4070		,	97.18	,	140.00		,	99.27	,	100		 )
,('Product_D'	,201820	,CONVERT( DATE ,'11-09-2017',105),	20		,-3			,17					,2030	,	-220	,		1810		,	101.50	,	73.33		,	106.47	,	100		 )
,('Product_D'	,201821	,CONVERT( DATE ,'18-09-2017',105),	27		,9			,36					,2740	,	920		,		3660		,	101.48	,	102.22		,	101.67	,	100		 )
,('Product_D'	,201822	,CONVERT( DATE ,'25-09-2017',105),	24		,8			,32					,2310	,	800		,		3110		,	96.25	,	100.00		,	97.19	,	100		 )
,('Product_D'	,201823	,CONVERT( DATE ,'02-10-2017',105),	37		,4			,41					,3680	,	420		,		4100		,	99.46	,	105.00		,	100.00	,	100		 )
,('Product_D'	,201824	,CONVERT( DATE ,'09-10-2017',105),	24		,6			,30					,2380	,	600		,		2980		,	99.17	,	100.00		,	99.33	,	100		 )
,('Product_D'	,201825	,CONVERT( DATE ,'16-10-2017',105),	30		,8			,38					,2982	,	790		,		3772		,	99.40	,	98.75		,	99.26	,	100		 )
,('Product_D'	,201826	,CONVERT( DATE ,'23-10-2017',105),	34		,7			,41					,3400	,	700		,		4100		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201827	,CONVERT( DATE ,'30-10-2017',105),	38		,6			,44					,3800	,	600		,		4400		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201828	,CONVERT( DATE ,'06-11-2017',105),	39		,5			,44					,3900	,	500		,		4400		,	100.00	,	100.00		,	100.00	,	100		 )
,('Product_D'	,201829	,CONVERT( DATE ,'13-11-2017',105),	49		,16			,65					,4850	,	1600	,		6450		,	98.98	,	100.00		,	99.23	,	100		 )
,('Product_D'	,201830	,CONVERT( DATE ,'20-11-2017',105),	65		,11			,76					,6450	,	1100	,		7550		,	99.23	,	100.00		,	99.34	,	100		 )
,('Product_D'	,201831	,CONVERT( DATE ,'27-11-2017',105),	87		,34			,121				,8640	,	3400	,		12040		,	99.31	,	100.00		,	99.50	,	100	     )




IF OBJECT_ID('RAW_Weather_Data') IS NOT NULL DROP TABLE RAW_Weather_Data 
create table  RAW_Weather_Data  (
Yr			int ,
Mth			nvarchar(15) ,
temp		float		,
rain		float
)
insert into  RAW_Weather_Data  values 
 (2015,	'March'			,5.5		,95.6	)
,(2015,	'April'			,7.9		,46.3	)
,(2015,	'May'			,9.6		,109.6	)
,(2015,	'June'			,12.6		,55.1	)
,(2015,	'July'			,14.4		,109.5	)
,(2015,	'August'		,14.7		,107.4	)
,(2015,	'September'		,11.9		,54		)
,(2015,	'October'		,10			,72.2	)
,(2015,	'November'		,8.2		,176	)
,(2015,	'December'		,7.9		,230	)
,(2016,	'January'		,4.5		,185.1	)
,(2016,	'February'		,3.9		,114.2	)
,(2016,	'March'			,5.3		,86.8	)
,(2016,	'April'			,6.5		,81.6	)
,(2016,	'May'			,11.3		,64.4	)
,(2016,	'June'			,13.9		,101.8	)
,(2016,	'July'			,15.3		,81.2	)
,(2016,	'August'		,15.5		,88.4	)
,(2016,	'September'		,14.6		,98.9	)
,(2016,	'October'		,9.8		,48.9	)
,(2016,	'November'		,4.9		,107.9	)
,(2016,	'December'		,5.9		,82.4	)
,(2017,	'January'		,3.9		,75.5	)
,(2017,	'February'		,5.3		,93.9	)
,(2017,	'March'			,7.3		,99.1	)
,(2017,	'April'			,8			,34.7	)
,(2017,	'May'			,12.1		,58		)
,(2017,	'June'			,14.5		,113.7	)
,(2017,	'July'			,15.1		,106.9	)
,(2017,	'August'		,14.5		,104.4	)
,(2017,	'September'		,16.1		,119.1	)
,(2017,	'October'		,14.3		,100.3	)
,(2017,	'November'		,5.8		,107.9	)
,(2017,	'December'		,4.1		,118.9	)
,(2018,	'January'		,4.1		,133.5	)
,(2018,	'February'		,2.4		,64.3   )




IF OBJECT_ID('RAW_RT30years') IS NOT NULL DROP TABLE RAW_RT30years
create table RAW_RT30years (
Mth			   nvarchar (15) ,
Tmp1981_2010   float ,
Rain1981_2010   float
)
insert into RAW_RT30years
values 
 ('May'			,	10.3,	69.8   )
,('June'		,	13.0,	73.5   )
,('July'		,	15.1,	78.2   )
,('August'		,	14.9,	89.5   )
,('September'	,	12.6,	96.4   )
,('October'		,	9.5 ,	126.7  )
,('November'	,	6.2 ,	121.4  )
,('December'	,	3.9 ,	120.4  )
,('January'		,	3.7 ,	121.7  )
,('February'	,	3.7 ,	89.0   )
,('March'		,	5.5 ,	95.6   )
,('April'		,	7.4 ,	72.3   ) ;





IF OBJECT_ID('Tableau_FG_ready') IS NOT NULL DROP TABLE Tableau_FG_ready;

WITH CTE_FG AS (
select *,
YEAR(Week_Commencing) as [Year] ,
case when MONTH(Week_Commencing) = 1  THEN 'January'
	 when MONTH(Week_Commencing) = 2  THEN 'February'
	 when MONTH(Week_Commencing) = 3  THEN 'March'
	 when MONTH(Week_Commencing) = 4  THEN 'April'
	 when MONTH(Week_Commencing) = 5  THEN 'May'
	 when MONTH(Week_Commencing) = 6  THEN 'June'
	 when MONTH(Week_Commencing) = 7  THEN 'July'
	 when MONTH(Week_Commencing) = 8  THEN 'August'
	 when MONTH(Week_Commencing) = 9  THEN 'September'
	 when MONTH(Week_Commencing) = 10 THEN 'October'
	 when MONTH(Week_Commencing) = 11 THEN 'November'
	 when MONTH(Week_Commencing) = 12 THEN 'December'
end as [Month]
,
case when MONTH(Week_Commencing) IN (12,1,2)   THEN 'Winter'
	 when MONTH(Week_Commencing) IN ( 3,4,5)   THEN 'Spring'
	 when MONTH(Week_Commencing) IN ( 6,7,8)   THEN 'Summer'
	 when MONTH(Week_Commencing) IN ( 9,10,11) THEN 'Autumn '
	 end as [Seasons ]
from RAW_Table_ProductsFG as TP
where 1=1
)
	SELECT 
	FG.Product, FG.Financial_week, FG.Week_Commencing,
	ROW_NUMBER() over (partition by FG.Product order by FG.Week_Commencing ) as [WeekNum],
	FG.Store_sales_units, FG.Web_sale_Units,FG.Total_sales_units ,FG.Store_Turnover , FG.Web_Turnover
	,FG.Total_turnover,FG.Store_Average_SellPrice ,FG.Web_average_sellPrice,FG.Average_sell_price 
	,FG.Stock_availability ,[Year] ,[Month],Seasons 
	,WD.temp ,WD.rain
	INTO Tableau_FG_ready
	FROM CTE_FG AS FG
	INNER JOIN RAW_Weather_Data AS WD
	ON FG.Year = WD.Yr
	AND FG.Month = WD.Mth



IF OBJECT_ID('Weather_Comparison') IS NOT NULL DROP TABLE Weather_Comparison;
SELECT
     CAST(AVG(WD.rain) as decimal(5,2)) AS average_rainfall_2015_18_mm
	,CAST(AVG(WD.temp) as decimal(5,2))AS average_temperature_2015_18_C
	,WD.Mth
	,RT.Rain1981_2010
	,RT.Tmp1981_2010
	INTO Weather_Comparison
FROM
    RAW_Weather_Data as WD
INNER JOIN RAW_RT30years as RT 
ON WD.Mth = RT.Mth
GROUP BY
    WD.Mth , RT.Rain1981_2010,RT.Tmp1981_2010
ORDER BY
    CASE WD.Mth
        WHEN 'January' THEN 1
        WHEN 'February' THEN 2
        WHEN 'March' THEN 3
        WHEN 'April' THEN 4
        WHEN 'May' THEN 5
        WHEN 'June' THEN 6
        WHEN 'July' THEN 7
        WHEN 'August' THEN 8
        WHEN 'September' THEN 9
        WHEN 'October' THEN 10
        WHEN 'November' THEN 11
        WHEN 'December' THEN 12
    END;



	

-- ///////////////// creating separate tables for all products 
select Product, Financial_week, Week_Commencing,
ROW_NUMBER() over ( order by Week_Commencing ) as [WeekNum],
Store_sales_units,Web_sale_Units, Total_sales_units ,Store_Turnover , Web_Turnover
,Total_turnover, Store_Average_SellPrice ,Web_average_sellPrice,Average_sell_price 
,Stock_availability ,[Year] ,[Month],Seasons ,rain ,temp
into Product_A
from [dbo].[Tableau_FG_ready]
where Product = 'Product_A';

select Product, Financial_week, Week_Commencing,
ROW_NUMBER() over ( order by Week_Commencing ) as [WeekNum],
Store_sales_units,Web_sale_Units, Total_sales_units ,Store_Turnover , Web_Turnover
,Total_turnover, Store_Average_SellPrice ,Web_average_sellPrice,Average_sell_price 
,Stock_availability ,[Year] ,[Month],Seasons ,rain ,temp
into Product_B
from [dbo].[Tableau_FG_ready]
where Product = 'Product_B';

select Product, Financial_week, Week_Commencing,
ROW_NUMBER() over ( order by Week_Commencing ) as [WeekNum],
Store_sales_units,Web_sale_Units, Total_sales_units ,Store_Turnover , Web_Turnover
,Total_turnover, Store_Average_SellPrice ,Web_average_sellPrice,Average_sell_price 
,Stock_availability ,[Year] ,[Month],Seasons ,rain ,temp
into Product_C
from [dbo].[Tableau_FG_ready]
where Product = 'Product_C';

select Product, Financial_week, Week_Commencing,
ROW_NUMBER() over ( order by Week_Commencing ) as [WeekNum],
Store_sales_units,Web_sale_Units, Total_sales_units ,Store_Turnover , Web_Turnover
,Total_turnover, Store_Average_SellPrice ,Web_average_sellPrice,Average_sell_price 
,Stock_availability ,[Year] ,[Month],Seasons ,rain ,temp
into Product_D
from [dbo].[Tableau_FG_ready]
where Product = 'Product_D';




--////////////////////////    cheking percentage difference 
WITH WeeklyAverages AS (
    SELECT 
        WeekNum,
        AVG(Average_sell_price) AS AvgPrice
    FROM [dbo].[Product_C]
    GROUP BY WeekNum
),
PriceDifferences AS (
    SELECT 
        WeekNum,
        AvgPrice,
        LAG(AvgPrice) OVER (ORDER BY WeekNum) AS PrevWeekPrice
    FROM WeeklyAverages
)
SELECT 
    WeekNum,
    AvgPrice AS CurrentWeekPrice,
    PrevWeekPrice,
    CASE 
        WHEN PrevWeekPrice IS NULL THEN 0 -- No previous week, so no percentage difference
        ELSE cast(((AvgPrice - PrevWeekPrice) / PrevWeekPrice) * 100 as decimal(6,2))
    END AS PercentageDifference
FROM PriceDifferences;


-- ////////////// Compare Store Sale VS Web Sale Percentage 
	SELECT 
	YEAR(Week_Commencing) AS [Year],
    MONTH(Week_Commencing) AS [Month],
    Store_sales_units,
    Web_sale_Units,
    CONVERT( NUMERIC (8,2) ,((Store_sales_units - Web_sale_Units) * 100.0) / Web_sale_Units )AS Percentage_Difference 
    FROM [dbo].[Product_d];
