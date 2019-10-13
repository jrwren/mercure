REGION:=europe-west1

deploy-function:
	gcloud functions deploy IsItTheWinterBreakYet \
		--entry-point IsItTheWinterBreakYet \
		--region=$(REGION) \
		--memory=128MB \
		--max-instances=5 \
		--runtime go111 \
		--trigger-http

delete-function:
	gcloud functions delete IsItTheWinterBreakYet --region=$(REGION)

.PHONY: deploy-function delete-function
