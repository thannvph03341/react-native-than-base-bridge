import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

class TBGallery extends Component {
  render () {
    return <RNTBGallery
      {...this.props}/>
  }
}

const RNTBGallery = requireNativeComponent('RNTBGallery', TBGallery);

export default TBGallery;