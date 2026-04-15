
@regression
Feature: Variable and outline examples
    Basic executable Karate examples

@smoke @regression
Scenario: simple variable assertions
    * def employeeName = 'John Doe'
    * def isActive = true
    * print employeeName
    * match employeeName == 'John Doe'
    * match isActive == true


@regression
Scenario Outline: validate parameterized values
    * def first = '<param1>'
    * def second = '<param2>'
    * match first == '<param1>'
    * match second == '<param2>'
    Examples:
        | param1 | param2 |
        | value1 | value2 | 



