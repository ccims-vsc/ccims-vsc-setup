cd /tmp
git clone https://github.com/ccims/ccims-backend-gql.git
cd ccims-backend-gql
git checkout dev
cp /home/ccims/ccims-vsc-setup/config/postgres.json config/postgres.json
cp /home/ccims/ccims-vsc-setup/config/api.json config/api.json
cp /home/ccims/ccims-vsc-setup/config/markdown.json config/markdown.json
cp /home/ccims/ccims-vsc-setup/config/common.json config/common.json
npm i
npm run database-file
npm i -g typescript
tsc
cp -R /tmp/ccims-backend-gql /home/ccims/ccims-backend-gql
cd /home/ccims/ccims-backend-gql
cp ../ccims-vsc-setup/docker-compose.yaml docker-compose.yaml
cd ..
git clone https://github.com/ccims-vsc/ccims-testdata.git
cd ccims-testdata
npm i
tsc
cd /tmp
git clone https://github.com/ccims-vsc/ccims-vsc.git
cd ccims-vsc
npm run init-all
npm i -g vsce
vsce package
cd /home/ccims/ccims-vsc
cp /tmp/ccims-vsc/*.vsix extension.vsix
git clone https://github.com/ccims-vsc/example-project.git