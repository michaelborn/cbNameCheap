/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.SSL"{

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

		describe( "SSL Suite", function(){

			it( "should create", function(){
				expect( false ).toBeTrue();
			});

			it( "should getList", function(){
				expect( false ).toBeTrue();
			});

			it( "should parseCSR", function(){
				expect( false ).toBeTrue();
			});

			it( "should getApproverEmailList", function(){
				expect( false ).toBeTrue();
			});

			it( "should activate", function(){
				expect( false ).toBeTrue();
			});

			it( "should resendApproverEmail", function(){
				expect( false ).toBeTrue();
			});

			it( "should getInfo", function(){
				expect( false ).toBeTrue();
			});

			it( "should renew", function(){
				expect( false ).toBeTrue();
			});

			it( "should reissue", function(){
				expect( false ).toBeTrue();
			});

			it( "should resendFulfillmentEmail", function(){
				expect( false ).toBeTrue();
			});

			it( "should purchaseMoreSans", function(){
				expect( false ).toBeTrue();
			});

			it( "should revokeCertificate", function(){
				expect( false ).toBeTrue();
			});

			it( "should editDCVMethod", function(){
				expect( false ).toBeTrue();
			});


		});

	}

}
