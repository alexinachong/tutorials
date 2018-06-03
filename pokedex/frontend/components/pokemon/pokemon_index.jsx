import React from 'react';

class PokemonIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <ul>
        {this.props.pokemon.map(poke => poke.name)}
      </ul>
    );
  }
}

export default PokemonIndex;
