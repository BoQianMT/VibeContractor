
function contract_Only=Generate_Only(Roles)

contract_Only="modifier condition(bool _condition) { require(_condition);  _; }";

for i=1:length(Roles)
    role="modifier onlyXXX() { require( msg.sender == XXX, 'Only XXX can call this.' ); _;}"; 
    new_role=Roles(i);
    role2=replace(role,"XXX",new_role);
    contract_Only=char(contract_Only);
    role2=char(role2);
    contract_Only=char(contract_Only,role2);
end
Final="modifier inState(State _state) { require( state == _state, 'Not your node stage.');  _; }";
Final=char(Final);
contract_Only=char(contract_Only,Final);

end
