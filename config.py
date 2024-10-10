ambiente = "teste"


if ambiente == "teste":
    DB_HOST = 'localhost'
    DB_USER = 'root'
    DB_PASSWORD = 'senai'
    DB_NAME = 'blog'

if ambiente == 'producao':
    DB_HOST = 'Pietro15.mysql.pythonanywhere-services.com'
    DB_USER = 'Pietro15'
    DB_PASSWORD = 'MacarrãoComLasanha'
    DB_NAME = 'Pietro15$blog'
    


SECRET_KEY = 'blog'
MASTER_EMAIL = 'pietro@gmail.com'
MASTER_PASSWORD = 'pietro123'    