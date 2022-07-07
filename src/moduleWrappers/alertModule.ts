import {NativeModules} from 'react-native';
const {AlertModule} = NativeModules;
interface AlertModuleInterface {
  invokeModal: (title: string, message: string) => void;
}
export default AlertModule as AlertModuleInterface;
