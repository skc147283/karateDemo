Feature: Validate variable concept

Background:
    Given def companyName = 'Lebyy.com'

@regression
Scenario: verify veriable data type
    Given def employeeName = 'John Doe'
    Then print employeeName
    And match employeeName == 'John Doe'

