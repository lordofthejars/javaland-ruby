wget -O asciidoctor-master.zip https://github.com/asciidoctor/asciidoctor/archive/master.zip

unzip asciidoctor-master.zip
cp install-asciidoctor-gem.pom asciidoctor-master/pom.xml
cd asciidoctor-master

ASCIIDOCTOR_VERSION=`grep 'VERSION' ./lib/asciidoctor/version.rb | sed "s/.*'\(.*\)'.*/\1/"`
sed -i "s;<version></version>;<version>$ASCIIDOCTOR_VERSION</version>;" pom.xml
mvn install
cd ..
rm -rf asciidoctor-master*
mvn test -Dasciidoctor.version=$ASCIIDOCTOR_VERSION

<!-- install-asciidoctor-gem.pom -->
<plugin>
	<groupId>de.saumya.mojo</groupId>
	<artifactId>gem-maven-plugin</artifactId>
	<version>${jruby.plugins.version}</version>
	<extensions>true</extensions>
</plugin>
