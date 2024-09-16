# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## Start

`rails server -b 0.0.0.0 -p 5030`

## If port 5000 is in use

`lsof -i :5000`

## Kill the Process ID (PID)

`kill -9 <PID>`

## Sample Request 1 (/hello)

`http://0.0.0.0:5030/hello`

## Sample Request 2 (/ask ...)

`http://0.0.0.0:5030/ask?input=Give%20me%205%20questions%20related%20to%20JavaScript`
