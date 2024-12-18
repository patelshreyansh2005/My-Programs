import { Component } from '@angular/core';

@Component({
  selector: 'app-laptop',
  templateUrl: './laptop.component.html',
  styleUrl: './laptop.component.css'
})
export class LaptopComponent {
  laptops: String[] = [];
  tempLaptop: String = '';
  isAdd: Boolean = true;
  index: any = -1;
  addLaptop() {
    if (this.tempLaptop != '') {
      this.laptops.push(this.tempLaptop);
    }
    this.tempLaptop = '';
  }
  editLaptop() {
    this.laptops[this.index] = this.tempLaptop;
    this.tempLaptop = '';
    this.isAdd = true;
  }
  editButton(id: any) {
    this.tempLaptop = this.laptops[id];
    this.index = id;
    this.isAdd = false;
  }
  deleteButton(id: any) {
    this.laptops.splice(id, 1);
  }
}
