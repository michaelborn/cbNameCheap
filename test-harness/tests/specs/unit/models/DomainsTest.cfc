
component extends="tests.specs.unit.BaseModelTest" model="models.Domains"{


	function run(){

		describe( "Domains Suite", function(){

			it( "should getList", function(){
				var result = variables.model.getList();
				expect(  result).toBeInstanceOf( "Hyper.models.HyperResponse" );
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
