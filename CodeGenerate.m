clc
clear

Name=textread('Name.txt','%s') 
Roles=textread('Roles.txt','%s') 
[a1,a2,a3]=textread('Table.txt','%n%n%n');
Table=[a1 a2 a3]


contract_Sol=Generate_Name(Name)

contract_Roles=Generate_Roles(Roles)

contract_State=Generate_State(Table)

contract_Construct=Generate_Construct(Roles)

contract_Only=Generate_Only(Roles)

contract_Confirm=Generate_Confirm(Roles)

contract_Node=Generate_Node(Roles,Table)


contract_Final=char(contract_Sol,contract_Roles,contract_State,contract_Construct,contract_Only,contract_Confirm,contract_Node,'}')  
contract_Final=string(contract_Final);

fid=fopen('contract_Final.txt','wt');
fprintf(fid,'%s\r\n',contract_Final);
fclose(fid);

