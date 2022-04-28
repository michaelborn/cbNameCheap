/**
 * I am a new Model Object
 */
component accessors="true"{

	// Properties
	property name="NameCheapClient" inject="NameCheapClient@cbNameCheap";

	/**
	 * Constructor
	 */
	public Domains function init(){
		return this;
	}

	/**
	 * getList
	 */
	function getList(){
		return NameCheapClient.get(
			queryParams = {
				"Command" : "namecheap.domains.getList"
			}
		);
	}

	/**
	 * getContacts
	 */
	function getContacts(){

	}

	/**
	 * create
	 */
	function create(){

	}

	/**
	 * getTldList
	 */
	function getTldList(){

	}

	/**
	 * setContacts
	 */
	function setContacts(){

	}

	/**
	 * check
	 */
	function check(){

	}

	/**
	 * reactivate
	 */
	function reactivate(){

	}

	/**
	 * renew
	 */
	function renew(){

	}

	/**
	 * getRegistrarLock
	 */
	function getRegistrarLock(){

	}

	/**
	 * setRegistrarLock
	 */
	function setRegistrarLock(){

	}

	/**
	 * getInfo
	 */
	function getInfo(){

	}


}