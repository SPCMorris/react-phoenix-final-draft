import React, { Component } from 'react';

class SearchBar extends Component {
  constructor(props) {
    super(props);
    this.state =  { term: "" };
    this.onFormSubmit = this.onFormSubmit.bind(this);
  }

  onFormSubmit(event) {
    event.preventDefault();
    this.setState({ term: "" });
    console.log(this.state.term)
  }

  render() {
    return (
      <form onSubmit={ this.onFormSubmit }>
        <div className="col-lg-12">
          <div className="input-group">
              <input 
                type="text" 
                className="form-control" 
                placeholder="Please enter a place or location..."
                value={ this.state.term }
                onChange={ (event) => this.setState({ term: event.target.value })}
                />
              <span className="input-group-btn">
                <button 
                className="btn btn-default" 
                type="submit"
                type="submit"
                onClick={ this.onFormSubmit }
                >Search</button>
              </span>
          </div>
        </div>
      </form>
    )
  }
}

export default SearchBar;