//  CrossOrigin
//  Copyright (C) 2018  Zaoqi

//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.

//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.

//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
function send($data) {
	header('Access-Control-Allow-Origin: *');
	echo json_encode($data);}

$parm=array_replace($_GET, $_POST);
function get($name) {
	return json_decode($parm[$name]);}