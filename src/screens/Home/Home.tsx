import React from 'react';
import {SafeAreaView, TouchableOpacity, Text} from 'react-native';
import {AlertModule} from '../../moduleWrappers';
import {homeStyles} from './Home.styles';

const modalTitle = 'ModalTitle';
const modalMessage = 'ModalMessage';

const Home: React.FC = () => {
  const handleButtonPress = () => {
    AlertModule.invokeModal(modalTitle, modalMessage);
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
