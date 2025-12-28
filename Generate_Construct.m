
function contract_Construct=Generate_Construct(Roles)%输入Roles，输出角色代码

    role='constructor() public payable { XXX = msg.sender; }'; 
    new_role=string(Roles(1));
    contract_Construct=replace(role,"XXX",new_role);
    contract_Construct=char(contract_Construct);
    contract_Construct=char(contract_Construct,'')

end
