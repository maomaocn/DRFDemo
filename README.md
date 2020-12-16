# DRFDemo
自定义权限管理系统案例，本系统未注释，需要有一定的代码阅读基础


首先解说一下本系统功能：
本系统通过角色来控制权限，主要思路为：用户--角色--权限

在本系统里面，用户与角色为多对一的关系，即一个角色可以对应多个用户，一个用户只有一个角色，如果想实现一个用户有多个角色，可以对本代码进行改写。

角色和权限是多对多的关系，即：一个角色可以有多个权限，一个权限也可以对应多个角色。

本系统写了一个案例，权限归类可分为四部分：crud (增读更删）
在进行下面操作之前，需要进行登录，本文采取的是JWT方法：
http://127.0.0.1:8000/login/

传入参数：username:admin
        password:ll123456
        
以文章的权限为例

http://127.0.0.1:8000/article/

get方法：
{
    "count": 6,
    "next": "http://127.0.0.1:8000/article/?p=2",
    "previous": null,
    "results": [
        {
            "id": 12,
            "title": "猜测188",
            "content": "heiheihei",
            "is_delete": false
        },
        {
            "id": 11,
            "title": "猜测120",
            "content": "hahaha",
            "is_delete": false
        }
    ],
    "status": 200
}

post 方法：根据需要传入你想传入的参数，本案例传的title
{
    "status": 200,
    "msg": "ok",
    "data": ""
}

put 方法：必传 id ，其他内容可以根据自己需要进行传参数

{
    "status": 200,
    "msg": "ok",
    "data": ""
}

delete 方法：必传 id ，如果需要验证数据可以根据自己需要进行传参数改写get_object_del 方法，或者改写delete 方法

{
    "status": 200,
    "msg": "ok",
    "data": ""
}

