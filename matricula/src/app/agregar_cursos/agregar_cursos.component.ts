import { Component, OnInit } from '@angular/core';
import {Persona,PersonaService, Grado,cursos } from '../Services/persona.service';
import { Router } from '@angular/router';
import { CursosComponent } from '../cursos/cursos.component';

import { FormBuilder, FormGroup,Validators } from '@angular/forms'
@Component({
  selector: 'app-agregar_cursos',
  templateUrl: './agregar_cursos.component.html',
  styleUrls: ['./agregar_cursos.component.css']

})
export class AgregarCursosComponent implements OnInit {
  
  last_id :any;
  ListarGrado: Grado[];
  edad :any; 
  uploadedFiles: Array < File > ;
  public formCursos: FormGroup;
  cursos: cursos={
    id_cursos :null,
    nombre_cursos:'',
    url:'',
  };
  constructor(private formBuilder: FormBuilder,private PersonaService:PersonaService,private router:Router,private CursosComponent:CursosComponent) {


   }

  ngOnInit(): void {
     this.formCursos = this.formBuilder.group({
      nombre_cursos: ['', [Validators.required,Validators.maxLength( 40 )]],
      url: ['', [Validators.required]],

    });
  }


  agregar():any{
  	delete this.cursos.id_cursos;
    const formData = new FormData();
    formData.append("uploads[]", this.uploadedFiles[0], this.uploadedFiles[0].name);
    this.PersonaService.umpload(formData).subscribe((res)=>{
      this.cursos.url=<any>res;
        this.PersonaService.addCursos(this.cursos).subscribe(res=>{
           this.last_id=<any>res
  
             this.formCursos.reset();
             this.CursosComponent.listarCursos();
             this.CursosComponent.closed();
        });
      
      });
  

    //
     this.CursosComponent.listarCursos();
  }

 
 
  public onFileSelected(event: any) {
    this.uploadedFiles = event.target.files;
  }

}
