Scenario 1

Given 'I am on login page'
When 'I input my valid username'
And 'I imput my valid password'
And 'submit'
Then 'I will be logged in and redirected'


Story: Account Holder withdraws cash

As an Account Holder
I want to withdraw cash from an ATM
So that I can get money when the bank is closed

Scenario 2

Given 'I am a card holder'
And 'I am at ATM'
And 'I have enough money in my account'
When 'I enter my card'
And 'I type in my pin'
And 'select the cash withdrawal service'
And 'select the amount I need'
Then 'I will see a please wait message'
And 'I will be given my card back'
And 'cash will dispensed'

Scenario 3

Given 'I am a card holder'
And 'I am at ATM'
And 'I don\'t have enough money in my account'
When 'I enter my card'
And 'I type in my pin'
And 'select the cash withdrawal service'
And 'select the amount I need'
Then 'I will see an error message'
And 'my card will be returned'
And 'no cash will be dispensed'
