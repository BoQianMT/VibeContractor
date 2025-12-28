
function contract_Name=Generate_Name(Name)

    role={'pragma solidity ^0.4.22;'; 'contract XXX {'}; 
    new_role=string(Name);
    contract_Name=replace(role,"XXX",new_role);
    contract_Name=char(contract_Name);
end
