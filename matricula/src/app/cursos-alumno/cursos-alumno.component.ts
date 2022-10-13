import { Component,Output, OnInit } from '@angular/core';
import { PersonaService, Persona } from '../Services/persona.service';
import { NgbModalConfig, NgbModal,  } from '@ng-bootstrap/ng-bootstrap';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-cursos-alumno',
  templateUrl: './cursos-alumno.component.html',
  styleUrls: ['./cursos-alumno.component.css']
})
export class CursosAlumnoComponent implements OnInit {

  cursos: []; 
  id:any;
  ideliminar:any;
  filterPost='';
  constructor(
    private PersonaService:PersonaService,
    private router:Router,
    private route: ActivatedRoute,
    config: NgbModalConfig, 
    private modalService: NgbModal) { 
    config.backdrop = 'static';
    config.keyboard = false;
  }

  ngOnInit(): void {
    this.id =this.route.params.pipe(data => data);
    this.listarCursos();

  }

  listarCursos(){
    this.PersonaService.getCursos().subscribe(
        res=>{
          this.cursos=<any>res;
          
          
        },
        err=> console.log(err)
      );
  }
  open(content) {
    this.modalService.open(content);
  }
  closed() {
    this.modalService.dismissAll();  
  }
  eliminar(id:number){
    this.ideliminar=id;
  }
  eliminarRegistro(){
    this.PersonaService.deleteCursos(this.ideliminar).subscribe(
      res=>{
        this.listarCursos();

      },
      err=>console.log(err)
      );
  }
  clases(id:number){
    this.router.navigate(['/clases_alumno/'+id])

  }
}
