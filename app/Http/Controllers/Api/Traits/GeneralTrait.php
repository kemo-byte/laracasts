<?php

namespace App\Http\Controllers\Api\Traits;


trait GeneralTrait
{

	public function returnError($errNum, $msg="") {

		return response()->json([
			'status' => false,
			'errNum' => $errNum,
			'msg' => $msg
		]);
	}

	public function returnSuccessMessage($errNum, $msg="") {

			return response()->json([
				'status' => true,
				'errNum' => $errNum,
				'msg' => $msg
			]);
		}


	public function returnData($key, $value, $msg="") {

			return response()->json([
				'status' => true,
				'errNum' => 'S000',
				'msg' => $msg,
				$key => $value
			]);
		}

	public function returnCodeAccordingToInput($validator) {
		$inputs = array_keys($validator->errors()->toArray());

		$code = $this->getErrorCode($inputs[0]);
		return $code;

	}

	public function getErrorCode($input){
		if($input == "name") {
			return "E001";
		}
		else if($input == "password") {
				return "E002";
		}
		else if($input == "email") {
			return "E003";
		}
	}

	public function returnValidationError($code="E001", $validator) {

		return $this->returnError($code, $validator->errors()->first());

	}

}
