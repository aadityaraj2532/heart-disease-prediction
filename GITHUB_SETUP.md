# GitHub Repository Setup Guide

Follow these steps to create a GitHub repository and push your project.

## Step 1: Create Repository on GitHub

1. Go to: https://github.com/new
2. Or click the "+" icon in the top right → "New repository"

**Repository Settings:**
- **Repository name**: `heart-disease-prediction`
- **Description**: `AI-powered heart disease prediction web app using Flask and KNN ML model (88.59% accuracy)`
- **Visibility**: Public (or Private if you prefer)
- **DO NOT** initialize with README, .gitignore, or license (we already have these)

3. Click "Create repository"

## Step 2: Initialize Git and Push (Run these commands)

Open your terminal in the project directory and run:

```bash
# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: Heart Disease Prediction Web App with ML analytics"

# Add your GitHub repository as remote
git remote add origin https://github.com/aadityaraj2532/heart-disease-prediction.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Verify

Go to: https://github.com/aadityaraj2532/heart-disease-prediction

You should see all your files!

---

## Alternative: Using GitHub CLI (if installed)

```bash
# Login to GitHub
gh auth login

# Create repository and push
gh repo create heart-disease-prediction --public --source=. --remote=origin --push

# Description
gh repo edit --description "AI-powered heart disease prediction web app using Flask and KNN ML model (88.59% accuracy)"
```

---

## Troubleshooting

### If you get authentication errors:
1. Use Personal Access Token instead of password
2. Generate token at: https://github.com/settings/tokens
3. Use token as password when prompted

### If remote already exists:
```bash
git remote remove origin
git remote add origin https://github.com/aadityaraj2532/heart-disease-prediction.git
```

### If you need to force push:
```bash
git push -u origin main --force
```

---

## What Will Be Uploaded

✅ app.py (Flask backend)
✅ templates/index.html (Frontend)
✅ requirements.txt (Dependencies)
✅ Model files (.pkl files)
✅ heart.csv (Dataset)
✅ README.md (Documentation)
✅ QUICKSTART.md (Quick guide)
✅ test_app.py (Testing)
✅ .gitignore (Git ignore rules)

❌ .vscode/ (Excluded by .gitignore)
❌ __pycache__/ (Excluded by .gitignore)

---

## Repository Topics (Add these on GitHub)

After pushing, add these topics to your repository:
- machine-learning
- flask
- python
- healthcare
- knn
- heart-disease
- prediction
- web-app
- scikit-learn
- data-science

---

## README Preview

Your README.md will be displayed on the repository homepage with:
- Project description
- Features
- Installation instructions
- Usage guide
- API documentation
- Model performance metrics

---

Good luck! 🚀
