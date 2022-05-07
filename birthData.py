#生成模拟数据

import xlwt
import random

#随机种子
random.seed()

#名字库
N1=['张','金','李','王','赵','余','林','袁','赵','钱',
    '孙','李','周','吴','郑','萧','冯','陈','褚','卫',
    '蒋','沈','韩','杨','朱','秦','尤','许','何','吕',
    '施','张','孔','曹','严','华','金','魏','陶','姜',
    '戚','谢','邹','喻','水''冉','熊','秦','范','叶','姚']

N2=['玉','明','龙','芳','军','玲','帅','云','文','天',
    '娟','英','华','慧','巧','美','娜','静','淑','惠',
    '珠','翠','雅','芝','玉','萍''强','平','保','东',
    '文','辉','力','明','永','健','世','广','志','义',
    '兴','良','海','山','仁','波','宁','贵','洋','平','发']

N3=['','立','玲','','国','','雪','阳','凯','歌',
    '易','仁','器','义','礼','智','信','友','上','都',
    '卡','被','好','无','九','加','','电','金',
    '马','钰','玉','忠','','明','永','健','世','广','',
    '志','义','兴','良','海','','山','仁','波','宁','贵','渠','']
#print(len(N3))
#电子邮箱库
M =["@qq.com","@swu.edu.cn","@163.com"]

#政治面貌库
P = ["中共党员","共青团员","民盟党员","九三学社党员","群众"]

#学院库
C = ["商贸学院","动物科学学院","动物医学学院","水产学院"]

#学历库
D = ["本科","硕士","博士"]

#模拟电话号
telNumber_data = []
for i in range(50):
    tel_int=15340416217+i*i+50000*i
    tel_str=str(tel_int)
    telNumber_data.append(tel_str)
    #print(tel_str)
#print(telNumber_data)

#模拟密码
passWord_data = []
for i in range(50):
    passWord_int=123456+i
    passWord_str=str(passWord_int)
    passWord_data.append(passWord_str)
#print(passWord_data)

#模拟姓名
name_data = []

for i in range(50):
    r = int(random.random()*50)
    if r > 49:
        r=49
    name_str=N1[r]+N2[r]+N3[r]
    #print("r = ",r)
    name_data.append(name_str)
#print(name_data)

#模拟电子邮箱
mail_data = []
for i in range(50):
    m = int(random.random()*3)
    if m == 3:
        m=2
    mail_int=123456+i*i*i
    mail_str=str(mail_int)
    mail_data.append(mail_str+M[m])
#print(mail_data)


#模拟性别
sex_data = []
for i in range(50):
    s = int(random.random()*2)
    if s == 0:
        sex_str='男'
    else:
        sex_str='女'
    sex_data.append(sex_str)
#print(sex_data)

#模拟年龄
age_data = []
for i in range(50):
    a = int(random.random()*30)
    if a <18:
        a=18
    age_int = a
    age_data.append(age_int)
#print(age_data)

#模拟学号
idCard_data = []
for i in range(50):
    idCard_int = 2022010001+i
    idCard_str = str(idCard_int)
    idCard_data.append(idCard_str)
#print(idCard_data)

#模拟政治面貌
political_data = []
for i in range(50):
    p = int(random.random()*5)
    if p>4:
        p=4
    political_data.append(P[p])
#print(political_data)

#模拟学院
college_data = []
for i in range(50):
    c = int(random.random()*4)
    if c >3:
        c=3
    college_data.append(C[c])
#print(college_data)

#模拟学历
degree_data = []
for i in range(50):
    d = int(random.random()*3)
    if d > 2:
        d=2
    degree_data.append(D[d])
#print(degree_data)

book = xlwt.Workbook(encoding='utf-8',style_compression=0)
sheet = book.add_sheet('鱼鳞系统用户模拟数据生成',cell_overwrite_ok=True)

col = ["id","telNumber","passWord","name","mail","sex","age","idCard","political","college","degree"]
for i in range(11):
    sheet.write(0,i,col[i])

dataList = []
for i in range(50):
    dataList.append([i+50,telNumber_data[i],passWord_data[i],name_data[i],mail_data[i],
                     sex_data[i],age_data[i],idCard_data[i],political_data[i],
                     college_data[i],degree_data[i]])
# datalist = [['www','www图片','西游记','xiyouji','100分','0人','很好','超级棒'],
#             ['www2','www图片2','西游记2','xiyouji2','1000分','1人','很棒','一级棒']
#             ['www2','www图片3','西游记3','xiyouji3','1000分','2人','很棒','一级棒']]
for i in range(50):
        data = dataList[i]
        for j in range(0,11):
            sheet.write(i+1,j,data[j])


savepath = 'D:/TestFiles/user_data.xls'
book.save(savepath)