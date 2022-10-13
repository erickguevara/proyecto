import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InicioComponent } from './inicio/inicio.component';
import { AgregarComponent } from './agregar/agregar.component';
import { CursosComponent } from './cursos/cursos.component';
import { CursosAlumnoComponent } from './cursos-alumno/cursos-alumno.component';
import { ClasesAlumnoComponent} from './clases-alumno/clases-alumno.component';
import { HomeComponent  } from './home/home.component';
import { CursoClasesComponent } from './curso-clases/curso-clases.component'
import { LoginComponent } from './login/login.component'
const routes: Routes = [
{path:'', redirectTo:'/home', pathMatch:'full'},
{path:'home', component: HomeComponent  },
{path:'alumnos', component: InicioComponent  },
{path:'clases/:id', component: CursoClasesComponent  },
{path:'clases_alumno/:id', component: ClasesAlumnoComponent  },
{path:'agregar', component: AgregarComponent },
{path:'cursos', component: CursosComponent},
{path:'cursos_alumno', component: CursosAlumnoComponent},
{path:'login', component: LoginComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
