import React from "react";
import ReactDOM from "react-dom"

class Calculator extends React.Component {
  constructor(){
    super();
    this.state = {result: 0, num1: "", num2: ""}
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);

  }

  setNum1(e){
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num1});
  }
  setNum2(e){
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num2: num2});
  }

  clear(e){
    e.preventDefault();
    this.setState({ result: 0, num1: "", num2: "" });
  }

  add(e){
    e.preventDefault();
    const {num1, num2} = this.state; 
    const result = num1+num2;
    this.setState({result})
  }
  subtract(e){
    e.preventDefault();
    const {num1, num2} = this.state; 
    const result = num1-num2;
    this.setState({result})
  }
  multiply(e){
    e.preventDefault();
    const {num1, num2} = this.state; 
    const result = num1*num2;
    this.setState({result})
  }
  divide(e){
    e.preventDefault();
    const {num1, num2} = this.state; 
    const result = num1/num2;
    this.setState({result})
  }

  render (){
    const {num1, num2, result} = this.state; 
    return(

      <div>
        <h1>{result}</h1>
        <input name="num1" value={num1} onChange={this.setNum1}/>
        <input name="num2" value={num2} onChange={this.setNum2}/>

        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>clear</button>

      </div>

    );
  }
}

export default Calculator;