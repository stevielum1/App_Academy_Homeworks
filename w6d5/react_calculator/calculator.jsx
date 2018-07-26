import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {
      num1: "",
      num2: "",
      result: 0
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  //your code here
  setNum1(e) {
    const num = parseInt(e.currentTarget.value);
    if(isNaN(num)) {
      this.setState({ num1: "" });
    } else {
      this.setState({ num1: num });
    }
  }

  setNum2(e) {
    const num = parseInt(e.currentTarget.value);
    if(isNaN(num)) {
      this.setState({ num2: "" });
    } else {
      this.setState({ num2: num });
    }
  }

  add(e) {
    this.setState({ result: this.state.num1 + this.state.num2 });
  }

  subtract(e) {
    this.setState({ result: this.state.num1 - this.state.num2 });
  }

  multiply(e) {
    this.setState({ result: this.state.num1 * this.state.num2 });
  }

  divide(e) {
    this.setState({ result: this.state.num1 / this.state.num2 });
  }

  clear(e) {
    this.setState({ num1: "", num2: "", result: 0 });
  }

  render(){
    const { num1, num2, result } = this.state;
    const { setNum1, setNum2, add, subtract, multiply, divide, clear } = this;
    return (
      <div>
        <h1>{result}</h1>

        <input onChange={setNum1} value={num1}/>
        <input onChange={setNum2} value={num2}/>
        <button onClick={clear}>Clear</button>
        <br/>

        <button onClick={add}>+</button>
        <button onClick={subtract}>-</button>
        <button onClick={multiply}>*</button>
        <button onClick={divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
