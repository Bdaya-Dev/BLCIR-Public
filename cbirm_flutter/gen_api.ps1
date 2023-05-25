[System.Environment]::SetEnvironmentVariable('_JAVA_OPTIONS', '-Dio.swagger.parser.util.RemoteUrl.trustAll=true -Dio.swagger.v3.parser.util.RemoteUrl.trustAll=true') 
Set-Location .\api
openapi-generator-cli generate -c config.yaml --global-property debugOperations > debug.txt
##--skip-validate-spec
dart pub get
dart pub upgrade
dart run build_runner build --delete-conflicting-outputs
dart format . | out-null
Set-Location ..