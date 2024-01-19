from flask import Flask, request,render_template
import pickle
app=Flask(__name__)
@app.route('/')
def hello_world():
    return render_template("login.html")
database={'cmrit':'123','mallareddy':'abc','hyd':'abc'}
@app.route('/form_login',methods=['POST','GET'])
def login():
    name1 = request.form['Username']
    password = request.form['Password']

    if name1 not in database:
        return render_template('login.html', info='Invalid User')
    else:
        if database[name1] != password:
            return render_template('login.html', info='Invalid Password')
        else:
            return render_template('home.html', name=name1)
if __name__=='__main__':
	app.run()
