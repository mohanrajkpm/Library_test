# README

Software Requirements
---------------------

* Install Rails 7

* Install Ruby version 3.X

* Instal Postgresql 


Add below gem
=============

JSON Response
-------------

gem 'fast_jsonapi'


Execute an Application
======================

Clone a repository
------------------

git clone git@github.com:mohanrajkpm/Library_test.git

Enter into an application
-------------------------

cd LibraryAPI

bundle install

rails s


API Documentation
=================

Fetch Library details
---------------------

Request URL
-----------

http://localhost:3000/api/v1/libraries


Method
------

GET

Response
--------

{
	data: [
		{
			id: "1",
			type: "book",
			attributes: {
				title: "C Programming",
				status: "checked_out",
				checked_out_by: "john"
			}
		},
		{
			id: "3",
			type: "book",
			attributes: {
				title: "Java Programming",
				status: "available",
				checked_out_by: "john"
			}
		}
	]
}


Execute an Testcase
===================

	1. Go to project path
	2. Run below command
	
		rails test
