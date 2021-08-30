version=$(cat ./charts/Chart.yaml|grep version: | cut -d ' ' -f2)
echo $version
helm package charts/. ;helm template test generate-secret-${version}.tgz --debug && mv *.tgz ./docs/charts/. ; cd docs/charts/; helm repo index .; cd ../..
