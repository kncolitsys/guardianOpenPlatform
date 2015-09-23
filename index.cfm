<cfset strKey = '< your API key >' />
	
<cfset openAPI = createObject(
					'component',
					'com.coldfumonkeh.guardian.openAPI'
				)
				.init(
					apikey=strKey,
					parseOutput=true
				) />
	
<cfset openResults = openAPI.tags(
					q='Kavi Nelson',
					format='json'
				) />
	
<!---
<cfset openResults = openAPI.search(
						q='iPhone',
						page=1,
						format='json',
						fromdate='2010-08-17'
					) />

	
<cfset openResults = openAPI.item(
						itemID='music/series/whats-in-micheal-jackson-hand',
						format='xml',
						showrelated=true,
						showtags='all'
					) />
	
<cfset openResults = openAPI.sections(format='json') />
--->

<cfdump var="#openResults#" label="Results from the openAPI call." />