<html>
<head>

<style type="text/css">

body{

padding-right: 20%;
padding-left: 20%;
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

label {
	margin :0 auto;
	
	margin-top: 10px;
}
input{
	margin :0 auto;
	
	margin-bottom: 10px;

}
input:hover{
background-color: lightpink;
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

	<form action="save.jsp" >
	<h2>Employee entry form</h2>
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
	<br>
	<br>
	<form action="find.jsp">
		<h2>employee finder</h2>
		<label >enter employee Id</label>
		<input name="id" type="number">
		<button type="submit">submit</button>
	</form>
	<br>
	<br>
	<form action="delete.jsp">
		<h2>employee remover</h2>
		<label >enter employee Id</label>
		<input name="id" type="number">
		<button type="submit">submit</button>
	</form>
	<br>
	<br>
	<form action="update.jsp" >
	<h2>Employee update form</h2>
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
</body>
</html>
