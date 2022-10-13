import { Component, OnInit, Output,EventEmitter } from '@angular/core';
import {PersonaService, user } from '../Services/persona.service';
import { FormBuilder, FormGroup,Validators } from '@angular/forms'
import { ThrowStmt } from '@angular/compiler';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  @Output () valueResponse: EventEmitter<any> = new EventEmitter();

  public formUser: FormGroup;
  usuario: user={
  user:'',
	contrasena:'',
	
  };
  constructor(private formBuilder: FormBuilder,private PersonaService:PersonaService,private router:Router) { }

  ngOnInit(): void {
    this.formUser = this.formBuilder.group({
      user: ['', [Validators.required,Validators.maxLength( 40 )]],
      contrasena: ['', [Validators.required,Validators.maxLength( 40 ) ]],
    });
  }
  agregar():void{
    this.PersonaService.validUSer(this.usuario).subscribe(res=>{
      if(res){
        this.router.navigate(['/home'])
        this.valueResponse.emit(res);
      }
   });
  }

}
