<div class="row">
	<div class="span3">
		<% include SidebarNav %>
	</div>
	<section class="span9">
		<header class="page-header subhead">
			<% include PrintShare %>
			<h1><span class="hidden">$SiteConfig.Title | </span>$Title</h1>
		</header>
		$Breadcrumbs
		$Content



		<table class="table table-striped table-bordered">
		<thead>
		<tr>
			<th>Key</th> 
			<th>Page</th>
		</tr>
		</thead>
		<tbody>

		<% loop Menu(1) %>

			<% if $AccessKey %>
			<tr>
				<td>$AccessKey</td>
				<td><a href="$Link">$Title</a></td>
			</tr>
			<% end_if %>
			
		<% end_loop %>
		<% if Footer %>
			<% with Footer %>
				<% loop Children %>
					<% if $AccessKey %>
						<tr>
							<td>$AccessKey</td>
							<td><a href="$Link">$Title</a></td>
						</tr>
					<% end_if %>
				<% end_loop %>
			<% end_with %>
		<% end_if %>
		<tr>
			<td>/</td>
			<td><a href="http://newzealand.govt.nz">newzealand.govt.nz</a></td>
		</tr>
		</tbody>
		</table>


		$Form
		$PageComments
	</section>
</div>