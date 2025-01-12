call ant -buildfile source_code\myapp\build.xml clean compile dist
call copy .\source_code\myapp\dist\myapp-0.1-dev.war .\webapps\
