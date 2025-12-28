
function contract_Confirm=Generate_Confirm(Roles)

contract_Confirm="";
for i=2:length(Roles)
    role="function confirm_XXX() public payable{ XXX = msg.sender; }"; 
    new_role=Roles(i);
    role2=replace(role,"XXX",new_role);
    role2=char(role2);
    contract_Confirm=char(contract_Confirm);
    contract_Confirm=char(contract_Confirm,role2);
end

end
