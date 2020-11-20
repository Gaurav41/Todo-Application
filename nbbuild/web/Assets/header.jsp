<style>

 .li {

float: right;
color:white;
}

</style>
<header>
	<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: #3b3939">
		<div style="color:white;">
			 Todo App
		</div>

		<ul class="navbar-nav navbar-collapse justify-content-end">
			<li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
			<li><a href="<%= request.getContextPath() %>/register" class="nav-link">Signup</a></li>
		</ul>
	</nav>
</header>