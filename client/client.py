from flask import Flask

client = Flask(__name__)

@client.route('/')
def home():
    return '<h1>Home!</h1>'

if __name__ == "__main__":
    client.run(host="0.0.0.0", port=8888, debug=True)
