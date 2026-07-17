```
locate all APIs/micro-services used
extract all API-endpoints we can find

ex: invoice.example.com -> found in JS:
/api/v3/invoices
/api/v3/invoices/1234
/api/v3/accounts
/api/v3/accounts/1234

save to path-lists:
/invoices
/accounts
/api
/api/v3
/api/v3/invoices
/api/v3/accounts

1. find more endpoints:
desktop client
web-archive
docs
proxy history
etc
2. combine it all -> subdomain-list * path-endpoint-list
3. look at the errors/info disclosure
add additional stantard fuzz to suffixx-list: test, ", ', # e etc

/api/v3/invoices/123?FUZZ=x& -> (encode)
/api/v3/invoices/%2e%2e%2fFUZZ%23

takeways:

- curate your own context specific wordlists
- combine with regular fuzzing
- understand and learn what is being disclosed and how to abuse it
```
