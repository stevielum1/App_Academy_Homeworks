import React from 'react';

import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = ({giphys}) => {
  return (
    <div>
      <ul>
        {
          giphys.map(giphy => <GiphysIndexItem giphy={giphy} key={giphy.id} />)
        }
      </ul>
    </div>
  );
}

export default GiphysIndex;
