void determinar_indice_uv(int saida_sensor);

void setup() {
  Serial.begin(9600); //Iniciar comunicação serial
}

void loop() {
  //Lê o nível de tensão presente no pino A0 da pla Arduino
  int saida_sensor = analogRead(A0);
  
  //Determinar o valor do índice de radiaçao com base nos níveis de tensões
  int indice = determinar_indice_uv(saida_sensor);

  Serial.print("Índice de radiação ultravioleta: ");
  Serial.print(indice);
  delay(1000); //Espere 1 segundo
}

void determinar_indice_uv(int saida_sensor){
  if(saida_sensor > 0 && saida_sensor < 50){  //Indice 0
    return 0;
  }else{
    if(saida_sensor >= 50 && saida_sensor < 227){ //Indice 1
      return 1;
    }else{
      if(saida_sensor >= 227 && saida_sensor < 318){  //Indice 2
        return 2;
      }else{
        if(saida_sensor >= 318 && saida_sensor < 408){  //Indice 3
          return 3;
        }else{
          if(saida_sensor >= 408 && saida_sensor < 503){  //Indice 4
            return 4;
          }else{
            if(saida_sensor >= 503 && saida_sensor > 606){   //Indice 5
              return 5;
            }else{
              if(saida_sensor >= 606 && sainda_sensor > 696){  //Indice 6
                return 6;
              }else{
                if(saida_sensor >= 696 && saida_sensor > 795){  //Indice 7
                  return 7;
                }else{
                  if(saida_sensor >= 795 && saida_sensor < 881){  //Indice 8
                    return 8;
                  }else{
                    if(saida_sensor >= 881 && saida_sensor < 976){  //Indice 9
                      return 9;
                    }else{
                      if(saida_sensor >= 976 && saida_sensor < 1079){  //Indice 10
                        return 10;
                      }else{
                        if(saida_sensor >= 1079 && saida_sensor < 5000){ //Indice 11
                          return 11;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
