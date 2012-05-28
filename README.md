

# To run

* Install [Vagrant] (http://vagrantup.com/v1/docs/getting-started/index.html)

* Clone, install and set the latest version of grails from its [repo] (http://github.com/grails/grails-core) 

* Run test.sh 
 
* Review tomcat logs at data/logs

# Findings

* Apparently there's still a thread stuck. 
> SEVERE: The web application [/leakapp] appears to have started a thread named [Timer-1] but has failed to stop it. This is very likely to create a memory leak.

# TODO

* Connect using jmx and check who's creating that thread. 