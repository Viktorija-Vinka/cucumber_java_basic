Scenario: For correct number
Given I am on enter a number page
When I enter number from 50 to 100
And I click submit
Then I should see a square root of my number

Scenario Outline: for error cases
Given I am on enter a number page
When I enter number: <number>
And I click submit
Then I see message: "<message>"
@not_working
Examples:
| number| message              |
| <50   | Number is too small   |
| >100  | Number is too big     |
| text  | Please enter a number |

