
.PHONY: create-s3
create-s3:
		aws cloudformation deploy \
		--template-file bucket.yml \
		--stack-name $(env)-bucket \
		--capabilities CAPABILITY_NAMED_IAM \
		--no-fail-on-empty-changeset \
		--profile $(profile) \
		--parameter-overrides \
			Environment=$(env)