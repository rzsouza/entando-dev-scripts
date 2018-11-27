#!/bin/sh

export ENTANDO_HOME=~/Entando

alias s='source ~/.zshrc'
alias z='$EDITOR ~/.zshrc'
alias G='| grep'
alias AG='alias | grep'

alias gp='git pull'
alias gco='git checkout'
alias gcm='git checkout master'
alias gst='git status'

alias e='cd $ENTANDO_HOME'
alias es='vim ~/bin/entando-dev-scripts/entandoAliases.sh'

alias n='notify-send'
alias nr='notify-send Ready!'

alias eb='cd $ENTANDO_HOME/BE'
alias ec='cd $ENTANDO_HOME/BE/entando-core && pwd'
alias ep='cd $ENTANDO_HOME/BE/entando-components && pwd'
alias ea='cd $ENTANDO_HOME/BE/entando-archetypes && pwd'
alias ab='cd $ENTANDO_HOME/app-builder'
alias j='mvn clean jetty:run'
alias jd='(export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"; j)'
alias i='mvn clean install -DskipTests'
alias ec_i='ec && i; n "Entando-Core compiled"'
alias ep_i='ep && i; n "Entando-Component compiled"'
alias ea_i='ea && i'
alias e_i='ec && i && ep && i && ea && i && ec; n "Entando-Backend compiled"'
alias a='mvn archetype:generate -Dfilter=entando-archetype-webapp-generic -DarchetypeCatalog=local'
alias a_m='e && mvn archetype:generate -Dfilter=entando-archetype-webapp-generic -DarchetypeCatalog=local -B -DgroupId=myapp -DartifactId=myapp -o && cd myapp'
alias e_cm='ec && gcm && ep && gcm && ea && gcm'
alias ac5='ec && gco v5.0.1-dev && ep && gco v5.0.1-dev && ea && gco v5.0.1-dev'
alias e_gp='ec && gp && ep && gp && ea && gp'
alias e_gpi='ec && gp && i && ep && gp && i && ea && gp && i'
alias e_gst='(ec && gst && ep && gst && ea && gst)'
alias ap='cd $ENTANDO_HOME/myapp'
alias ap5='cd $ENTANDO_HOME/myapp5'
alias sjd='(export spring_profiles_active=swagger ; jd)'
alias ecms_i='(cd $ENTANDO_HOME/BE/entando-components && i -am -pl ui-bundles/app-views/entando-app-view-cms-default); n "Entando CMS Plugin compiled"'
