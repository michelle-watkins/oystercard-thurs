# Oystercard

## Aim
* To test drive a public transport system (Oystercard).

## Tech Stack/Language
* Ruby with RSpec for testing

## User Stories and Domain Models
``` 
In order to use public transport
As a customer
I want money on my card
```
| Objects | Messages |
|---------|----------|
| Public Transport | |
| Customer |  |
| Card | initialize |
```
In order to keep using public transport
As a customer
I want to add money to my card
```
| Objects | Messages |
|---------|----------|
| Public Transport | |
| Customer |  |
| Card | top_up |
```
In order to protect my money
As a customer
I don't want to put too much money on my card
```
| Objects | Messages |
|---------|----------|
| Customer |  |
| Card | MAXIMUM_BALANCE |
```
In order to pay for my journey
As a customer
I need my fare deducted from my card
```
| Objects | Messages |
|---------|----------|
| Journey | |
| Customer |  |
| Card | deduct |
```
In order to get through the barriers
As a customer
I need to touch in and out
```
| Objects | Messages |
|---------|----------|
| Barriers | |
| Customer |  |
| Card | touch_in |
| Card | in_journey? |
| Card | touch_out |
```
In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey
```
| Objects | Messages |
|---------|----------|
| Journey | |
| Customer |  |
| Card | MINIMUM_BALANCE |
```
In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card
```
| Objects | Messages |
|---------|----------|
| Journey | |
| Customer |  |
| Card | deduct(MINIMUM_CHARGE) |
```
In order to pay for my journey
As a customer
I need to know where I've travelled from
```
| Objects | Messages |
|---------|----------|
| Journey | |
| Customer |  |
| Card | touch_in(entry_station) |
```
In order to know where I have been
As a customer
I want to see to all my previous trips
```
```
In order to know how far I have travelled
As a customer
I want to know what zone a station is in
```
```
In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out
```
```
In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```