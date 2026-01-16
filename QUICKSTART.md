# 🚀 Quick Start Guide

Get your Heart Disease Prediction app running in 3 minutes!

---

## ⚡ Super Quick Start

```bash
# 1. Install dependencies (if not already installed)
pip install Flask pandas numpy scikit-learn joblib matplotlib seaborn

# 2. Start the server
python app.py

# 3. Open your browser
# Go to: http://localhost:5000
```

**That's it!** 🎉

---

## 📋 What You'll See

### 1. **Home Page**
- Purple gradient background
- Model accuracy banner showing 88.59%
- Two tabs: Prediction and Analytics

### 2. **Prediction Tab** (Default)
- Form with 11 medical input fields
- "Predict Heart Disease Risk" button
- Results appear below after submission

### 3. **Analytics Tab**
- Click "📊 Analytics" button
- Wait 2-3 seconds for charts to load
- View 3 comprehensive visualizations

---

## 🎯 Try Your First Prediction

### Example Patient Data:
```
Age: 55
Sex: Male
Chest Pain Type: Atypical Angina
Resting BP: 140
Cholesterol: 250
Fasting Blood Sugar: Yes
Resting ECG: Normal
Max Heart Rate: 150
Exercise Angina: No
Oldpeak: 1.5
ST Slope: Flat
```

**Expected Result**: Moderate to high disease probability

---

## 📊 View Analytics

1. Click the **"📊 Analytics"** tab
2. Wait for charts to load
3. Explore:
   - Model comparison chart
   - Feature distributions
   - Feature importance

---

## 🛠️ Troubleshooting

### Server won't start?
```bash
# Check if port 5000 is in use
# On Windows:
netstat -ano | findstr :5000

# Kill the process if needed, then restart
python app.py
```

### Missing dependencies?
```bash
pip install -r requirements.txt
```

### Charts not loading?
- Wait a few seconds (they generate on-demand)
- Check terminal for errors
- Refresh the page

---

## 📚 Next Steps

- Read **README.md** for full documentation
- Check **USAGE_GUIDE.md** for detailed instructions
- Review **FEATURES.md** for feature descriptions
- See **PROJECT_SUMMARY.md** for technical details

---

## 🎓 Learn More

### Understanding the Results
- **Green box** = No disease detected
- **Red box** = Disease detected
- **Percentages** = Probability scores

### Model Information
- **Algorithm**: K-Nearest Neighbors
- **Accuracy**: 88.59%
- **F1 Score**: 89.86%

---

## 💡 Pro Tips

1. **Fill all fields** - All inputs are required
2. **Use realistic values** - Check normal ranges
3. **Try different scenarios** - See how risk changes
4. **Explore analytics** - Understand the model better
5. **Read the docs** - Learn about each feature

---

## 🎉 You're Ready!

Your heart disease prediction app is now running and ready to use.

**Access it at**: http://localhost:5000

**Have fun predicting!** 🏥💓

---

*Need help? Check the other documentation files or review the Flask logs in your terminal.*
