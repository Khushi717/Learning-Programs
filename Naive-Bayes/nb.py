from sklearn.feature_extraction.text import CountVectorizer
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import MultinomialNB
from sklearn.metrics import accuracy_score

# 🔹 Step 1: Dataset (messages)
messages = [
    "win money now",
    "earn cash fast",
    "hello friend how are you",
    "project meeting tomorrow",
    "win cash prize",
    "let's discuss project"
]

# Labels (1 = Spam, 0 = Not Spam)
labels = [1, 1, 0, 0, 1, 0] 

# 🔹 Step 2: Convert text → numbers
vectorizer = CountVectorizer()
X = vectorizer.fit_transform(messages)

y = labels

# 🔹 Step 3: Train-test split
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

# 🔹 Step 4: Create model
model = MultinomialNB()

# 🔹 Step 5: Train model
model.fit(X_train, y_train)

# 🔹 Step 6: Predict
y_pred = model.predict(X_test)

# 🔹 Step 7: Accuracy
print("Accuracy:", accuracy_score(y_test, y_pred))

# 🔹 Step 8: Test on new message
new_msg = ["win money prize"]
new_X = vectorizer.transform(new_msg)

prediction = model.predict(new_X)

print("Prediction:", "Spam" if prediction[0] == 1 else "Not Spam")