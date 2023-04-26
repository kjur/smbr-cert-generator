#!/bin/sh

if [ ! -d "../artifacts" ]; then
    mkdir ../artifacts
fi

node certjsontopem root_ca.json ../artifacts/root_ca.pem
node certjsontopem issuing_ca.json ../artifacts/issuing_ca.pem

node certjsontopem individual-validated_legacy.json ../artifacts/individual-validated_legacy.pem
node certjsontopem individual-validated_multipurpose.json ../artifacts/individual-validated_multipurpose.pem
node certjsontopem individual-validated_strict.json ../artifacts/individual-validated_strict.pem

node certjsontopem mailbox-validated_legacy.json ../artifacts/mailbox-validated_legacy.pem
node certjsontopem mailbox-validated_multipurpose.json ../artifacts/mailbox-validated_multipurpose.pem
node certjsontopem mailbox-validated_strict.json ../artifacts/mailbox-validated_strict.pem

node certjsontopem organization-validated_legacy.json ../artifacts/organization-validated_legacy.pem
node certjsontopem organization-validated_multipurpose.json ../artifacts/organization-validated_multipurpose.pem
node certjsontopem organization-validated_strict.json ../artifacts/organization-validated_strict.pem

node certjsontopem sponsored-validated_legacy.json ../artifacts/sponsored-validated_legacy.pem
node certjsontopem sponsored-validated_multipurpose.json ../artifacts/sponsored-validated_multipurpose.pem
node certjsontopem sponsored-validated_strict.json ../artifacts/sponsored-validated_strict.pem

node crljsontoder root_ca_crl.json ../artifacts/root_ca_crl.crl
node crljsontoder issuing_ca_crl.json ../artifacts/issuing_ca_crl.crl
