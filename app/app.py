import warnings
warnings.filterwarnings("ignore", category=FutureWarning)
from flask import abort, render_template, Flask
import logging
import db
import flask

APP = Flask(__name__)

# Start page
@APP.route('/')
def index():
    #return render_template('index.html',message='Hello World!')
    stats = {}
    x = db.execute('SELECT COUNT(*) AS unis FROM UNI').fetchone()
    stats.update(x)
    x = db.execute('SELECT COUNT(*) AS zonas FROM ZONA').fetchone()
    stats.update(x)
    x = db.execute('SELECT COUNT(*) AS cursos FROM CURSOS').fetchone()
    stats.update(x)
    #x = db.execute('SELECT COUNT(*) AS inscritos FROM INSCRITOS').fetchone()
    #stats.update(x)
    x = db.execute('SELECT COUNT(DISTINCT Ano) AS anos FROM ANO_ACADEMICO').fetchone()
    stats.update(x)
    logging.info(stats)
    return render_template('index.html',stats=stats)


# Zonas #Done
@APP.route('/zonas/')
def list_zonas():
    zonas = db.execute(
      '''
      SELECT ZonaId, Nome, Num_Ins 
      FROM ZONA
      ORDER BY ZonaId
      ''').fetchall()
    return render_template('zonas-list.html', zonas=zonas)
  
@APP.route('/zonas/<string:zona>/')
def view_zona(zona):
  if len(zona)<=2:
    zonainfo = db.execute(
      '''
      SELECT Nome,Num_Ins as total
      FROM ZONA 
      WHERE ZonaId = %s
      ''',zona).fetchone()
  else:
    zonainfo = db.execute(
      '''
      SELECT Nome,Num_Ins as total
      FROM ZONA 
      WHERE Nome = %s
      ''',zona).fetchone()
  return render_template('zona.html',zonainfo=zonainfo)


# Ano Academico #Done
@APP.route('/anos/')
def list_anos():
    listall = db.execute(
      '''
      SELECT Ano, CursoId, Num_Ins
      FROM ANO_ACADEMICO 
      ORDER BY Ano DESC,CursoId
      ''').fetchall()
    anos = db.execute(
      '''
      SELECT Ano, SUM(Num_Ins) as total
      FROM ANO_ACADEMICO 
      GROUP BY Ano
      ORDER BY Ano DESC
      ''').fetchall()
    return render_template('anos-list.html', anos=anos, listall=listall)
  
@APP.route('/anos/<int:ano>/')
def view_year_cursos(ano):
  cursos = db.execute(
      '''
      SELECT CURSOS.Nome as nome, ANO_ACADEMICO.Num_Ins as ins
      FROM ANO_ACADEMICO 
      NATURAL JOIN CURSOS
      WHERE ANO_ACADEMICO.Ano = %s 
      ''',ano).fetchall()
  return render_template('ano.html',ano=ano, cursos=cursos)
  

# Inscritos #Done
@APP.route('/inscritos/')
def list_inscritos():
    listall = db.execute(
      '''
      SELECT InsId, Ano, Uni, Tipo, Num_Ins 
      FROM INSCRITOS
      ORDER BY InsId
      ''').fetchall()
    return render_template('inscritos-list.html', listall=listall)
  
@APP.route('/inscritos/<int:id>/')
def get_insinfo(id):
  insinfo = db.execute(
      '''
      SELECT INSCRITOS.InsId,INSCRITOS.Ano,INSCRITOS.Uni,INSCRITOS.Tipo,
      INSCRITOS.Num_Ins as NumIns 
      FROM INSCRITOS 
      WHERE InsId=%s
      ''', id).fetchone()
  return render_template('inscritos.html',insinfo=insinfo)

@APP.route('/inscritos/detailed/<int:id>/')
def get_insinfo_detailed(id):
  insinfo = db.execute(
      '''
      SELECT INSCRITOS.InsId,INSCRITOS.Ano,INSCRITOS.Uni,INSCRITOS.Tipo,
      INSCRITOS.Num_Ins as NumIns,UNI.Num_Ins as UniIns,ZONA.Nome as Zona,ZONA.Num_Ins as ZonaIns 
      FROM INSCRITOS JOIN UNI JOIN ZONA 
      WHERE InsId=%s AND UNI.Nome=INSCRITOS.Uni AND UNI.ZonaId=ZONA.ZonaId
      ''', id).fetchone()

  if insinfo is None:
     abort(404, 'InsId {} does not exist.'.format(id))
  #print(insinfo)
  return render_template('inscritos-detailed.html',insinfo=insinfo)

@APP.route('/inscritos/search/<string:uni>/')
def search_by_uni(uni):
  search = { 'uni': uni }
  uni = '%' + uni + '%'
  searchuni = db.execute(
      ''' 
      SELECT InsId,Ano,Uni,Tipo,Num_Ins 
      FROM INSCRITOS 
      WHERE Uni LIKE %s
      ''', uni).fetchall()
  
  if searchuni is None:
     abort(404, 'Serch {} does not exist.'.format(uni))
     
  #print(searchuni)
  return render_template('inscritos-search.html',search=search,searchuni=searchuni)


# Unis #Done
@APP.route('/unis/')
def list_unis():
    listall = db.execute(
      '''
      SELECT Nome, ZonaId, Num_Ins 
      FROM UNI
      ORDER BY ZonaId, Nome
      ''').fetchall()
    unis = db.execute(
      '''
      SELECT Nome as nome, Num_Ins as ins 
      FROM UNI
      ''').fetchall()
    
    #for d in unis: 
    #  print(d)
    return render_template('unis-list.html', listall=listall, unis=unis)
  
@APP.route('/unis/<string:uni>/')
def view_uniinfo(uni):
    uniinfo = db.execute(
      '''
      SELECT UNI.Nome as uninome,UNI.Num_Ins as ins,ZONA.Nome as zonanome
      FROM UNI JOIN ZONA ON(UNI.ZonaId=ZONA.ZonaId)
      WHERE UNI.Nome=%s
      ''',uni).fetchall()
    
    #print(uniinfo)
    #print(uniinfo[0])
    uniinfo=uniinfo[0]
    return render_template('uni.html',uniinfo=uniinfo)


# Cursos #Done
@APP.route('/cursos/')
def list_cursos():
    listall = db.execute(
      '''
      SELECT CursoId, Nome 
      FROM CURSOS
      ORDER BY CursoId
      ''').fetchall()
    cursos = db.execute(
      '''
      SELECT CURSOS.Nome as nome, SUM(ANO_ACADEMICO.Num_Ins) as ins 
      FROM CURSOS JOIN ANO_ACADEMICO 
      WHERE ANO_ACADEMICO.CursoId=CURSOS.CursoId
      GROUP BY CURSOS.CursoId
      ''').fetchall()
    return render_template('cursos-list.html', listall=listall, cursos=cursos)
  
@APP.route('/cursos/<string:curso>/')
def view_curso_info(curso):
  #print(curso)
  #print(len(curso))
  if len(curso)<=2:
    infoc = db.execute(
        '''
        SELECT CURSOS.Nome as nome, SUM(ANO_ACADEMICO.Num_Ins) AS total 
        FROM ANO_ACADEMICO NATURAL JOIN CURSOS 
        WHERE CURSOS.CursoId = %s 
        GROUP BY CURSOS.NOME
        ''',curso).fetchall()
  else:
    infoc = db.execute(
        '''
        SELECT CURSOS.Nome as nome, SUM(ANO_ACADEMICO.Num_Ins) AS total 
        FROM ANO_ACADEMICO NATURAL JOIN CURSOS 
        WHERE CURSOS.Nome = %s 
        GROUP BY CURSOS.NOME
        ''',curso).fetchall()
  infoc=infoc[0]
  return render_template('cursoinfo.html', infoc=infoc)


# Tipos #Done
@APP.route('/tipos/')
def group_tipos():
    publico = db.execute(
      '''
      SELECT Ano,SUM(Num_Ins) as sum, COUNT(InsId) as count 
      FROM INSCRITOS
      WHERE Tipo="Publico" AND Num_Ins>0
      GROUP BY Ano ORDER BY Ano DESC
      ''').fetchall()
    privado = db.execute(
      '''
      SELECT Ano,SUM(Num_Ins) as sum, COUNT(InsId) as count 
      FROM INSCRITOS
      WHERE Tipo="Privado" AND Num_Ins>0
      GROUP BY Ano ORDER BY Ano DESC
      ''').fetchall()
    
    return render_template('tipos.html', publico=publico, privado=privado)