#!/bin/sh

V1="/local/reference/GPIG.v1.json"

docker run --rm -v "${PWD}:/local" swaggerapi/swagger-codegen-cli-v3 generate \
    -i "$V1" \
    -l html \
    -o /local/gen

sed -i '' 's/&lt;/</g' gen/index.html
sed -i '' 's/&gt;/>/g' gen/index.html
