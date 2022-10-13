import { Component, OnInit,Input } from '@angular/core';
import { PersonaLogin } from '../Services/persona.service'

@Component({
  selector: 'app-principal',
  templateUrl: './principal.component.html',
  styleUrls: ['./principal.component.css']
})
export class PrincipalComponent implements OnInit {
  @Input() PersonaLogin: PersonaLogin;
  constructor() { }

  ngOnInit(): void {
    console.log(this.PersonaLogin.tipo);
  }

}
