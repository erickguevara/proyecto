import { Component,Output, OnInit } from '@angular/core';
import { PersonaService, Persona } from '../Services/persona.service';
import { NgbModalConfig, NgbModal,  } from '@ng-bootstrap/ng-bootstrap';
import { Router,ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-cursos',
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css'],
  providers: [NgbModalConfig, NgbModal]
})
export class CursosComponent implements OnInit {
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
    console.log(this.id._value.id);
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
    console.log(id);
    this.router.navigate(['/clases/'+id])

  }
  /*agregarpersonalista(persona){ 
    persona[0].fecha_naci=this.edad(persona[0].fecha_naci);
    this.ListarPersona.push(persona[0]);
      this.listarPersonas();
  }*/





}