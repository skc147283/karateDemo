function fn() {
  var env = karate.env; // get system property 'karate.env'
  var System = Java.type('java.lang.System');
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  // base configuration that is common to all environments
  // this is where you can define variables that are shared across all environments
  // for example, base URLs, authentication tokens, or other constants
  var config = {
    env: env,
    myVarName: 'someValue',
    jsonPlaceholderBaseUrl: 'https://jsonplaceholder.typicode.com',
    weatherBaseUrl: 'https://api.openweathermap.org/data/2.5',
    openWeatherApiKey: karate.properties['openweather.api.key'] || System.getenv('OPENWEATHER_API_KEY')
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}