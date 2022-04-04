// SPDX-License-Identifier: UNLICENSED

/*FEATURES OF MY CALCULATOR ARE ADDITION,SUBTRACTION,MULTIPLY,DIVIDE,CAN STORE HISTORY OF EACH STEP, CAN STORE DAILY EXPENSE
(BOTH THE HISTORY AND EXPENSE ARE EASILY ACCESSIBLE)*/



pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    uint result;
    

    function CalcAddition(uint x, uint y) public {
        result = x + y;
    }

    function CalcSubtraction(uint x, uint y) public {
        result = x - y;
    }

    function CalcMultiply(uint x, uint y) public {
        result = x * y;
    }

    function CalcDivide(uint x, uint y) public {
        require(y!=0,'Division by zero not possible');
        result = x / y;
    }
    

    function getCalculator() public view returns (uint) {
        return result;
    }
    //STORE HISTORY OF CALCULATOR
    History[] public PastOfCalculator;
    struct History{
        string _WhichOperator;
        uint256 _x;
        uint256 _y;
        uint256 _result;
    }
    /*IF YOU WANT TO ACCESS THE THIRD OPERATION YOU DID PLEASE WRITE 2 IN THE PastOfCalculator box because we are calling 
    the element with index 2*/
    function AddHistory(string memory _WhichOperator, uint256  _x,uint256 _y ,uint256 _result ) public{
        PastOfCalculator.push(History(_WhichOperator,_x,_y,_result));
        
    }


/*MONTHLY EXPENSE RECORDER (YOU CAN STORE EXPENSE OF EACH DAY OF MONTH AND THEN YOU CAN ACCESS TO ANY DAY OF MONTH TO 
CHECK HOW MUCH EXPENSE YOU DID)*/
uint Expense;
uint exp;



function Accexpense(uint exp) public {
        Expense = exp;
    }

 function AccgetExpense() public view returns (uint) {
        return Expense;
 }
 Accounting[] public DateOfMonth;
    struct Accounting{
        uint256 _Expense;
    }
    /*IF YOU WANT TO ACCESS THE EXPENSE YOU DID ON 1 PLEASE WRITE 0 IN THE DateOfMonth box because we are calling 
    the element with index 0*/
    function AccAddExpense(uint256 _Expense ) public{
       DateOfMonth.push(Accounting(_Expense));
        
    }

   
   
/*I WAS TRYING TO ADD ALL THE ELEMENTS OF ARRAY TO CALCULATE THE TOTAL EXPENSE IN THE MONTH BUT I WAS NOT ABLE TO DO
SO BECAUSE OF LACK OF RESOURCE AND TIME DUE TO QUIZZES*/
 }




