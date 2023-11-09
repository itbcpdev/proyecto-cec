<?php 

namespace App\Exports;


use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class ExportByEmpresa implements FromCollection, WithHeadings, WithColumnWidths
{
    protected $empresas;

    public function __construct($empresas)
    {
        $this->empresas = $empresas;
    }

    public function collection()
    {
      $data = [];
        
      foreach ($this->empresas as $empresa) {
          if($empresa->usuarios->isEmpty()) {
            $data[] = [
                'Nombre' => $empresa->nombre,
                'RUC' => $empresa->ruc,
                'Descripción de Empresa' => $empresa->descripcion_empresa,
                'Pagina Web' => $empresa->direccion,
                'Nombre Contacto' => '',
                'Correo de Contacto' => '',
                'Cargo Contacto' => '',
                'Celular Contacto' => '',
            ];
          } else {
            foreach ($empresa->usuarios as $usuario) {
                $data[] = [
                    'Nombre' => $empresa->nombre,
                    'RUC' => $empresa->ruc,
                    'Descripción de Empresa' => $empresa->descripcion_empresa,
                    'Pagina Web' => $empresa->direccion,
                    'Nombre Contacto' => $usuario->name . " " . $usuario->apellido_paterno . " " . $usuario->apellido_materno,
                    'Correo de Contacto' => $usuario->email,
                    'Cargo Contacto' => $usuario->cargo,
                    'Celular Contacto' => $usuario->celular_contacto
                ];
            }
          }
      }
      
  
      return collect($data);
    }

    public function headings(): array
    {
        return [
            'Nombre',
            'RUC',
            'Descripción de Empresa',
            'Pagina Web',
            'Nombre Contacto',
            'Correo de Contacto',
            'Cargo Contacto',
            'Celular Contacto',
        ];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 50, // Ancho columna Nombre
            'B' => 20, // Ancho columna RUC
            'C' => 120, // Ancho columna Descripción de Empresa
            'D' => 70, // Ancho columna Dirección
            'E' => 20, // Ancho columna Nombre Contacto
            'F' => 20, // Ancho columna Correo de Contacto
            'G' => 20, // Ancho columna Cargo Contacto
            'H' => 18, // Ancho columna Celular Contacto
        ];
    }
}