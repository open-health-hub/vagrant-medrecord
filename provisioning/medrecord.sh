#!/bin/bash
cd /opt/medrecord/archetypes
mvn install
cd /opt/medrecord/java
./gradlew vendor
./gradlew build
./gradlew integrationTest
./gradlew tomcatRunWar &
