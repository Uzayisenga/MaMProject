@echo off
echo Uploading report to Zephyr...

REM Set your Zephyr token
set ZEPHYR_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb250ZXh0Ijp7ImJhc2VVcmwiOiJodHRwczovL3Rlc3RtYW1hcHAuYXRsYXNzaWFuLm5ldCIsInVzZXIiOnsiYWNjb3VudElkIjoiNzEyMDIwOmE4MDJjZmJiLWJhN2YtNDNhNi1hMWUwLTA3ZWE0ZjA5MTdlYiIsInRva2VuSWQiOiIxOWQxYTM3Mi1hMzBiLTQ0YTYtOGFmZC00MzY0MjlkYWY1OTAifX0sImlzcyI6ImNvbS5rYW5vYWgudGVzdC1tYW5hZ2VyIiwic3ViIjoiMjIxZjQyMGMtZjJkNC0zYzQwLTg1OTQtMjU3MzFmZWQyZjY2IiwiZXhwIjoxNzc5MTg1NDc5LCJpYXQiOjE3NDc2NDk0Nzl9.py_qedK8CwLsxVUAStGKB0ZwOsve3qto2_M8LL_Ht_0

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
