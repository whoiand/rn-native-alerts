import React from 'react';
import {SafeAreaView, TouchableOpacity, Text} from 'react-native';
import {AlertModule} from '../../moduleWrappers';
import {homeStyles} from './Home.styles';

const Home: React.FC = () => {
  const handleButtonPress = () => {
    AlertModule.invokeModal();
  };

  return (
    <SafeAreaView style={homeStyles.container}>
      <TouchableOpacity style={homeStyles.button} onPress={handleButtonPress}>
        <Text>Invoke Alert</Text>
      </TouchableOpacity>
    </SafeAreaView>
  );
};

export default Home;
