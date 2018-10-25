#!/bin/sh

export ENTANDO_HOME=~/Entando

alias gp='git pull'
alias gco='git checkout'
alias gcm='git checkout master'
alias e='cd ~/Entando'
alias es='cd ~/bin/entando-dev-scripts'
alias eb='cd $ENTANDO_HOME/BE'
alias ec='cd $ENTANDO_HOME/BE/entando-core'
alias ep='cd $ENTANDO_HOME/BE/entando-components'
alias ea='cd $ENTANDO_HOME/BE/entando-archetypes'
alias ab='cd $ENTANDO_HOME/app-builder'
alias j='mvn clean jetty:run'
alias jd='(export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"; j)'
alias i='mvn clean install -DskipTests'
alias ia='ec && i && ep && i && ea && i && ec'
alias a='mvn archetype:generate -Dfilter=entando-archetype-webapp-generic -DarchetypeCatalog=local'
alias acm='ec && gcm && ep && gcm && ea && gcm'
alias ac5='ec && gco v5.0.1-dev && ep && gco v5.0.1-dev && ea && gco v5.0.1-dev'
alias gpa='ec && gp && ep && gp && ea && gp'
alias gpai='ec && gp && i && ep && gp && i && ea && gp && i'
alias n='notify-send'
alias ap='cd $ENTANDO_HOME/myapp' 
alias ap5='cd $ENTANDO_HOME/myapp501' 

