from flask import Flask,render_template, request
from flask_mysqldb import MySQL
import MySQLdb.cursors
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
from PIL import ImageFont
from PIL import ImageOps
import os
from flask import jsonify

app = Flask(__name__)
 
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'hms'
 
mysql = MySQL(app)
 
@app.route('/')
def form():
    cursor = mysql.connection.cursor()
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT * FROM tblpatient')
    account = cursor.fetchall()
    print(len(account))
    for i in account:
        if i['Docid']==6:
            print(i)
            a=i['prescription']
            if a==None:
                a=" "
                continue
            pwd=os.getcwd()
            img2 = Image.new("RGB", (500, 500), "white")
            # img2 = Image.open(pwd+'\images\\backdround3.jpeg')
            img = img2.copy()
            I1 = ImageDraw.Draw(img)
            I1.text((20, 20), "Doctor's Prescription\n"+a, fill =(255, 0, 0))
            img.save(pwd+'\images\\background2.jpeg')
            img = ImageOps.scale(img, 2)
            im2 = Image.open(pwd+'\images\\6sigpic.png')
            
            im1 = Image.open(pwd+'\images\\background2.jpeg')
            back_im = im1.copy()
            back_im.paste(im2, (200, 200))
            back_im.show()
            back_im.save(pwd+'\images\doctorpresc2.jpg', quality=95)
            return jsonify({"commit":"TRUE"})



        
 
app.run(host='0.0.0.0', port=5000)