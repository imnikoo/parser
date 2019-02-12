Feature: CannotConnectWrongService
 	In order to enter the system
	As a trader
	I want to be able to connect to the server

@positive
Scenario: Cannot connect wrong service
	Given I try to connect wrong service
	Then the result should be failed to connect
