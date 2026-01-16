import requests
import json

# Test data
test_patient = {
    "age": "55",
    "sex": "M",
    "chestPainType": "ATA",
    "restingBP": "140",
    "cholesterol": "250",
    "fastingBS": "1",
    "restingECG": "Normal",
    "maxHR": "150",
    "exerciseAngina": "N",
    "oldpeak": "1.5",
    "stSlope": "Flat"
}

print("Testing Heart Disease Prediction API...")
print("\nTest Patient Data:")
print(json.dumps(test_patient, indent=2))

try:
    response = requests.post(
        'http://localhost:5000/predict',
        json=test_patient,
        headers={'Content-Type': 'application/json'}
    )
    
    if response.status_code == 200:
        result = response.json()
        print("\n✅ Prediction Successful!")
        print(f"\nResult: {result['message']}")
        print(f"Prediction: {result['prediction']}")
        print(f"\nProbabilities:")
        print(f"  No Disease: {result['probability']['no_disease']:.2f}%")
        print(f"  Disease: {result['probability']['disease']:.2f}%")
    else:
        print(f"\n❌ Error: {response.status_code}")
        print(response.json())
        
except requests.exceptions.ConnectionError:
    print("\n❌ Error: Could not connect to the server.")
    print("Make sure the Flask app is running (python app.py)")
except Exception as e:
    print(f"\n❌ Error: {str(e)}")
