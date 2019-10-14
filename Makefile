PROJECT:=winter-break
REGION:=europe-west1
NAME:=IsItTheWinterBreakYet
FUNCTION_URL:=https://$(REGION)-$(PROJECT).cloudfunctions.net/$(NAME)

configure:
	gcloud config set project $(PROJECT)
	gcloud config set functions/region $(REGION)

deploy-function: configure
	gcloud functions deploy $(NAME) --entry-point=$(NAME) --memory=128MB --max-instances=5 --runtime go111 --trigger-http

delete-function: configure
	gcloud functions delete $(NAME)

get-function-url:
	@echo $(FUNCTION_URL)

run-function:
	@curl -sL $(FUNCTION_URL) | jq

.PHONY: configure deploy-function delete-function get-function-url run-function
