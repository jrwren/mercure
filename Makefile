deploy:
	gcloud functions deploy IsItTheWinterBreakYet --entry-point IsItTheWinterBreakYet --runtime go111 --trigger-http