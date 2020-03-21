#!/bin/sh -l

echo /app/detect.sh --blackduck.url=${INPUT_URL} \
  --blackduck.api.token=${INPUT_TOKEN} \
  --blackduck.trust.cert=true \
  --detect.policy.check=true \
  --detect.source.path=/code \
  --detect.project.name=${INPUT_PROJECTNAME} \
  --detect.project.version.name=${INPUT_VERSIONPREFIX}
