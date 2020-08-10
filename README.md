# DynaMed_

This was originally a tweak bounty but the client allowed me to post it to GitHub so here it is.

### How does this bypass work.

Essentially, this takes advantage of the '30 min guest period' which you can use twice a month.

#### How the DynaMed Login System works

The login system works differently for 'Paid and Guest Accounts'

##### Paid Accounts
Queries an online server upon successful login returns a OAuth Token which is saved to the Local DB then outputs a JSON file containing the Token, if the Token is not expired it will automatically login.

##### Guest Accounts
Guest Accounts work in a similar way except they check the Local DB for the remaining uses for that month then logs in and saves a 'Authentication Token'

With a little bit of digging about i came across a file called `authentication.json` which stores the authentication token, the data in this file includes;

- Login Mode (Paid / Guest)
- Account Name
- OAuth Token (Only for Paid Users, marked as nil for guest)
- Expiration Date / Time

#### The Actual Bypass
The Actual Bypass overrides that file and sets the expiration time to the year 9999, due to the app having the exact same features in guest mode as in the paid version the app works completely fine.

### Conclusion
This could easily be prevented, but due to a lack of testing has clear security flaws.
