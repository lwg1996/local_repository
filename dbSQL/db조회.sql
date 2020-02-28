insert into personalinfo(UserID,Prefer) values('lee1','1');
insert into personalinfo(UserID,Prefer) values('lee2','1');
insert into personalinfo(UserID,Prefer) values('lee3','1');
insert into personalinfo(UserID,Prefer) values('lee4','1');
insert into personalinfo(UserID,Prefer) values('lee5','1');
insert into personalinfo(UserID,Prefer) values('lee6','1');
insert into personalinfo(UserID,Prefer) values('lee7','2');
insert into personalinfo(UserID,Prefer) values('lee8','2');
insert into personalinfo(UserID,Prefer) values('lee9','2');
insert into personalinfo(UserID,Prefer) values('lee10','2');
insert into personalinfo(UserID,Prefer) values('lee11','2');
insert into personalinfo(UserID,Prefer) values('lee12','2');

insert into personalinfo(Name, UserID,Passwd,Birth,Gender,RegDate,Prefer,TotalScore,RecentStage) 
values('leewoojin','lee','1234','1996-11-12','남','2020-02-13','동물',100,1);

insert into result(ElapsedTime,UserID,Score,GameType,Level,ProgressDate,RewardIdx)
values(20, 'lee',20,'국어',1,'2020-02-13',101);
insert into result(ElapsedTime,UserID,Score,GameType,Level,ProgressDate,RewardIdx)
values(20, 'lee',30,'수학',1,'2020-02-13',201);
insert into result(ElapsedTime,UserID,Score,GameType,Level,ProgressDate,RewardIdx)
values(20, 'lee',30,'도덕',1,'2020-02-13',301);
insert into result(ElapsedTime,UserID,Score,GameType,Level,ProgressDate,RewardIdx)
values(20, 'lee',20,'수학',2,'2020-02-13',401);

select UserID,score,GameType from result where UserID='lee';

select * from result;

select * from personalinfo;


insert into reward(RewardIdx,RewardName,RewardType) values(101,'강아지','동물');
insert into reward(RewardIdx,RewardName,RewardType) values(201,'닭','동물');
insert into reward(RewardIdx,RewardName,RewardType) values(301,'도마뱀','동물');
insert into reward(RewardIdx,RewardName,RewardType) values(401,'비둘기','동물');

select * from reward;

select r.Userid, r.GameType, r.RewardIdx, re.RewardName,re.RewardType
from result r
LEFT JOIN reward re on r.RewardIdx=re.RewardIdx
where Userid='lee';

