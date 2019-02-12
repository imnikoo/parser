Feature: CustomerCanEnterTheSystem
	In order to enter the system
	As a trader
	I want to be able to enter the system

@positive
Scenario: Customer can enter the system
	Given I try to connect the service
	When the result should be connected successfully
	When I enter the login: user2 and password: password2
	#When wait 2000
	#Then the result should be User entered successfully 
