import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import './custom.scss';

class App extends Component {
  render() {
    return (
      <>
        <Navbar bg="light">
          <Navbar.Brand href="#home">Brand link</Navbar.Brand>
        </Navbar>
        <br />
        <Navbar bg="light">
          <Navbar.Brand>Brand text</Navbar.Brand>
        </Navbar>
        <br />
        <Navbar bg="dark">
          <Navbar.Brand href="#home">
            <img
              src="/logo.svg"
              width="30"
              height="30"
              className="d-inline-block align-top"
              alt="React Bootstrap logo"
            />
          </Navbar.Brand>
        </Navbar>
        <br />
        <Navbar bg="dark" variant="dark">
          <Navbar.Brand href="#home">
            <img
              alt=""
              src="/logo.svg"
              width="30"
              height="30"
              className="d-inline-block align-top"
            />{' '}
            React Bootstrap
          </Navbar.Brand>
        </Navbar>
      </>
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
