import { Component } from '@angular/core';

@Component({
  selector: 'app-crud',
  templateUrl: './crud.component.html',
  styleUrl: './crud.component.css'
})
export class CrudComponent {
  students: String[] = [];
  tempStudent: String = '';
  isAdd: Boolean = true;
  index: any = -1;
  addStudent() {
    if (this.tempStudent != '') {
      this.students.push(this.tempStudent);
    }
    this.tempStudent = '';
  }
  editStudent() {
    this.students[this.index] = this.tempStudent;
    this.tempStudent = '';
    this.isAdd = true;
  }
  editButton(id: any) {
    this.tempStudent = this.students[id];
    this.index = id;
    this.isAdd = false;
  }
  deleteButton(id: any) {
    this.students.splice(id, 1);
  }
}
