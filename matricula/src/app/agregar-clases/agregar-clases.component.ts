import { Component, OnInit,Input } from '@angular/core';
import {Persona,PersonaService, Grado,clases } from '../Services/persona.service';
import { Router } from '@angular/router';
import { CursoClasesComponent } from '../curso-clases/curso-clases.component';

import { FormBuilder, FormGroup,Validators } from '@angular/forms'
@Component({
  selector: 'app-agregar-clases',
  templateUrl: './agregar-clases.component.html',
  styleUrls: ['./agregar-clases.component.css']
})
export class AgregarClasesComponent implements OnInit {
  last_id :any;
  ListarClases: clases[];
  @Input() curso_id:any;
  public formClases: FormGroup;
  clases: clases={
    id_curso:null,
    clase:'',
    tema:'',
    contenido:'',
  };
  constructor(private formBuilder: FormBuilder,
            private PersonaService:PersonaService,
            private CursoClasesComponent :CursoClasesComponent,
            ) { }

            ngOnInit(): void {
              this.formClases = this.formBuilder.group({
               id_curso: [null],
               clase: ['', [Validators.required]],
               tema: ['', [Validators.required]],
               contenido: ['', [Validators.required]],
             });
           }
         
         
           agregar():any{
              this.clases.id_curso=this.curso_id;
          
                  this.PersonaService.addClases(this.clases).subscribe(res=>{
                     this.last_id=<any>res
            
                       this.formClases.reset();
                      this.CursoClasesComponent.listarCursos(this.curso_id);
                      this.CursoClasesComponent.closed();
                  });
                
            
         
             this.CursoClasesComponent.listarCursos(this.curso_id);
           }
         
          
          
         
}
