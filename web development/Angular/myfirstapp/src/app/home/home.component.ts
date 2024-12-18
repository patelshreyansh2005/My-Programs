import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  red = 0;
  green = 0;
  blue = 0;
  backgroundcolor = '';
  changeColor(){
    this.backgroundcolor = 'rgb('+Math.ceil(Math.random()*255)+','+Math.ceil(Math.random()*255)+','+Math.ceil(Math.random()*255)+')';
  }
}
