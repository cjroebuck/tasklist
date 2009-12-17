Feature: Tasks
In order to keep track of tasks
People should be able to
Create a list of tasks

Scenario: List Tasks
	Given that I have created a task "task 1"
	When I go to the tasks page
	Then I should see "task 1"