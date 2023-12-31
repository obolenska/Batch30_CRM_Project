@important
Feature: User should be able to send a message by filling the mandatory fields


	@B30G18-131
	Scenario:
		Given User is logged in to the CRM HomePage
		When User clicks on Message Tab
		And User types in a "message" in message input box
		And User does not leave the recipient box blank by deleting the default option
		Then User should be able to send a message by filling the mandatory fields

	Scenario:
		Given User is logged in to the CRM HomePage
		And User clicks on Message Tab
		And User clicks Send button
		Then User should see an error message "The message title is not specified."

	Scenario:
		Given User is logged in to the CRM HomePage
		And User clicks on Message Tab
		When User leaves recipient box empty by deleting All employees button
		And User clicks Send button
		Then User should see an error message "Please specify at least one person."