# Finance Tracker App - WIP
### Created Dec 2020 as part of a Ruby on Rails tutorial by Mashrur Hossain
![stock portfolio screenshot](app/assets/images/financeTracker-myPortfolio-alreadyTrackingTSLA.png)

REQUIREMENTS:
* Authentication system, users can sign-up, edit their profile, login/out
* Users can track stocks (up to 10/user). Their profile page will display all of the stocks they are tracking along with stocks' current price
* Users can search for stocks, add and remove stocks from their portfolio
* Users can look (by name or by email) for friends, or other users of the app
* Users can view the portfolio of stocks their friends are tracking (for investing ideas)
* The app must be mobile-friendly, so styling has to be responsive

CONSTRAINTS:
* Requires fast development (story is boss is presenting at a meeting in a few days)
* Styling, while not of utmost importance, needs to be nice and presentable
* No test framework is required since it's a prototype
* Core functionality, time and presentation are key factors

Learning goals:
* Rapid prototyping using 'rails magic'
* Make use of out-of-the-box tools like bootstrap template generators
* Learn to install, configure and customize 3d party gems/tools

Third Party Gems/Tools used:
* Devise for authentication
* Devise bootstrap views + Bootstrap 4.5
* IEX Finance API

STEPS TAKEN:
* Installed Devise, creating User
* Installed Bootstrap 4.5.3 for styling
* Updated form and messages styling
* Create Stock Model
	* Attibutes: name, ticker_symbol, price
* Add IEX API key using secure credentials
* Install Devise Bootstrap Views
* Build stock lookup form, submit using AJAX
* Extract result to partial
* Build User - Stock relationship
* Add Stocks list view
	* Restricted to 10 stocks/user
	* Handle invalid search results
	* Remove stock from list
* Modify User to have first and last names
	* Modify Devise forms to accept these fields
* Add self-referential association for friends
* Update nav dropdown friends to show a list of friends, build list
* Add search friends functionality
	* Build form
	* Create search partial
* Add / Remove friend
* View friend's profile
* See what stocks friend follows, and add if tracking fewer than 10 stocks
* End of tutorial commit 5f06df3f3082185b0


To download and use this app:

Clone app. Run `bundle install` to install the gems. In app/models/stock.rb, replace [:sandbox_api_key] with your new publishable key. If you are using the sandbox (free tier) leave the endpoint as is. If you are using a paid tier, switch out the endpoint following the #.

SIGN UP FOR THE IEX API:
https://iexcloud.io/s/3856afef 
You have a choice of a free or a variety of paid plans.  The free tier works fine. Alternatively, you can test the demo.
<!-- This README would normally document whatever steps are necessary to get the
application up and running. -->

## Technologies Used:
* Ruby version 2.6.3
* Rails 6.1.0
* Bootstrap 4.5.3
* IEX API
* SQLite3 db in dev, PostgreSQL in development

### TODO:
* Fix table shift
* Use redis to search friends
* If search stock in lowercase, can add duplicate stock
* Add Admin role to view all users