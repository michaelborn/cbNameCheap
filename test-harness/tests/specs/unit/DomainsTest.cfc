/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.Domains"{

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

		describe( "Domains Suite", function(){

			it( "should getList", function(){
				expect( false ).toBeTrue();
			});

			it( "should getContacts", function(){
				expect( false ).toBeTrue();
			});

			it( "should create", function(){
				expect( false ).toBeTrue();
			});

			it( "should getTldList", function(){
				expect( false ).toBeTrue();
			});

			it( "should setContacts", function(){
				expect( false ).toBeTrue();
			});

			it( "should check", function(){
				expect( false ).toBeTrue();
			});

			it( "should reactivate", function(){
				expect( false ).toBeTrue();
			});

			it( "should renew", function(){
				expect( false ).toBeTrue();
			});

			it( "should getRegistrarLock", function(){
				expect( false ).toBeTrue();
			});

			it( "should setRegistrarLock", function(){
				expect( false ).toBeTrue();
			});

			it( "should getInfo", function(){
				expect( false ).toBeTrue();
			});


		});

	}

}
