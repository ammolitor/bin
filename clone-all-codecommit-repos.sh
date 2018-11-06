#!/usr/bin/env bash

AWS_PROFILE="${1:-default}"
AWS_CMD="aws --profile ${AWS_PROFILE}"

REPOSITORY_NAMES=( $(${AWS_CMD} --output text codecommit list-repositories --query "repositories[].repositoryName" --output text) )

for repository in ${REPOSITORY_NAMES[@]}; do
    repo_http_url=$(${AWS_CMD} --output text codecommit get-repository --repository-name ${repository} --query "repositoryMetadata.cloneUrlHttp")
    git -c credential.helper="!${AWS_CMD} codecommit credential-helper \$@" -c credential.UseHttpPath=true clone ${repo_http_url}
    pushd ${repository}
    git config --add credential.helper "!${AWS_CMD} codecommit credential-helper \$@"
    git config --add credential.UseHttpPath true
    popd
done
