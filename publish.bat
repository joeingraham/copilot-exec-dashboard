@echo off
:: Publish dashboard: commit to GitHub + copy to OneDrive
cd /d C:\Users\joeingraham\exec-dashboard
git add -A
git commit -m "Dashboard update" --allow-empty
git push
copy /Y "index.html" "C:\Users\joeingraham\OneDrive - Microsoft\copilot_exec_dashboard.html"
echo.
echo ✅ Published to GitHub + OneDrive
