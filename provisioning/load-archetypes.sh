#!/bin/bash
cd /opt/medrecord/archetypes
mvn install
cd /opt/medrecord/java
./gradlew vendor
./gradlew build
./gradlew integrationTest
./gradlew tomcatRunWar &
for i in `ls -1 /opt/medrecord/archetypes/archetypes/openehr/*.adl`; do curl -X POST -T $i -H "Content-Type: text/plain" http://localhost:8100/medrecord/v2/archetype; done
