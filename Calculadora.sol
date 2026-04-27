// SPDX-License-Identifier: MIT

pragma solidity 0.8.31;

contract Calculadora {

//Variables    
uint256 public resultado;
address public admin;

//Events
event Addition(uint256 firstNumber_, uint256 secondNumber_, uint256 resultado_);
event Subtraction(uint256 firstNumber_, uint256 secondNumber_, uint256 resultado_);
event Multiplier(uint256 firstNumber_, uint256 secondNumber_, uint256 resultado_);
event Division(uint256 firstNumber_, uint256 secondNumber_, uint256 resultado_);

//Modifier
modifier onlyAdmin() {
    require(msg.sender == admin, "Not allowed");
    _;
}

constructor(uint256 firstResultado_, address admin_) {
    resultado = firstResultado_;
    admin = admin_;
}

//Functions
// 1. Addition
function addition(uint256 firstNumber_, uint256 secondNumber_) external returns(uint256 resultado_) {
    resultado_ = firstNumber_ + secondNumber_;
    resultado = resultado_;

    emit Addition(firstNumber_, secondNumber_, resultado_);
}

// 2. Subtraction
function subtraction(uint256 firstNumber_, uint256 secondNumber_) external returns (uint256 resultado_) {
    resultado_ = firstNumber_ - secondNumber_;
    resultado = resultado_;

    emit Subtraction(firstNumber_, secondNumber_, resultado_);
}

// 3. Multiplier
function multiplier(uint256 firstNumber_, uint256 secondNumber_) external returns (uint256 resultado_) {
    resultado_ = firstNumber_ * secondNumber_;
    resultado = resultado_;

    emit Multiplier(firstNumber_, secondNumber_, resultado_);
}
// 4. Division
function division(uint256 firstNumber_, uint256 secondNumber_) external onlyAdmin returns (uint256 resultado_) {
    if (secondNumber_ == 0) return 0;
   
    resultado_ = firstNumber_ / secondNumber_;
    resultado = resultado_;

    emit Division(firstNumber_, secondNumber_, resultado_);
}







}