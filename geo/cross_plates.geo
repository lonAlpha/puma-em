/**********************************************************************
 *
 * cross_plates.geo
 *
 * Copyright (C) 2016 Idesbald Van den Bosch
 *
 * This file is part of Puma-EM.
 * 
 * Puma-EM is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * Puma-EM is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with Puma-EM.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Suggestions/bugs : <vandenbosch.idesbald@gmail.com>
 *
 **********************************************************************/

lc = 0.01;
lx = 0.2;
ly = 0.1;
lz = 0.1;
Point(1) = {0,0,0,lc};
Point(2) = {0,-ly/2,0,lc};
Point(3) = {0,ly/2,0,lc};

Line(1) = {2,1};
Extrude {-lx/2,0,0} {
  Line{1};
}
Extrude {lx/2,0,0} {
  Line{1};
}
Extrude {0,0,-lz/2} {
  Line{1};
}
Extrude {0,0,lz/2} {
  Line{1};
}
Line(18) = {1,3};
Extrude {-lx/2,0,0} {
  Line{18};
}
Extrude {lx/2,0,0} {
  Line{18};
}
Extrude {0,0,-lz/2} {
  Line{18};
}
Extrude {0,0,lz/2} {
  Line{18};
}
Extrude {0,0,-lz/2} {
  Line{8};
}
Extrude {0,0,-lz/2} {
  Line{4};
}
Extrude {0,0,lz/2} {
  Line{8};
}
Extrude {0,0,lz/2} {
  Line{4};
}
