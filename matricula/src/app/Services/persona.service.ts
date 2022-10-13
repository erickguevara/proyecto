import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
@Injectable({
  providedIn: 'root'
})
export class PersonaService {
  url='/api';

  constructor(private http: HttpClient) { }
  
  getPersonas(){
  	return this.http.get(this.url);
  }
   
  getCursos( ){
    return this.http.get(this.url+'/cursos');
}
getUnClases(id:any){
  return this.http.get(this.url+'/clases/'+id);
}

  getUnPersona(id:string){
  	return this.http.get(this.url+'/'+id);
  }

  addPersona(persona:Persona){

  	
    return this.http.post(this.url, persona);
  }
  addCursos(cursos:cursos){

    return this.http.post(this.url+'/cursos', cursos);
  }
  addPregunta(preguntas:preguntas){

    return this.http.post(this.url+'/pregunta', preguntas);
  }
  addClases(clases:clases){

    return this.http.post(this.url+'/clases', clases);
  }
  validUSer(user:user){

    return this.http.post(this.url+'/user', user);
  }

  deletePersona(id:number){
  	return this.http.delete(this.url+'/'+id);
  }
  deleteCursos(id:number){
  	return this.http.delete(this.url+'/cursos/'+id);
  }

  editPersona(id:number, persona:Persona){
  	return this.http.put(this.url+'/'+id, persona);
  }

  umpload( formData){
       return this.http.post(this.url+'/upload', formData);
  }
  grado( ){
       return this.http.get(this.url+'/grado');
  }
  detalle_cronograma(id:number,id_grado:number ){
       return this.http.post(this.url+'/detalle_cronograma', {id:id,id_grado:id_grado});
  }


}

export interface Persona{
	nid_persona?:number;
	nom_persona?:string;
	ape_pare_pers?:string;
	ape_mate_pers?:string;
	nid_grado?:number;
	fecha_naci?:string;
	foto_ruta?:string;
  dni?:string;
  
}
export interface PersonaLogin{
	nid_persona?:number;
	nom_persona?:string;
	ape_pare_pers?:string;
	ape_mate_pers?:string;
	nid_grado?:number;
	fecha_naci?:string;
	foto_ruta?:string;
  tipo?:number;
}

export interface Grado{
  nid_grado?:number;
  desc_grado?:string;
  nivel?:string;
 
}
export interface clases{
  id_curso?:number;
  clase?:string;
  tema?:string;
  contenido?:string;
}
export interface preguntas{
  id_clase?:number;
  descripcion?:string;
  alternativa1?:string;
  alternativa2?:string;
  alternativa4?:string;
  alternativa3?:string;
}
export interface cursos{
  id_cursos ?:number;
  nombre_cursos?:string;
  url?:string;
 
}
export interface user{
  user ?:string;
  contrasena?:string;
 
}