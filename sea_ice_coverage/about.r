function(){
	tabPanel("About",
		HTML('<div style="float: right; margin: 0 5px 5px 10px;"><iframe width="560" height="315" src="//www.youtube.com/embed/HqWJEmCPfUM" frameborder="0" allowfullscreen></iframe></div>
		
		<p style="text-align:justify">This web application shows sea ice coverage over the Arctic from 1860 and projected through 2099.
		The first tab includes a time series plot of total sea ice extent by global climate model (GCM), including a five-model averaged composite. All GCMs are RCP 8.5.
		Linear, quadratic, and locally weighted LOESS fitted trends are available for overlay.
		Fitted trend model output is displayed below the plot for each climate model and regression model.
		Keep in mind these are exploratory visualizations. They are not intended as valid regression models.</p>
		
		<p style="text-align:justify">A second tab (developmental) shows a panel graphic of spatially explicit sea ice concentration values for each model including the composite.
		<em>This graphic is for illustration purposes only</em> and should not be treated as spatially accurate with respect to the displayed land masses.
		Pixels from the original raster datasets, aggregated to a coarser scale (for app efficiency),
		are not intended to line up perfectly with the overlaid landmass outlines, which are provided only for convenient reference and visual orientation for the user.
		The sea ice concentration map tab is included in the app as an extra feature primarily in the interest of general idea and code sharing with the broader R and Shiny user communities.
		For users of the app who are specifically interested in it for its sea ice content, it is recommended that you focus on the extent totals tab.</p>
		
		<p style="text-align:justify">The purpose of the app is to provide a relatively simple and convenient way of interactively exploring a subset of aggregated (across time and space) GCM sea ice outputs.
		The goal is not to develop the perfect web tool, but rather to showcase some of the data.
		As such, there are no plans for continued development or refinement of this particular app. However, future apps for other projects will be build upon what has been explored here.</p>
		
		<p style="text-align:justify"><em>This project is funded by the Alaska Ocean Observing System through its cooperative agreement ##NA11NOS0120020 with the National Oceanic and Atmospheric Administration (NOAA).
		Work was performed by the Alaska Center for Climate Assessment and Policy(ACCAP) at the University of Alaska Fairbanks (UAF) in partnership with the Scenarios Network for Alaska and Arctic Planning (SNAP, UAF).</em></p>
		<br/>
		
		<strong>Download source data</strong>
		<br/>
		<a href="http://www.snap.uaf.edu/data.php#dataset=Historical_Estimates_and_Projections_of_Sea_Ice_Concentration" target="_blank">Historical and projected sea ice concentration</a>
		<br/>
		<p></p>'),

		HTML('
		<div style="clear: left;"><img src="http://www.gravatar.com/avatar/52c27b8719a7543b4b343775183122ea.png" alt="" style="float: left; margin-right:5px" /></div>
		<p>Matthew Leonawicz<br/>
		Statistician | useR<br/>
		<a href="http://leonawicz.github.io" target="_blank">Github.io</a> | 
		<a href="http://blog.snap.uaf.edu" target="_blank">Blog</a> | 
		<a href="https://twitter.com/leonawicz" target="_blank">Twitter</a> | 
		<a href="http://www.linkedin.com/in/leonawicz" target="_blank">Linkedin</a> <br/>
		<a href="http://www.snap.uaf.edu/", target="_blank">Scenarios Network for Alaska and Arctic Planning</a>
		</p>'),
		
		fluidRow(
			column(4,
				strong('Related apps'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Coastal Alaska Extreme Temperature and Wind Events", href="http://shiny.snap.uaf.edu/temp_wind_events/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				strong('Code'),
				p('Source code available at',
				a('GitHub', href="https://github.com/ua-snap/shiny-apps/tree/master/sea_ice_coverage", target="_blank")),
				br()
			),
			column(4,
			strong('Related blog posts'),
				p(HTML('<ul>'),
					HTML('<li>'),a("R Shiny web app: Arctic sea ice extents and concentrations", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-sea-ice/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("R Shiny web app: Coastal Alaska extreme temperature and wind events", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-extreme-events/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				br()
			),
			column(4,
				strong('References'),
				p(HTML('<ul>'),
					HTML('<li>'),a('Coded in R', href="http://www.r-project.org/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a('Built with the Shiny package', href="http://www.rstudio.com/shiny/", target="_blank"),HTML('</li>'),
					HTML('<li>'),"Additional supporting R packages",HTML('</li>'),
					HTML('<ul>'),
						HTML('<li>'),a('mapproj', href="http://cran.r-project.org/web/packages/mapproj/", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('maps', href="http://cran.r-project.org/web/packages/maps/index.html", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('raster', href="http://cran.r-project.org/web/packages/raster/index.html", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('rasterVis', href="http://cran.r-project.org/web/packages/rasterVis/index.html", target="_blank"),HTML('</li>'),
					HTML('<ul>'),
				HTML('</ul>'))
			)
		),
		value="about"
	)
}
