BIconnectoroptimisationview
===========================

This repository help to implement and test view with BIconnector and performance iprovement to install and use 

Prerequisites
-------------

* The MongoDB database must be installed, and running on port 2017, and the MongoDB tools need to be present in your `$PATH`
* The MongoDB BI Connector (2.x) must be installed, and present in your shell's `$PATH` environment variable
    * `export PATH="$PATH:/path/to/bi/connector/bin/folder:/path/to/mongodb/bin/folder"`

Usage
-----

* Checkout the repository 
* If you use mongodb an another port change the port in `mongobiconnectordemo.sh`
* Launch `mongobiconnectordemo.sh`

Demo 
-----

* use tableau and connect to the hacka db with the port 3307 ( default port in mongodb bi connector ) 
* download the data with the mgendata, mgendata_adress, mgendata_phone ,mgendata_tags ( Tableau will make the join for you ) 
* download the data with the mgendata_view ( direct view made in mongodb 3.4) 
* download the data with the mgendata_view2_tags_subtags ( view made in DRDL ) 
* if you go to inspect the hacka.log , you will see that the view query is faster than the drdl and faster than a join in tableau
