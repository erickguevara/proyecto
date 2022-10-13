import { Component, OnInit } from '@angular/core';
import { PersonaService, Persona } from '../Services/persona.service';
import { Router,ActivatedRoute } from '@angular/router';
import { NgbModalConfig, NgbModal,  } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-curso-clases',
  templateUrl: './curso-clases.component.html',
  styleUrls: ['./curso-clases.component.css'],
  providers: [NgbModalConfig, NgbModal]
})
export class CursoClasesComponent implements OnInit {
  id:any;
  clase:any;
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
  open(content) {
    this.modalService.open(content);
  }
  open2(content,clase_id) {
    this.modalService.open(content);
    this.clase=clase_id;
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

  


}
