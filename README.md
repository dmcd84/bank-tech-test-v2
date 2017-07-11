# bank-tech-test-v2
Week 10 at Makers Academy, tech test week.

Second version at a tech test - trying to be more of an OOD purist.

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Approach

Trying to keep this code more 'pure' in terms of OOD, transactions have no knowledge of balance. Instead, balance is tracked when displaying a statement. This means that each object has a reduced knowledge and dependency on the other.

This was significantly more intellectually challenging than just building a thing that just worked...like version 1!!

### User Stories

```
As a User
So I can afford to buy new tech
I would like to deposit funds

As a User
So I can buy tech I don't really need
I would like to make a withdrawal

As a User
So I can justify my next purchase
I want to see a statement of how broke I actually am
```

### Usage
Before use you will need to open terminal (or equivalent), clone this repo and use the commands below to use the 'bank account'.
```
git clone git@github.com:dmcd84/bank-tech-test-v2.git
cd bank-tech-test-v2
bundle install
```

Then in irb or another REPL, after navigating to the project folder above(bank-tech-test):
```
require './lib/transactions.rb'
bank = Transactions.new
```
This will create a 'bank' which can make use of the following commands:

```
bank.deposit(amount)
bank.withdraw(amount)
bank.print_statement
```
