/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.UserAddress"{

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		super.beforeAll();

		// setup the model
		super.setup();

		// init the model object
		model.init();
	}

	function afterAll(){
		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){

		describe( "UserAddress Suite", function(){

			it( "should create", function(){
				expect( false ).toBeTrue();
			});

			it( "should delete", function(){
				expect( false ).toBeTrue();
			});

			it( "should getInfo", function(){
				expect( false ).toBeTrue();
			});

			it( "should getList", function(){
				expect( false ).toBeTrue();
			});

			it( "should setDefault", function(){
				expect( false ).toBeTrue();
			});

			it( "should update", function(){
				expect( false ).toBeTrue();
			});


		});

	}

}
