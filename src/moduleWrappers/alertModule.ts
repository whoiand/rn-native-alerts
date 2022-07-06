import {NativeModules} from 'react-native';
const {AlertModule} = NativeModules;
interface AlertModuleInterface {
  invokeModal: () => void;
}
export default AlertModule as AlertModuleInterface;
