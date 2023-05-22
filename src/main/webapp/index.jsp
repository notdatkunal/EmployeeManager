<html>
<head>

<style type="text/css">

body{

padding-right: 20%;
padding-left: 20%;
background-color: #ccc;
}

.mytabs{

	display: flex;
	flex-wrap: wrap;
	justify-content:space-between;
	align-content:stretch;
	flex-direction:row;
	
	
	max-width: 600px;
	margin: 50px auto;
	padding: 25px;
}

.mytabs input[type="radio"]{
	display: none;
}
.mytabs .tablabel {
	padding: 25px;
	background: #e2e2e2;
	font-weight: bold	;
}

.mytabs .tab{
	width: 100%;
	padding: 20px;
	background-color: #fff;
	order: 1;
	display: none;
}
.mytabs .tab h2 {


	font-size: 2em;
}
.mytabs input[type="radio"]:checked +.tablabel + .tab{

	display: block;


}
.mytabs input[type="radio"]:checked +.tablabel{

	
	background-color: lightblue;
	flex:1;
	
	
	
}


form{

  padding: 7%;
  border: 1px solid black;
	width:40%;
  align-content: center;
  margin: 0 auto;
font-family: sans-serif;
align-content: center;


}

form > label {
	margin :0 auto;
	display:block;
	margin-top: 10px;
}
input{
	margin :0 auto;
	
	margin-bottom: 10px;

}
input:hover{
background-color: lime;
}
button {
margin :0 auto;
background-color: lightblue;
}
button:hover{
	background-color: lime;
}
h2 {
	margin :0 auto;
	font-family: fantasy;
	font-weight: 100;
	font-stretch: wider;
	
}

</style>

</head>
<body>
<center>
<h1>Employee Manager</h1>
</center>
<div class="mytabs">


	<input type="radio" name="mytabs" id="tabentry" checked="checked">
	<label class="tablabel" for="tabentry">Entry</label>
	<div class="tab">

		<h2>Employee entry form</h2>

		<form action="save.jsp" >
		<label>ID</label> 
		<input type="number" placeholder="enter your id" name="id">
		<br>
		<label>Age </label>
		<input type="number" placeholder="enter your age" name="age">
		<br>
		<label>Name</label> 
		<input type="text" placeholder="enter your name" name="name">
		<br>
		<label>Dept no.</label>
		<input type="text" placeholder="enter your department number" name="dept">
		<br>
		<button type="submit">submit</button>
		
	
	</form>
	</div>
	<br>
	<br>
	<input type="radio" name="mytabs" id="tabfind">
	<label class="tablabel" for="tabfind">Find</label>
	<div class="tab">
		<h2>Employee finder</h2>
		<form action="find.jsp">
			<label >Enter employee Id</label>
			<input name="id" type="number">
			<button type="submit">submit</button>
		</form>
	</div>
	<br>
	<br>
	<input type="radio" name="mytabs" id="tabdelete">
	<label class="tablabel" for="tabdelete">Delete</label>
	<div class="tab">	
		<h2>Employee remover</h2>
		<form action="delete.jsp">
			<label >Enter employee Id</label>
			<input name="id" type="number">
			<button type="submit">submit</button>
		</form>
	</div>
	<br>
	<br>
	<input type="radio" name="mytabs" id="tabupdate">
	<label class="tablabel" for="tabupdate">Update</label>
	<div class="tab">
		<h2>Employee update form</h2>
		<form action="update.jsp" >
		<label>ID</label> 
		<input type="number" placeholder="enter your id" name="id">
		<br>
		<label>Age </label>
		<input type="number" placeholder="enter your age" name="age">
		<br>
		<label>Name</label> 
		<input type="text" placeholder="enter your name" name="name">
		<br>
		<label>Dept no. </label>
		<input type="text" placeholder="enter your department number" name="dept">
		<br>
		<button type="submit">submit</button>
		</form>
	</div>
	
</div>
</body>
</html>
