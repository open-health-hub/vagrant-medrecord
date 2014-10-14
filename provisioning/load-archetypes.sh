#!/bin/bash
for i in `ls -1 /opt/medrecord/archetypes/archetypes/openehr/*.adl`; do curl -X POST -T $i -H "Content-Type: text/plain" http://localhost:8100/medrecord/v2/archetype; done
