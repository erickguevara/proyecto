import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AgregarComponent } from './agregar/agregar.component';
import { InicioComponent } from './inicio/inicio.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { ErrorTailorModule } from '@ngneat/error-tailor';
import { FilterPipe } from './pipes/filter.pipe';
import { CursosComponent } from './cursos/cursos.component'
import { AgregarCursosComponent } from './agregar_cursos/agregar_cursos.component';
import { LoginComponent } from './login/login.component';
import { PrincipalComponent } from './principal/principal.component';
import { HomeComponent } from './home/home.component';
import { CursoClasesComponent } from './curso-clases/curso-clases.component';
import { AgregarClasesComponent } from './agregar-clases/agregar-clases.component';
import { PreguntasComponent } from './preguntas/preguntas.component';
import { CursosAlumnoComponent } from './cursos-alumno/cursos-alumno.component';
import { ClasesAlumnoComponent } from './clases-alumno/clases-alumno.component'

@NgModule({
  declarations: [
    AppComponent,
    AgregarComponent,
    InicioComponent,
    FilterPipe,
    CursosComponent,
    AgregarCursosComponent,
    LoginComponent,
    PrincipalComponent,
    HomeComponent,
    CursoClasesComponent,
    AgregarClasesComponent,
    PreguntasComponent,
    CursosAlumnoComponent,
    ClasesAlumnoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    ErrorTailorModule.forRoot({
      errors: {
        useValue: {
          required: 'Campo es Requerido',
          minlength: ({ requiredLength, actualLength }) => 
                      `Expect ${requiredLength} but got ${actualLength}`,
          invalidAddress: error => `Address isn't valid`
        }
      }
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
