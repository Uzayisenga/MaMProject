@echo off
setlocal

set API_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb250ZXh0Ijp7ImJhc2VVcmwiOiJodHRwczovL3Rlc3RtYW1hcHAuYXRsYXNzaWFuLm5ldCIsInVzZXIiOnsiYWNjb3VudElkIjoiNzEyMDIwOmE4MDJjZmJiLWJhN2YtNDNhNi1hMWUwLTA3ZWE0ZjA5MTdlYiIsInRva2VuSWQiOiI4ZGIzNjY5YS02ZGI2LTQwOTktYWU1OS00OWJhZTIwNGIyMGYifX0sImlzcyI6ImNvbS5rYW5vYWgudGVzdC1tYW5hZ2VyIiwic3ViIjoiMjIxZjQyMGMtZjJkNC0zYzQwLTg1OTQtMjU3MzFmZWQyZjY2IiwiZXhwIjoxNzc4NzYzNzUwLCJpYXQiOjE3NDcyMjc3NTB9.oPFZvlpsTU3XTra9I_3TC3wJuezd_xCTI48t3wlkhLw
set PROJECT_KEY=My Scrum Project
set FILE_PATH=target/cucumber-report.json
set TEST_CYCLE_NAME=Jenkins Test Cycle
set ZEPHYR_URL=https://api.zephyrscale.smartbear.com

echo Uploading report to Zephyr...

curl -X POST "%ZEPHYR_URL%/v2/automations/executions/cucumber" ^
  -H "Authorization: Bearer %API_TOKEN%" ^
  -H "Content-Type: multipart/form-data" ^
  -F "file=@%FILE_PATH%" ^
  -F "projectKey=%PROJECT_KEY%" ^
  -F "testCycle=%TEST_CYCLE_NAME%" ^
  -F "autoCreateTestCases=true"

endlocal
