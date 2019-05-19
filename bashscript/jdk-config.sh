
echo "start confif..."
echo 

javahome=`pwd`
echo "
JAVA_HOME=$javahome
JRE_HOME=\$JAVA_HOME/jre
CLASSPATH=.:\$JRE_HOME/lib:\$JAVA_HOME/lib
PATH=\$PATH:\$JAVA_HOME/bin
export PATH JAVA_HOME CLASSPATH" >> /etc/profile
source /etc/profile


java
javac

echo "end config..."
