@echo off
echo ========================================
echo Heart Disease Prediction - GitHub Push
echo ========================================
echo.

echo Step 1: Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo Error: Git initialization failed
    pause
    exit /b 1
)
echo ✓ Git initialized
echo.

echo Step 2: Adding files...
git add .
if %errorlevel% neq 0 (
    echo Error: Failed to add files
    pause
    exit /b 1
)
echo ✓ Files added
echo.

echo Step 3: Creating commit...
git commit -m "Initial commit: Heart Disease Prediction Web App with ML analytics"
if %errorlevel% neq 0 (
    echo Error: Commit failed
    pause
    exit /b 1
)
echo ✓ Commit created
echo.

echo Step 4: Adding remote repository...
git remote add origin https://github.com/aadityaraj2532/heart-disease-prediction.git
if %errorlevel% neq 0 (
    echo Note: Remote might already exist, trying to update...
    git remote set-url origin https://github.com/aadityaraj2532/heart-disease-prediction.git
)
echo ✓ Remote added
echo.

echo Step 5: Renaming branch to main...
git branch -M main
echo ✓ Branch renamed
echo.

echo Step 6: Pushing to GitHub...
echo.
echo IMPORTANT: You may be prompted for GitHub credentials
echo Username: aadityaraj2532
echo Password: Use your Personal Access Token (not your password)
echo.
echo Generate token at: https://github.com/settings/tokens
echo.
pause

git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo Error: Push failed
    echo.
    echo Possible solutions:
    echo 1. Make sure you created the repository on GitHub first
    echo 2. Check your credentials
    echo 3. Use Personal Access Token instead of password
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✓ SUCCESS! Project pushed to GitHub
echo ========================================
echo.
echo View your repository at:
echo https://github.com/aadityaraj2532/heart-disease-prediction
echo.
pause
