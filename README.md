# Heart Disease Prediction Web Application

A Flask-based web application that predicts heart disease risk using a trained KNN machine learning model with comprehensive analytics and visualizations.

## Features

- 🎯 Real-time heart disease prediction
- 📊 Interactive analytics dashboard with multiple charts
- 💯 Model accuracy metrics display (88.59% accuracy)
- 📈 Model performance comparison
- 🔍 Dataset feature distributions
- ⭐ Feature importance visualization
- 💻 Modern, responsive UI with tabs
- 🔒 Input validation
- ⚡ Fast predictions

## Installation

1. Install the required packages:
```bash
pip install -r requirements.txt
```

## Running the Application

1. Start the Flask server:
```bash
python app.py
```

2. Open your web browser and navigate to:
```
http://localhost:5000
```

## Usage

### Prediction Tab
1. Fill in all the patient information fields:
   - Age
   - Sex
   - Chest Pain Type
   - Resting Blood Pressure
   - Cholesterol Level
   - Fasting Blood Sugar
   - Resting ECG
   - Maximum Heart Rate
   - Exercise Induced Angina
   - Oldpeak (ST Depression)
   - ST Slope

2. Click "Predict Heart Disease Risk"

3. View the prediction results with probability scores

### Analytics Tab
- **Model Comparison**: Compare KNN with other ML models (Logistic Regression, Naive Bayes, Decision Tree, SVM)
- **Feature Distributions**: Visualize the distribution of key features in the dataset
- **Feature Importance**: See which medical indicators are most important for prediction

## Model Information

- **Algorithm**: K-Nearest Neighbors (KNN)
- **Accuracy**: 88.59%
- **F1 Score**: 89.86%
- **Features**: 15 medical indicators
- **Preprocessing**: StandardScaler normalization
- **Dataset**: 918 patient records

## Files Structure

```
├── app.py                  # Flask application with prediction & analytics
├── templates/
│   └── index.html         # Frontend with tabs and charts
├── KNN_heart.pkl          # Trained KNN model
├── scaler.pkl             # Feature scaler
├── columns.pkl            # Feature columns
├── heart.csv              # Training dataset
├── requirements.txt       # Python dependencies
└── README.md             # This file
```

## API Endpoints

### GET /
Returns the main HTML page with prediction form and analytics dashboard

### POST /predict

Request body (JSON):
```json
{
  "age": 50,
  "sex": "M",
  "chestPainType": "ATA",
  "restingBP": 120,
  "cholesterol": 200,
  "fastingBS": "0",
  "restingECG": "Normal",
  "maxHR": 150,
  "exerciseAngina": "N",
  "oldpeak": "1.0",
  "stSlope": "Up"
}
```

Response:
```json
{
  "prediction": 0,
  "probability": {
    "no_disease": 75.5,
    "disease": 24.5
  },
  "message": "No Heart Disease",
  "model_accuracy": 88.59
}
```

### GET /get_charts

Returns base64-encoded PNG images of analytics charts:
```json
{
  "model_comparison": "base64_encoded_image",
  "distributions": "base64_encoded_image",
  "feature_importance": "base64_encoded_image"
}
```

## Technologies Used

- **Backend**: Flask, Python
- **ML Libraries**: scikit-learn, joblib
- **Data Processing**: pandas, numpy
- **Visualization**: matplotlib, seaborn
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)

## Model Performance Comparison

| Model | Accuracy | F1 Score |
|-------|----------|----------|
| KNN | 88.59% | 89.86% |
| Logistic Regression | 87.50% | 88.78% |
| SVM | 86.41% | 88.04% |
| Naive Bayes | 86.96% | 87.88% |
| Decision Tree | 75.54% | 76.92% |

## Notes

- The model uses one-hot encoding for categorical variables
- All inputs are validated before prediction
- Charts are generated dynamically using matplotlib
- The application runs in debug mode by default (change for production)
- Analytics charts are loaded on-demand when switching to the Analytics tab

## License

MIT License
