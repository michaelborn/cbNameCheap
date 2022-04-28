/**
 * Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
 * www.ortussolutions.com
 * ---
 */
component {

	// Module Properties
	this.title 				= "cbNameCheap";
	this.author 			= "Ortus Solutions";
	this.webURL 			= "https://www.ortussolutions.com";
	this.description 		= "CFML API wrapper for namecheap.com";

	// Model Namespace
	this.modelNamespace		= "cbNameCheap";

	// CF Mapping
	this.cfmapping			= "cbNameCheap";

	// Dependencies
	this.dependencies 		= [];

	/**
	 * Configure Module
	 */
	function configure(){
		// module settings - stored in modules.name.settings
		settings = {
			apiUser : getSystemSetting( "NAMECHEAP_API_USER", "myusername" ),
			clientIP : getSystemSetting( "NAMECHEAP_CLIENT_IP", "1.2.3.4" ),
			apiKey : getSystemSetting( "NAMECHEAP_API_KEY", "blablasecret" ),
			apiURL : getSystemSetting( "NAMECHEAP_API_URL", "https://api.sandbox.namecheap.com/xml.response" ),
		};

		// Binder Mappings
		binder.map( "NameCheapClient@cbNameCheap" )
				.to( "hyper.models.HyperBuilder" )
				.asSingleton()
				.initWith({
					baseURL : settings.apiURL,
					queryParams = {
						"ApiUser" : settings.ApiUser,
						"ApiKey"  : settings.apiKey,
						"ClientIp": settings.ClientIP,
						"UserName": settings.apiUser
					}
				});
	}

	/**
	 * Fired when the module is registered and activated.
	 */
	function onLoad(){

	}

	/**
	 * Fired when the module is unregistered and unloaded
	 */
	function onUnload(){

	}

}
