import { Component } from '@angular/core';
import { PersonaLogin } from './Services/persona.service' 
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'matricula';
  login : boolean = false
  user : PersonaLogin;
  valueResponse(user:PersonaLogin):any{
    this.user=user;
    this.login=true;
  }
}
