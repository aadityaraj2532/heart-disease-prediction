# Heart Disease Prediction - GitHub Push Script
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Heart Disease Prediction - GitHub Push" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Initialize Git
Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Yellow
git init
if ($LASTEXITCODE -ne 0) {
    Write-Host "✗ Error: Git initialization failed" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "✓ Git initialized" -ForegroundColor Green
Write-Host ""

# Step 2: Add files
Write-Host "Step 2: Adding files..." -ForegroundColor Yellow
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Host "✗ Error: Failed to add files" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "✓ Files added" -ForegroundColor Green
Write-Host ""

# Step 3: Create commit
Write-Host "Step 3: Creating commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Heart Disease Prediction Web App with ML analytics"
if ($LASTEXITCODE -ne 0) {
    Write-Host "✗ Error: Commit failed" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "✓ Commit created" -ForegroundColor Green
Write-Host ""

# Step 4: Add remote
Write-Host "Step 4: Adding remote repository..." -ForegroundColor Yellow
git remote add origin https://github.com/aadityaraj2532/heart-disease-prediction.git
if ($LASTEXITCODE -ne 0) {
    Write-Host "Note: Remote might already exist, trying to update..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/aadityaraj2532/heart-disease-prediction.git
}
Write-Host "✓ Remote added" -ForegroundColor Green
Write-Host ""

# Step 5: Rename branch
Write-Host "Step 5: Renaming branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch renamed" -ForegroundColor Green
Write-Host ""

# Step 6: Push
Write-Host "Step 6: Pushing to GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "IMPORTANT: You may be prompted for GitHub credentials" -ForegroundColor Cyan
Write-Host "Username: aadityaraj2532" -ForegroundColor White
Write-Host "Password: Use your Personal Access Token (not your password)" -ForegroundColor White
Write-Host ""
Write-Host "Generate token at: https://github.com/settings/tokens" -ForegroundColor Yellow
Write-Host ""
Read-Host "Press Enter to continue"

git push -u origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "✗ Error: Push failed" -ForegroundColor Red
    Write-Host ""
    Write-Host "Possible solutions:" -ForegroundColor Yellow
    Write-Host "1. Make sure you created the repository on GitHub first" -ForegroundColor White
    Write-Host "2. Check your credentials" -ForegroundColor White
    Write-Host "3. Use Personal Access Token instead of password" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "✓ SUCCESS! Project pushed to GitHub" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "View your repository at:" -ForegroundColor Cyan
Write-Host "https://github.com/aadityaraj2532/heart-disease-prediction" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
