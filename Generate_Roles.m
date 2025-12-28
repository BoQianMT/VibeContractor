
function contract_Roles=Generate_Roles(Roles)

for i=1:length(Roles)
    role='address public XXX;'; 
    new_role=Roles(i);
    role2=replace(role,"XXX",new_role);
    if i==1
        contract_Roles=role2;
    else
        contract_Roles=char(contract_Roles,role2);
    end
end

end
