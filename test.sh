#gem install vagrant

#git clone git://github.com/grails/grails-core.git ~/development/grails-core

#~/development/grails-core/gradew install

export GRAILS_HOME=~/development/grails-core

export PATH=$GRAILS_HOME/bin:$PATH

cd leakapp

grails prod war ../data/webapps/leakapp.war

cd ..

vagrant destroy -f && vagrant up

curl http://localhost:8080/leakapp/user/test > /dev/null

curl http://localhost:8080/manager/reload?path=/leakapp > /dev/null

curl http://localhost:8080/leakapp/user/test