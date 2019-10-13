PROJECT:=winter-break
REGION:=europe-west1
NAME:=IsItTheWinterBreakYet

configure:
	gcloud config set project $(PROJECT)
	gcloud config set functions/region $(REGION)

deploy-function: configure
	gcloud functions deploy $(NAME) --entry-point=$(NAME) --memory=128MB --max-instances=5 --runtime go111 --trigger-http

delete-function: configure
	gcloud functions delete $(NAME)

run-function:
	curl -sL bit.ly/is-it-winter-break-yet | jq

.PHONY: configure deploy-function delete-function run-function
