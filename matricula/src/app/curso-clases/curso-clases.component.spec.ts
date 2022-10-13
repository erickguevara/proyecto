import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CursoClasesComponent } from './curso-clases.component';

describe('CursoClasesComponent', () => {
  let component: CursoClasesComponent;
  let fixture: ComponentFixture<CursoClasesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CursoClasesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CursoClasesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
