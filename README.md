# VibeContractor
VibeContractor is a MATLAB-based automatic smart contract generation framework designed for multi-party collaboration scenarios in Industry 4.0 manufacturing systems.  
The framework generates executable Ethereum smart contract code based on structured definitions of contract names, participating roles, and state-transition tables.
All operations are executed through `CodeGenerate.m`.  
Other MATLAB scripts are automatically invoked as functional sub-modules.

## Repository Structure
`CodeGenerate.m` Main MATLAB entry file

`contract_Final.txt` Generated smart contract code (output)

`Generate_Confirm.m` Sub-module: confirmation logic

`Generate_Construct.m` Sub-module: constructor generation

`Generate_Name.m` Sub-module: contract name generation

`Generate_Node.m` Sub-module: node/state generation

`Generate_Only.m` Sub-module: standalone generation logic

`Generate_Roles.m` Sub-module: role definition generation

`Generate_State.m` Sub-module: state-transition logic

`Name.txt` Smart contract name definition

`Roles.txt` Role definitions

`Table.txt` Node/state transition table

## Usage Instructions
### Step 1: Prepare Input Files
According to the formatted input data described in the manuscript, modify and save the following files:
- `Name.txt`
  Defines the smart contract name.
- `Roles.txt`
  Defines all participating roles involved in the collaboration process.
- `Table.txt`
  Defines nodes, states, and state-transition relationships.
Please ensure that the formatting of these files strictly follows the predefined structure.
### Step 2: Generate Smart Contract Code
Run the main script in MATLAB:
```matlab
CodeGenerate
````
The program will automatically:
* Parse all input definition files
* Generate the corresponding Ethereum smart contract
* Save the generated code to:
contract_Final.txt
### Step 3: Deploy and Execute the Contract
1. Open the generated file:
   contract_Final.txt
2. Copy the entire smart contract code
3. Paste the code into the Ethereum Remix IDE:
   [https://remix.ethereum.org/](https://remix.ethereum.org/)
4. Select Solidity compiler version 0.4.15 or above
5. Compile and deploy the contract
All experimental demonstrations reported in the manuscript can be reproduced using this procedure.

## Experimental Environment
* MATLAB (standard desktop version)
* Ethereum Remix Online IDE
* Solidity compiler version ≥ 0.4.15

## Reproducibility
This repository is intended to support the reproducibility of the experimental results presented in the associated manuscript.
No proprietary data or private configurations are required to execute the code.

## License
This project is licensed under the MIT License.

## Code Availability
The source code is publicly available to support academic research and evaluation.
