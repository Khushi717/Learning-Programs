from flask import Flask, render_template, request, redirect, url_for, jsonify

app = Flask(__name__)

users = [
    {"id": 1, "name": "Anjali"},
    {"id": 2, "name": "Rahul"},
    {"id": 3, "name": "Priya"}
]



@app.route("/")
def home():
    return render_template("index.html")

# FORM PAGE
@app.route("/form", methods=["GET", "POST"])
def form():
    error = None

    if request.method == "POST":
        name = request.form.get("name")
        email = request.form.get("email")

        # VALIDATION
        if not name or not email:
            error = "All fields are required!"
        elif "@" not in email:
            error = "Invalid email format!"
        else:
            return redirect(url_for("success", name=name))

    return render_template("form.html", error=error)

@app.route("/success/<name>")
def success(name):
    return render_template("success.html", name=name)


@app.route("/api/users")
def get_users():
    return jsonify(users)

@app.route("/api/user/<int:user_id>")
def get_user(user_id):
    user = next((u for u in users if u["id"] == user_id), None)

    if user:
        return jsonify(user)
    else:
        return jsonify({"error": "User not found"}), 404

if __name__ == "__main__":
    app.run(debug=True)