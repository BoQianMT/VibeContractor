
function contract_Node=Generate_Node(Roles,Table)

contract_Node="";
for i=1:size(Table,1)

    role="function NodeX_succeed() public onlyY inState(State.NodeX) { state = State.NodeZ; }"; 
    node_in=string(Table(i,1));
    rr=Table(i,2);
    role_in=string(Roles(rr));
    node_out=string(i+1);
    role1=replace(role,"X",node_in);
    role2=replace(role1,"Y",role_in);
    role3=replace(role2,"Z",node_out);
    contract_Node=char(contract_Node);
    role3=char(role3);
    contract_Node=char(contract_Node,role3);

    role="function NodeX_fail() public onlyY inState(State.NodeX) { state = State.NodeZ; }"; 
    node_in=string(Table(i,1));
    rr=Table(i,2);
    role_in=string(Roles(rr));
    node_out=string(Table(i,3));
    role1=replace(role,"X",node_in);
    role2=replace(role1,"Y",role_in);
    role3=replace(role2,"Z",node_out);
    contract_Node=char(contract_Node);
    role3=char(role3);
    contract_Node=char(contract_Node,role3);
end


end
