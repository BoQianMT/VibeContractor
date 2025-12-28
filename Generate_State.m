
function contract_State=Generate_State(Table)
contract_State="";
Node_length=size(Table,1);
for i=1:(Node_length-1)
    if i==1
        contract_State='enum State { Node1,';
    else
        state='NodeX,'; 
        new_state=string(Table(i,1));
        state2=replace(state,"X",new_state);
        contract_State=strcat(contract_State,state2);
    end
end
state='NodeX,'; 
new_state=string(Table(Node_length,1));
state2=replace(state,"X",new_state);
contract_State=strcat(contract_State,state2);
new_state=string(size(Table,1)+1);
state2=replace('NodeX',"X",new_state);
contract_State=strcat(contract_State,state2);
contract_State=strcat(contract_State,'} State public state;');
contract_State=char(contract_State);
contract_State=char(contract_State,'')
end
