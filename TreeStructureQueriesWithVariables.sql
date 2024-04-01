USE [TestDB1]
GO

/****** Object:  Table [dbo].[tree]    Script Date: 01-04-2024 15:28:38 ******/

CREATE TABLE [dbo].[tree](
	[node] [int] NULL,
	[Parent] [int] NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[tree] 
VALUES 
 ( 2, NULL)
,( 1, 2)
,( 4, 2)
,( 3, 1)
,( 5, 1)
,( 6, 4)
,( 7, 4)
,( 8, 3)
,( 9, 5)

GO

/****** Table Valued function - UserDefinedFunction [dbo].[TSturcVariableNode] 
we can pass a value for node in this fuction and it will return the hierarchy of parents in the tree starting from the value of the node    *****/
CREATE function [dbo].[TSturcureVariableNode] (@Var int) returns @result table(node int, Pnode int)
as
begin
with T_Struc 
as 
( select @Var as Cnode, Parent  from tree 
where node = @Var
union all
select t.node, T.Parent  from Tree T inner Join T_Struc TS on ts.Parent= t.node --where t.node=@Var
)
insert into @result 
select * from T_Struc 
return
end
GO

/****** Table Valued function - UserDefinedFunction [dbo].[TSturcturesVariableParent]
we can pass a value for parent in this fuction and it will return the downward-hierarchy of nodes in the tree starting from the value of the parent    *****/
CREATE function [dbo].[TSturcturesVariableParent] (@Var int) returns @result table(node int, Pnode int, level int)
as
begin
with T_Struc 
as 
( select  node, parent, 0 as level from tree 
where parent = @Var
union all
select t.node, Ts.node as Pnode, level+1 from Tree T inner Join T_Struc TS on t.Parent= TS.node --where t.node=@Var
)
insert into @result 
select * from T_Struc 
return
end
GO

-- select data rom tree
select * from  dbo.tree 
-- select data from table valued function [dbo].[TSturcureVariableNode] with node value 6
select * from [dbo].[TSturcureVariableNode](6)
-- select data from table valued function [dbo].[TSturcturesVariableParent] with parent value 1
select * from [dbo].[TSturcturesVariableParent](1)
