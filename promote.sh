#!/bin/bash

echo "promoting the new version ${VERSION} to downstream repositories"

echo jx step create pr regex --regex '\s+PreviewVersion = "(?P<version>.*)"' --version ${VERSION} --files pkg/plugins/versions.go --repo https://github.com/jenkins-x/jx-cli.git
