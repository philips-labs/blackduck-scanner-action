FROM philipssoftware/blackduck:6.5-node

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
