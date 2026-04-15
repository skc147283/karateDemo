@weather @regression
Feature: Validate OpenWeather current weather API

  Background:
    * url weatherBaseUrl
    * if (!openWeatherApiKey) karate.abort()

  Scenario: get weather by coordinates
    Given path 'weather'
    And param lat = 44.34
    And param lon = 10.99
    And param appid = openWeatherApiKey
    When method get
    Then status 200
    And match response.coord.lat == 44.34
    And match response.coord.lon == 10.99
    And match response.weather == '#[]'
    And match response.main.temp != null
