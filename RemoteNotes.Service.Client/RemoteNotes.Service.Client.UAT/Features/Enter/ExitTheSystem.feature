Feature: CustomerCanExitTheSystem
	In order to reduce unsanction access risk
	As a trader
	I want to be able to exit the system (make system logout)

@positive
Scenario: Customer can exit the system
	Given I try to connect the service
	When the result should be connected successfully
	When I enter the login: admin and password: admin
	#When the result should be entered successfully 
	When I try to exit the system
