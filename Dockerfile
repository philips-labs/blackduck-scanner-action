FROM philipssoftware/blackduck:6.7-node

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
