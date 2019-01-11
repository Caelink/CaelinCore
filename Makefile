new-version: guard-VERSION
	git tag ${VERSION}
	git push --tags
	pod repo push CaelinPods CaelinCore.podspec


guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Environment variable $* not set"; \
		exit 1; \
	fi
