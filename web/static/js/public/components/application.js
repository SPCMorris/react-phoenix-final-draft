import React, { Component } from "react";
import SearchBar from "./search_bar";

class Application extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div> 
        <h1 className="text-capitalize text-center">phoenix rising</h1>
                
        <p className="lead">This app shows a brief demonstration of using React with Phoenix and Elixir. Enter in a city and state (city, state) and it will be passed to the Google Places API then we will render some results.
        </p>
        
        <SearchBar />

      </div>
    )
  }
}

export default Application;