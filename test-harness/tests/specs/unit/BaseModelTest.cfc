/**
 * The base model test case will use the 'model' annotation as the instantiation path
 * and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
 * responsibility to update the model annotation instantiation path and init your model.
 */
component
	extends      ="coldbox.system.testing.BaseModelTest"
	appMapping   ="root"
	loadColdBox  =true
	unloadColdBox=false
{

	function beforeAll(){
		super.beforeAll();

		// setup the model
		super.setup();

		if ( structKeyExists( variables, "model" ) ) {
			// init the model object
			model.init();

			// wire me up!
			getWirebox().autowire( model );
		}
	}

}