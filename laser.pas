program SistemaBoletos;

uses
  crt;

type
  TipoClase = (Primera, Segunda, Tercera);
  TipoViaje = (Internacional, Nacional);
  TipoServicioEspecial = (Ninguno, ComidaEspecial, AsistenciaEspecial);

var
  opcion: char;
  nombre, cedula: string;
  edad: integer;
  clase: TipoClase;
  viaje: TipoViaje;
  costo: real;
  servicioEspecial: TipoServicioEspecial;

begin
  repeat
    clrscr;
    writeln('Bienvenido al sistema de boletos');
    writeln('1. Comprar Boleto');
    writeln('2. Ver Sistema');
    writeln('3. Salir');
    writeln('Ingrese su opcion:');
    readln(opcion);
    
    case opcion of
      '1': begin
             writeln('Ingrese el nombre del viajero:');
             readln(nombre);
             writeln('Ingrese la cedula de identidad:');
             readln(cedula);
             writeln('Ingrese la edad del pasajero:');
             readln(edad);
             writeln('Seleccione la clase:');
             writeln('1. Primera Clase');
             writeln('2. Segunda Clase');
             writeln('3. Tercera Clase');
             readln(opcion);
             case opcion of
               '1': clase := Primera;
               '2': clase := Segunda;
               '3': clase := Tercera;
             end;
             writeln('Seleccione el tipo de viaje:');
             writeln('1. Internacional');
             writeln('2. Nacional');
             readln(opcion);
             case opcion of
               '1': begin
                      viaje := Internacional;
                      writeln('Seleccione su vuelo internacional:');
                      writeln('1. Bogota - Caracas / Caracas - Bogota - $499');
                      writeln('2. Curazao - Caracas / Caracas - Curazao - $400');
                      writeln('3. Santo Domingo - Caracas / Caracas - Santo Domingo - $700');
                      writeln('4. La Romana - Caracas / Caracas - La Romana - $650');
                      readln(opcion);
                      case opcion of
                        '1': costo := 499;
                        '2': costo := 400;
                        '3': costo := 700;
                        '4': costo := 650;
                      end;
                      writeln('Boleto comprado exitosamente. Costo: $', costo:0:2);
                    end;
               '2': begin
                      viaje := Nacional;
                      writeln('Seleccione su vuelo nacional:');
                      writeln('1. Porlamar - Caracas / Caracas - Porlamar - $50');
                      writeln('2. Puerto Ordaz - Caracas / Caracas - Puerto Ordaz - $45');
                      writeln('3. Maracaibo - Caracas / Caracas - Maracaibo - $80');
                      writeln('4. El Vigia - Caracas / Caracas - El Vigia - $75');
                      writeln('5. Barcelona - Caracas / Caracas - Barcelona - $30');
                      writeln('6. La Fria - Caracas / Caracas - La Fria - $60');
                      readln(opcion);
                      case opcion of
                        '1': costo := 50;
                        '2': costo := 45;
                        '3': costo := 80;
                        '4': costo := 75;
                        '5': costo := 30;
                        '6': costo := 60;
                      end;
                      writeln('Boleto comprado exitosamente. Costo: $', costo:0:2);
                    end;
             end;

             writeln('¿Necesita algún tipo de servicio especial?');
             writeln('1. Comida Especial');
             writeln('2. Asistencia Especial');
             writeln('3. Ninguno');
             readln(opcion);
             case opcion of
               '1': servicioEspecial := ComidaEspecial;
               '2': servicioEspecial := AsistenciaEspecial;
               '3': servicioEspecial := Ninguno;
             end;
             writeln('Servicio especial seleccionado.');
           end;
      '2': writeln('Mostrando sistema...');
      '3': writeln('Saliendo del programa...');
    else
      writeln('Opcion no valida. Intente de nuevo.');
    end;

    readkey;
  until opcion = '3';
end.
