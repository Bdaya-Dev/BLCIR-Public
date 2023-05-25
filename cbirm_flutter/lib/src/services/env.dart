const appEnvironment = String.fromEnvironment('APP_ENVIRONMENT');
// const kAppIsEmulator = String.fromEnvironment('EMU') == 'TRUE';

const appIsDebug = appEnvironment == 'DEBUG';
const appIsProduction = appEnvironment == 'PRODUCTION';
