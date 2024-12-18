import { Component } from '@angular/core';

class Faculty {
  age: number;
  name: string;
  salary: number;

  constructor() {
    this.age = 0;
    this.name = '';
    this.salary = 0;
  }
}

@Component({
  selector: 'app-faculty',
  templateUrl: './faculty.component.html',
  styleUrl: './faculty.component.css'
})
export class FacultyComponent {
  faculties: Faculty[] = [];
  tempFaculty: Faculty = new Faculty();
  index:number = -1;
  addFaculty() {
    this.faculties.push(this.tempFaculty);
    this.tempFaculty = new Faculty();
  }
  editFaculty(){
    this.faculties[this.index] = this.tempFaculty;
    this.tempFaculty = new Faculty();
    this.index = -1;
  }
  editButton(id: number) {
    this.tempFaculty = this.faculties[id];
    this.index = id;
  }
  deleteButton(id: number) {
    this.faculties.splice(id, 1);
  }
}
