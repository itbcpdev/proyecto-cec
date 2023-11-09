<?php

namespace App\Http\Requests\Administrador\Campaign;

use Illuminate\Foundation\Http\FormRequest;

class CampaignStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nombre' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'nombre.required' => 'El Nombre de la Campa単a es un campo requerido'
        ];
    }
}
