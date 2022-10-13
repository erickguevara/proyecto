import { Component, OnInit } from '@angular/core';
import { PersonaService, Persona } from '../Services/persona.service';
import { Router,ActivatedRoute } from '@angular/router';
import { NgbModalConfig, NgbModal,  } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-clases-alumno',
  templateUrl: './clases-alumno.component.html',
  styleUrls: ['./clases-alumno.component.css']
})
export class ClasesAlumnoComponent implements OnInit {

  id:any;
  pregunta:any;
  textoDeInput: string = null;
  clases:any=[]; 
  constructor(
    private PersonaService:PersonaService,
    private router:Router,
    private route: ActivatedRoute,
    private modalService: NgbModal,
    config: NgbModalConfig, 
  ) { }

  ngOnInit(): void {
    this.id =this.route.params.pipe(data => data);

    this.listarCursos(this.id._value.id);
  }
  open(content,pregunta) {
    this.modalService.open(content,{ size: 'lg' });
    this.pregunta=pregunta;
    console.log(pregunta);
  }

  closed() {
    this.modalService.dismissAll();  
  }
  listarCursos(id:any){
    this.PersonaService.getUnClases(id).subscribe(
        res=>{
          console.log(res);
          this.clases=res;
          
          
        },
        err=> console.log(err)
      );
  }
  prueba(){
    console.log(1);
    console.log(this.textoDeInput);
  }

  

}
