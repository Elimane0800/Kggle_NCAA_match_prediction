
SELECT [Season]
      ,[DayNum]
      ,CONCAT (WTeamID,'_',LTeamID) as WTeamID_LTeamID
      ,[WScore] - [LScore] as DSCORE
	  ,((cast (WFGM as int)) - (cast (LFGM as int))) as DFGM
	  ,((cast (WFGA as int)) - (cast (LFGA as int))) as DFGA
	  ,((cast (WFGM3 as int)) - (cast (LFGM3 as int))) as DFGM3
	  ,((cast (WFGA3 as int)) - (cast (LFGA3 as int))) as DFGA3
	  ,((cast (WFTM as int)) - (cast (LFTM as int))) as DFTM
	  ,((cast (WFTA as int)) - (cast (LFTA as int))) as DFTA
	  ,((cast (WOR as int)) - (cast (LOR as int))) as DOR
	  ,((cast (WDR as int)) - (cast (LDR as int))) as DDR
	  ,((cast (WTO as int)) - (cast (LTO as int))) as DTO
	  ,((cast (WAst as int)) - (cast (LAst as int))) as DAst
	  ,((cast (WStl as int)) - (cast (LStl as int))) as DStl
	  ,((cast (WBlk as int)) - (cast (LBlk as int))) as DBlk
	  ,((cast (WPF as int)) - (cast (LPF as int))) as DPF
      ,[WLoc]
      ,[NumOT] 
  FROM [TestSql].[dbo].[MNCAATourneyDetailedResults]

  SELECT [Season]
      ,[DayNum]
	  ,CONCAT (WTeamID,'_',LTeamID) as WTeamID_LTeamID_RS
      ,[WScore] - [LScore] as DSCORE_RS
	  ,((cast (WFGM as int)) - (cast (LFGM as int))) as DFGM_RS
	  ,((cast (WFGA as int)) - (cast (LFGA as int))) as DFGA_RS
	  ,((cast (WFGM3 as int)) - (cast (LFGM3 as int))) as DFGM3_RS
	  ,((cast (WFGA3 as int)) - (cast (LFGA3 as int))) as DFGA3_RS
	  ,((cast (WFTM as int)) - (cast (LFTM as int))) as DFTM_RS
	  ,((cast (WFTA as int)) - (cast (LFTA as int))) as DFTA_RS
	  ,((cast (WOR as int)) - (cast (LOR as int))) as DOR_RS
	  ,((cast (WDR as int)) - (cast (LDR as int))) as DDR_RS
	  ,((cast (WTO as int)) - (cast (LTO as int))) as DTO_RS
	  ,((cast (WAst as int)) - (cast (LAst as int))) as DAst_RS
	  ,((cast (WStl as int)) - (cast (LStl as int))) as DStl_RS
	  ,((cast (WBlk as int)) - (cast (LBlk as int))) as DBlk_RS
	  ,((cast (WPF as int)) - (cast (LPF as int))) as DPF_RS
  FROM [TestSql].[dbo].[MRegularSeasonDetailedResults]

  SELECT [Season]
      ,[DayNum]
	  ,CONCAT (WTeamID,'_',LTeamID) as WTeamID_LTeamID_W
      ,[WScore] - [LScore] as DSCORE_W
	  ,((cast (WFGM as int)) - (cast (LFGM as int))) as DFGM_W
	  ,((cast (WFGA as int)) - (cast (LFGA as int))) as DFGA_W
	  ,((cast (WFGM3 as int)) - (cast (LFGM3 as int))) as DFGM3_W
	  ,((cast (WFGA3 as int)) - (cast (LFGA3 as int))) as DFGA3_W
	  ,((cast (WFTM as int)) - (cast (LFTM as int))) as DFTM_W
	  ,((cast (WFTA as int)) - (cast (LFTA as int))) as DFTA_W
	  ,((cast (WOR as int)) - (cast (LOR as int))) as DOR_W
	  ,((cast (WDR as int)) - (cast (LDR as int))) as DDR_W
	  ,((cast (WTO as int)) - (cast (LTO as int))) as DTO_W
	  ,((cast (WAst as int)) - (cast (LAst as int))) as DAst_W
	  ,((cast (WStl as int)) - (cast (LStl as int))) as DStl_W
	  ,((cast (WBlk as int)) - (cast (LBlk as int))) as DBlk_W
	  ,((cast (WPF as int)) - (cast (LPF as int))) as DPF_W
  FROM [TestSql].[dbo].[WNCAATourneyDetailedResults]

  SELECT [Season]
      ,[DayNum]
	  ,CONCAT (WTeamID,'_',LTeamID) as WTeamID_LTeamID_WRS
      ,[WScore] - [LScore] as DSCORE_WRS
	  ,((cast (WFGM as int)) - (cast (LFGM as int))) as DFGM_WRS
	  ,((cast (WFGA as int)) - (cast (LFGA as int))) as DFGA_WRS
	  ,((cast (WFGM3 as int)) - (cast (LFGM3 as int))) as DFGM3_WRS
	  ,((cast (WFGA3 as int)) - (cast (LFGA3 as int))) as DFGA3_WRS
	  ,((cast (WFTM as int)) - (cast (LFTM as int))) as DFTM_WRS
	  ,((cast (WFTA as int)) - (cast (LFTA as int))) as DFTA_WRS
	  ,((cast (WOR as int)) - (cast (LOR as int))) as DOR_WRS
	  ,((cast (WDR as int)) - (cast (LDR as int))) as DDR_WRS
	  ,((cast (WTO as int)) - (cast (LTO as int))) as DTO_WRS
	  ,((cast (WAst as int)) - (cast (LAst as int))) as DAst_WRS
	  ,((cast (WStl as int)) - (cast (LStl as int))) as DStl_WRS
	  ,((cast (WBlk as int)) - (cast (LBlk as int))) as DBlk_WRS
	  ,((cast (WPF as int)) - (cast (LPF as int))) as DPF_WRS
  FROM [TestSql].[dbo].[WRegularSeasonDetailedResults]
  go

  DELETE Team_Statistics
  go

  CREATE TABLE Teams_Statistics ( TeamID int,
    score int,
    Loc varchar(10),
    FGM int,
    FGA int,
    FGM3 int,
    FGA3 int,
    FTM int,
    FTA int,
    [OR] int,
    DR int,
    Ast int,
    [TO] int,
    Stl int,
    Blk int,
    PF int
);
  INSERT INTO Teams_Statistics (TeamID, score, Loc, FGM, FGA, FGM3, FGA3, FTM, FTA, [OR], DR, Ast, [TO], Stl, Blk, PF)
  SELECT WTeamID as TeamID
	, [WScore] as score
	, [WLoc] as Loc
	, [WFGM] as FGM
    ,[WFGA] as FGA
    ,[WFGM3] as FGM3
    ,[WFGA3] as FGA3
    ,[WFTM] as FTM
    ,[WFTA] as FTA
    ,[WOR] as [OR]
    ,[WDR] as DR
    ,[WAst] as Ast
    ,[WTO] as [TO]
    ,[WStl] as Stl
    ,[WBlk] as Blk
    ,[WPF] as PF
  FROM [TestSql].[dbo].[MNCAATourneyDetailedResults] 

  INSERT INTO Teams_Statistics (TeamID, score, Loc, FGM, FGA, FGM3, FGA3, FTM, FTA, [OR], DR, Ast, [TO], Stl, Blk, PF)
  SELECT LTeamID as TeamID
	, [LScore] as score
	, [WLoc] as Loc
	, [LFGM] as FGM
    ,[LFGA] as FGA
    ,[LFGM3] as FGM3
    ,[LFGA3] as FGA3
    ,[LFTM] as FTM
    ,[LFTA] as FTA
    ,[LOR] as [OR]
    ,[LDR] as DR
    ,[LAst] as Ast
    ,[LTO] as [TO]
    ,[LStl] as Stl
    ,[LBlk] as Blk
    ,[LPF] as PF
  FROM [TestSql].[dbo].[MNCAATourneyDetailedResults]

INSERT INTO Teams_Statistics (TeamID, score, Loc, FGM, FGA, FGM3, FGA3, FTM, FTA, [OR], DR, Ast, [TO], Stl, Blk, PF)
  SELECT WTeamID as TeamID
	, [WScore] as score
	, [WLoc] as Loc
	, [WFGM] as FGM
    ,[WFGA] as FGA
    ,[WFGM3] as FGM3
    ,[WFGA3] as FGA3
    ,[WFTM] as FTM
    ,[WFTA] as FTA
    ,[WOR] as [OR]
    ,[WDR] as DR
    ,[WAst] as Ast
    ,[WTO] as [TO]
    ,[WStl] as Stl
    ,[WBlk] as Blk
    ,[WPF] as PF
  FROM [TestSql].[dbo].[MRegularSeasonDetailedResults] 

    INSERT INTO Teams_Statistics (TeamID, score, Loc, FGM, FGA, FGM3, FGA3, FTM, FTA, [OR], DR, Ast, [TO], Stl, Blk, PF)
  SELECT LTeamID as TeamID
	, [LScore] as score
	, [WLoc] as Loc
	, [LFGM] as FGM
    ,[LFGA] as FGA
    ,[LFGM3] as FGM3
    ,[LFGA3] as FGA3
    ,[LFTM] as FTM
    ,[LFTA] as FTA
    ,[LOR] as [OR]
    ,[LDR] as DR
    ,[LAst] as Ast
    ,[LTO] as [TO]
    ,[LStl] as Stl
    ,[LBlk] as Blk
    ,[LPF] as PF
  FROM [TestSql].[dbo].[MRegularSeasonDetailedResults]

go

-------------------------------------------doublons


SELECT COUNT (*) - COUNT (DISTINCT CONCAT(TeamID, score, Loc, FGM, FGA, FGM3, FGA3, FTM, FTA, [OR], DR, Ast, [TO], Stl, Blk, PF))
FROM Teams_Statistics

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
---  Drop table #team_stats

SELECT TeamID
	,AVG (score) as score
	,AVG (FGM) as FGM
    ,AVG (FGA) as FGA
    ,AVG (FGM3) as FGM3
    ,AVG (FGA3) as FGA3
    ,AVG (FTM) as FTM
    ,AVG (FTA) as FTA
    ,AVG ([OR]) as [OR]
    ,AVG (DR) as DR
    ,AVG (Ast) as Ast
    ,AVG ([TO]) as [TO]
    ,AVG (Stl) as Stl
    ,AVG (Blk) as Blk
    ,AVG (PF) as PF

	into #team_stats

FROM Teams_Statistics
WHERE score > 50
GROUP BY TeamID
ORDER BY TeamID
go

-------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CONCAT(2023,'_',t1.TeamID, '_', t2.TeamID) AS TeamIDs,
       t1.score - t2.score AS score_diff,
       t1.FGM - t2.FGM AS FGM_diff,
       t1.FGA - t2.FGA AS FGA_diff,
       t1.FGM3 - t2.FGM3 AS FGM3_diff,
       t1.FGA3 - t2.FGA3 AS FGA3_diff,
       t1.FTM - t2.FTM AS FTM_diff,
       t1.FTA - t2.FTA AS FTA_diff,
       t1.[OR] - t2.[OR] AS OR_diff,
       t1.DR - t2.DR AS DR_diff,
       t1.Ast - t2.Ast AS Ast_diff,
       t1.[TO] - t2.[TO] AS TO_diff,
       t1.Stl - t2.Stl AS Stl_diff,
       t1.Blk - t2.Blk AS Blk_diff,
       t1.PF - t2.PF AS PF_diff
FROM #team_stats t1
JOIN #team_stats t2 ON t1.TeamID < t2.TeamID
ORDER BY TeamIDs


SELECT CLIENT
FROM TEAM 
WHERE AGE < 50
ORDER BY CLIENT

SELECT CAPACITE_DE_CHAUFFAGE
FROM C1
JOIN C2 on C1.CAPACITE_DE_CHAUFFAGE = C2.CAPACITE_DE_CHAUFFAGE
ORDER CAPACITE DE CHAFFAGE

AGETAILLEPOIDSANNEE_DE_NAISSANCE 