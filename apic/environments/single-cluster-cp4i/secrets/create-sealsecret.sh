#################apic-pipeline-git##################################
oc create secret generic apic-pipeline-git \
--from-literal=GIT_USERNAME=anhldpro \
--from-literal=GIT_PRIV_TOKEN=******* \
--dry-run=true -o yaml > delete-apic-pipeline-git.yaml \
&& \
kubeseal -n ci --controller-name=sealed-secrets --controller-namespace=sealed-secrets -o yaml < delete-apic-pipeline-git.yaml > apic-pipeline-git.yaml \
&& \
rm delete-apic-pipeline-git.yaml

#################apic-config-email-server##################################
oc create secret generic apic-config-email-server \
--from-literal=EMAIL_HOST=<your_email_server_host> \
--from-literal=EMAIL_PORT=<your_email_server_port> \
--from-literal=EMAIL_USERNAME=<your_email_server_username> \
--from-literal=EMAIL_PASSWORD=<your_email_server_password> \
--dry-run=true -o yaml > delete-apic-config-email-server.yaml \
&& \
kubeseal -n ci --controller-name=sealed-secrets --controller-namespace=sealed-secrets -o yaml < delete-apic-config-email-server.yaml > apic-config-email-server.yaml \
&& \
rm delete-apic-config-email-server.yamlc

#################apic-pipeline-provider-org##################################
oc create secret generic apic-pipeline-provider-org \
--from-literal=PROV_ORG_OWNER_USERNAME=admin \
--from-literal=PROV_ORG_OWNER_PASSWORD=admin@123 \
--from-literal=PROV_ORG_OWNER_EMAIL=anhld@seatechit.com.vn \
--from-literal=PROV_ORG_OWNER_FIRST_NAME=anh \
--from-literal=PROV_ORG_OWNER_LAST_NAME=le \
--from-literal=PROV_ORG_TITLE=bu1 \
--dry-run=true -o yaml > delete-apic-pipeline-provider-org.yaml \
&& \
kubeseal -n ci --controller-name=sealed-secrets --controller-namespace=sealed-secrets -o yaml < delete-apic-pipeline-provider-org.yaml > apic-pipeline-provider-org.yaml \
&& \
rm delete-apic-pipeline-provider-org.yaml