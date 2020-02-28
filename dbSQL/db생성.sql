drop table result;

CREATE TABLE `lee`.`personalinfo` (
  `Name` VARCHAR(20) NULL COMMENT '사용자 이름',
  `UserID` VARCHAR(20) NOT NULL COMMENT '사용자 아이디',
  `Passwd` VARCHAR(20) NULL COMMENT '사용자 비밀번호',
  `Birth` VARCHAR(20) NULL COMMENT '생년월일',
  `Gender` VARCHAR(20) NULL COMMENT '성별',
  `RegDate` DATE NULL COMMENT '등록일',
  `Prefer` VARCHAR(20) NULL COMMENT '호감캐릭터',
  `TotalScore` INT(11) NULL COMMENT '통합점수',
  `RecentStage` INT(11) NULL COMMENT '최근난이도',
  PRIMARY KEY (`UserID`))
COMMENT = '사용자 정보';

CREATE TABLE `lee`.`result` (
  `Uid` INT(11) NOT NULL AUTO_INCREMENT,
  `ElapsedTime` INT(11) NULL COMMENT '소요시간',
  `UserID` VARCHAR(20) NOT NULL COMMENT '사용자 아이디',
  `Score` INT(11) NULL COMMENT '획득한 점수',
  `GameType` VARCHAR(20) NULL COMMENT '게임 종류',
  `Level` INT(11) NULL COMMENT '난이도',
  `ProgressDate` DATE NULL COMMENT '수행일',
  `RewardIdx` INT(11) NULL COMMENT '획득한 도감 인덱스',
  PRIMARY KEY (`Uid`),
  constraint FK_UserINFO 
  FOREIGN KEY(`UserID`) references personalinfo(`UserID`) on update cascade)
COMMENT = '사용자 수행결과';

CREATE TABLE `lee`.`reward` (
  `RewardIdx` INT(11) NOT NULL COMMENT '획득한 도감 인덱스',
  `RewardName` VARCHAR(20) NULL COMMENT '획득한 도감 이름',
  `RewardType` VARCHAR(20) NULL COMMENT '획득한 도감 게임 종류',
  PRIMARY KEY (`RewardIdx`))
COMMENT = '보상';

desc result;
show full columns from personalinfo;
show full columns from result;
show full columns from reward;