@echo off
echo Uploading report to Zephyr...

REM The ZEPHYR_TOKEN environment variable is provided by Jenkins' withCredentials block.
REM DO NOT hardcode the token here, as it overwrites the secure credential.

REM Look for any Surefire report in target/surefire-reports
for %%f in (target\surefire-reports\TEST-*.xml) do (
    set REPORT_PATH=%%f
)

REM Upload only if report file is found
if defined REPORT_PATH (
    echo Found test report: %REPORT_PATH%
    curl -X POST https://api.zephyrscale.smartbear.com/v2/automations/executions/junit ^
      -H "Authorization: Bearer %ZEPHYR_TOKEN%" ^
      -H "Content-Type: multipart/form-data" ^
      -F "file=@%REPORT_PATH%"
) else (
    echo ERROR: No test report found in target\surefire-reports\
    exit /b 1
)
