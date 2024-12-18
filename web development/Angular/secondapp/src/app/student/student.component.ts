import { Component } from '@angular/core';

@Component({
  selector: 'app-student',
  templateUrl: './student.component.html',
  styleUrl: './student.component.css'
})
export class StudentComponent {
  students: String[] = [];
  tempStudent: String = '';
  index: number = -1;
  addStudent() {
    if (this.tempStudent != '') {
      this.students.push(this.tempStudent);
    }
    this.tempStudent = '';
  }
  editStudent() {
    this.students[this.index] = this.tempStudent;
    this.tempStudent = '';
    this.index = -1;
  }
  editButton(id: number) {
    this.tempStudent = this.students[id];
    this.index = id;
  }
  deleteButton(id: number) {
    this.students.splice(id, 1);
  }
}
