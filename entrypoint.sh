#!/bin/sh -l

/app/detect.sh --blackduck.url=${INPUT_URL} \
  --blackduck.api.token=${INPUT_TOKEN} \
  --blackduck.trust.cert=true \
  --detect.policy.check=true \
  --detect.project.name=${INPUT_PROJECTNAME} \
  --detect.source.path=${INPUT_SOURCEPATH:-/github/home} \
  --detect.project.version.name=${INPUT_VERSIONPREFIX} \
  ${INPUT_EXTRAARGS}
