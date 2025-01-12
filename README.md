# tomcat_9_catalina_base_configuration_10

Se accede a la lista de los servlets por JMX :

1)ir a : http://localhost:8080/manager/jmxproxy/?qry=*%3Aj2eeType=Servlet%2c*
Se puede buscar : WebModule=//localhost/myapp-0.1-dev,name=ControllerServlet y servletClass: com.mycompany.mypackage.ControllerServlet.
Se ve entre esas 2 líneas :
	requestCount: 0

2)visitar la webapp a la url : http://localhost:8080/myapp-0.1-dev/ControllerServlet

3)volver a : http://localhost:8080/manager/jmxproxy/?qry=*%3Aj2eeType=Servlet%2c*
Volver a buscar : WebModule=//localhost/myapp-0.1-dev,name=ControllerServlet y servletClass: com.mycompany.mypackage.ControllerServlet.
Ahora entre esas 2 líneas, se ve :
	requestCount: 1


--------- CATALINA_BASE/conf/tomcat-users.xml
<role rolename="manager-jmx"/>
<user username="tomcat_10" password="tomcat_10" roles="manager-jmx"/>
