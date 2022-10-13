import { Component, OnInit,Input } from '@angular/core';
import {preguntas,PersonaService } from '../Services/persona.service';
import { Router } from '@angular/router';
import { CursoClasesComponent } from '../curso-clases/curso-clases.component';

import { FormBuilder, FormGroup,Validators } from '@angular/forms'

@Component({
  selector: 'app-preguntas',
  templateUrl: './preguntas.component.html',
  styleUrls: ['./preguntas.component.css']
})
export class PreguntasComponent implements OnInit {
  ListarPreguntas: preguntas[];
  @Input() curso_id:any;
  @Input() id_clase:any;
  public PreguntasClases: FormGroup;
  uploadedFiles: Array < File > ;
  uploadedFiles2: Array < File > ;
  uploadedFiles3: Array < File > ;
  uploadedFiles4: Array < File > ;
  clases: preguntas={
    id_clase:null,
    descripcion:'',
    alternativa1:'',
    alternativa2:'',
    alternativa4:'',
    alternativa3:'',
  };
  constructor(private formBuilder: FormBuilder,
    private PersonaService:PersonaService,
    private CursoClasesComponent :CursoClasesComponent) { }

  ngOnInit(): void {
    this.PreguntasClases = this.formBuilder.group({
      id_clase: [null],
      descripcion: ['', [Validators.required]],
      alternativa2: ['', [Validators.required]],
      alternativa1: ['', [Validators.required]],
      alternativa3: ['', [Validators.required]],
      alternativa4: ['', [Validators.required]],
    });
  }
  agregar():any{
    const formData = new FormData();

    formData.append("uploads[]", this.uploadedFiles[0], this.uploadedFiles[0].name);
    this.PersonaService.umpload(formData).subscribe((res)=>{
      this.clases.alternativa1=<any>res;
      formData.append("uploads[]", this.uploadedFiles2[0], this.uploadedFiles2[0].name);
      this.PersonaService.umpload(formData).subscribe((res)=>{
        this.clases.alternativa2=<any>res;
        formData.append("uploads[]", this.uploadedFiles3[0], this.uploadedFiles3[0].name);
      this.PersonaService.umpload(formData).subscribe((res)=>{
        this.clases.alternativa3=<any>res;
        formData.append("uploads[]", this.uploadedFiles4[0], this.uploadedFiles4[0].name);
        this.PersonaService.umpload(formData).subscribe((res)=>{
          this.clases.alternativa4=<any>res;
          this.clases.id_clase=this.id_clase;
          
          this.PersonaService.addPregunta(this.clases).subscribe(res=>{
           
               this.PreguntasClases.reset();
              this.CursoClasesComponent.listarCursos(this.curso_id);
              this.CursoClasesComponent.closed();
          });
          });
        });
        });
    });
     
      
   
 
    
      console.log(this.clases);

 this.CursoClasesComponent.listarCursos(this.curso_id);
    
  }

  public onFileSelected(event: any) {
    this.uploadedFiles = event.target.files;
  }
  public onFileSelected2(event: any) {
    this.uploadedFiles2 = event.target.files;
  }
  public onFileSelected3(event: any) {
    this.uploadedFiles3 = event.target.files;
  }
  public onFileSelected4(event: any) {
    this.uploadedFiles4 = event.target.files;
  }

}
