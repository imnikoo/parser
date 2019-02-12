Feature: DisconnectTheService
 	In order to enter the system
	As a trader
	I want to be able to connect to the server

@positive
Scenario: Disconnect from the service
	Given I try to connect the service
	When the result should be connected successfully
	When I try to disconnect from the service
	Then the result should be disconnected successfully