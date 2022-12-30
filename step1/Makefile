.PHONY: start
build:
	rm -rf bin/lambda*	
	
	cd lambda1 && go build -o ../bin/lambda1 main.go
	cd ./bin/ && zip lambda1.zip lambda1
	
	cd lambda2 && go build -o ../bin/lambda2 main.go
	cd ./bin/ && zip lambda2.zip lambda2

plan: 
	cd infra && terraform plan

apply:
	cd infra && terraform apply

destroy:
	cd infra && terraform destroy	