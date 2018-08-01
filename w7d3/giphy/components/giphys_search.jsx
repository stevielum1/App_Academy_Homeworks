import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    e.preventDefault();
    const searchTerm = e.currentTarget.value;
    this.setState({ searchTerm });
  }

  handleSubmit(e) {
    e.preventDefault();
    const { searchTerm } = this.state
    this.props.fetchSearchGiphys(searchTerm);
    this.setState({ searchTerm: "" });
  }

  render() {
    return (
      <div>
        <input onChange={this.handleChange} value={this.state.searchTerm}/>
        <button onClick={this.handleSubmit}>Submit</button>
        <GiphysIndex giphys={this.props.giphys}/>
      </div>
    );
  }
}

export default GiphysSearch;
