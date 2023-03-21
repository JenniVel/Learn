import React, { Component } from 'react';
import './App.css';
class Calculator extends Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: "",
      operator: ""
    };
  }

  handleNumInput = (event) => {
    const { name, value } = event.target;
    this.setState({ [name]: value });
  }

  handleOperator = (event) => {
    const { value } = event.target;
    this.setState({ operator: value });
  }

  handleCalculate = () => {
    const { num1, num2, operator } = this.state;
    let result;
    switch (operator) {
      case '+':
        result = parseFloat(num1) + parseFloat(num2);
        break;
      case '-':
        result = parseFloat(num1) - parseFloat(num2);
        break;
      case '*':
        result = parseFloat(num1) * parseFloat(num2);
        break;
      case '/':
        result = parseFloat(num1) / parseFloat(num2);
        break;
      default:
        result = 0;
    }
    this.setState({ result });
  }

  render() {
    const { result, num1, num2 } = this.state;
    return (
      <div>
        <h1>React Calculator</h1>
        <input type="text" name="num1" value={num1} onChange={this.handleNumInput} />
        <select name="operator" onChange={this.handleOperator}>
          <option value="">Select an operator</option>
          <option value="+">+</option>
          <option value="-">-</option>
          <option value="*">*</option>
          <option value="/">/</option>
        </select>
        <input type="text" name="num2" value={num2} onChange={this.handleNumInput} />
        <button onClick={this.handleCalculate}>=</button>
        <span>{result}</span>
      </div>
    );
  }
}

export default Calculator;
