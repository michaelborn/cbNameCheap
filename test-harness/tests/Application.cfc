/**
********************************************************************************
Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.ortussolutions.com
********************************************************************************
*/
component{

	// The name of the module used in cfmappings ,etc
	request.MODULE_NAME = "cbNameCheap";
	// The directory name of the module on disk. Usually, it's the same as the module name
	request.MODULE_PATH = "cbNameCheap";

	// APPLICATION CFC PROPERTIES
	this.name 				= "#request.MODULE_NAME# Testing Suite";
	this.sessionManagement 	= true;
	this.sessionTimeout 	= createTimeSpan( 0, 0, 15, 0 );
	this.applicationTimeout = createTimeSpan( 0, 0, 15, 0 );
	this.setClientCookies 	= true;

	// Create testing mapping
	this.mappings[ "/tests" ] = getDirectoryFromPath( getCurrentTemplatePath() );

	// The application root
	rootPath = REReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );
	this.mappings[ "/root" ]   			= rootPath;

	// The module root path
	moduleRootPath = REReplaceNoCase( rootPath, "#request.MODULE_PATH#(\\|/)test-harness(\\|/)", "" );
	this.mappings[ "/moduleroot" ] 				= moduleRootPath;
	this.mappings[ "/#request.MODULE_NAME#" ] 	= moduleRootPath & "#request.MODULE_PATH#";
	this.mappings[ "/models" ] = this.mappings[ "/#request.MODULE_NAME#" ] & "/models";

	function onRequestStart( required targetPage ){

		if( url.keyExists( "fwreinit" ) ){
			if( StructKeyExists( server, "lucee" ) ){
				pagePoolClear();
			}
		}

		// Cleanup
		if( !isNull( application.cbController ) ){
			application.cbController.getLoaderService().processShutdown();
		}
		structDelete( application, "cbController" );
		structDelete( application, "wirebox" );

		return true;
	}

	public function onRequestEnd(){
		structDelete( application, "cbController" );
		structDelete( application, "wirebox" );
	}
}
