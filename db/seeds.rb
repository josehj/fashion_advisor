# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars'  }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FashionStyle.create([
                      { name: 'Boho' },
                      { name: 'Hipster' },
                      { name: 'Trendy' },
                      { name: 'Casual' },
                      { name: 'Rock' }
                    ])

GarmentType.create([
                     { name: 'BLUSAS', category: 1 },
                     { name: 'POLERAS', category: 1 },
                     { name: 'BODYS', category: 1 },
                     { name: 'KIMONOS', category: 1 },
                     { name: 'ABRIGOS', category: 2 },
                     { name: 'BOMBER', category: 2 },
                     { name: 'CHAQUETAS', category: 2 },
                     { name: 'PARKAS', category: 2 },
                     { name: 'PONCHOS', category: 2 },
                     { name: 'VESTIDOS', category: 3 },
                     { name: 'ENTERITOS', category: 3 },
                     { name: 'SWEATERS (CERRADOS)', category: 4 },
                     { name: 'CHALECOS (ABIERTOS)', category: 4 },
                     { name: 'POLERONES (ABIERTOS O CERRADOS)', category: 4 },
                     { name: 'JEANS', category: 5 },
                     { name: 'PANTALONES', category: 5 },
                     { name: 'PATAS', category: 5 },
                     { name: 'SHORTS', category: 6 },
                     { name: 'FALDAS', category: 6 }
                   ])

Body.create([
              { name: 'Pera' },
              { name: 'Reloj de arena' },
              { name: 'Rectangulo' },
              { name: 'Triángulo invertido' },
              { name: 'Rombo' }
            ])

GarmentAttribute.create([
                          # neck: 1, POR CUELLO
                          { name: 'CUELLO V', kind: 1 },
                          { name: 'CUELLO REDONDO', kind: 1 },
                          { name: 'STRAPLESS', kind: 1 },
                          { name: 'ESCOTE CRUZADO (WRAP)', kind: 1 },
                          { name: 'CINTA', kind: 1 },
                          { name: 'CUADRADO', kind: 1 },
                          { name: 'ESCOTE CORAZÓN', kind: 1 },
                          { name: 'PLUNGE (ESCOTADO)', kind: 1 },
                          { name: 'CUELLO BOTE', kind: 1 },
                          { name: 'CUELLO SUBIDO (BEATLE)', kind: 1 },
                          { name: 'OTRO', kind: 1 },

                          # sleeve: 2,POR TIPO MANGA
                          { name: 'MANGA LARGA - CLASICA', kind: 2 },
                          { name: 'MANGA LARGA - FLARE', kind: 2 },
                          { name: 'MANGA CORTA -GLOBO', kind: 2 },
                          { name: 'MANGA CORTA - MURCIELAGO', kind: 2 },
                          { name: 'MANGA CORTA - FLARE', kind: 2 },
                          { name: 'MANGA CORTA - CLASICA', kind: 2 },
                          { name: 'UNA MANGA', kind: 2 },
                          { name: 'SIN MANGA', kind: 2 },
                          { name: 'STRAPLESS', kind: 2 },
                          { name: 'MANGA 3/4', kind: 2 },
                          { name: 'TIRITAS', kind: 2 },
                          { name: 'OFF SHOULDER ', kind: 2 },
                          { name: 'COLD SHOULDER', kind: 2 },

                          # top_length: 3, POR LARGO (TOP)
                          { name: 'CROP', kind: 3 },
                          { name: 'NORMAL', kind: 3 },
                          { name: 'LARGO', kind: 3 },
                          { name: 'MEDIO', kind: 3 },
                          { name: 'TOBILLO', kind: 3 },
                          
                          # top_fit: 4, POR FIT CUERPO (TOP)
                          { name: 'APRETADO', kind: 4 },
                          { name: 'SUELTO', kind: 4 },
                          { name: 'NORMAL', kind: 4 },
                          { name: 'OVERSIZE', kind: 4 },
                          { name: 'PEPLUM', kind: 4 },

                          # top_dress_fit: 16, POR FIT CUERPO (VESTIDO)
                          { name: 'FORMA A', kind: 16 },
                          { name: 'BARDOT', kind: 16 },
                          { name: 'BLAZER', kind: 16 },
                          { name: 'BODYCON (AJUSTADO)', kind: 16 },
                          { name: 'CUT OUT', kind: 16 },
                          { name: 'SIRENA', kind: 16 },
                          { name: 'PENCIL (TUBO, SHEATH)', kind: 16 },
                          { name: 'POLERA', kind: 16 },
                          { name: 'SKATER', kind: 16 },
                          { name: 'SLIP', kind: 16 },
                          { name: 'SMOCK', kind: 16 },
                          { name: 'WRAP', kind: 16 },
                          { name: 'FIT & FLARE (AJUSTADO Y ACAMPANADO)', kind: 16 },
                          { name: 'CINTURA CAIDA (AÑOS 20)', kind: 16 },
                          { name: 'CORTE IMPERIO (ABAJO PECHUGA)', kind: 16 },
                          { name: 'SHIFT', kind: 16 },

                          # fabrics: 5, TELA PRINCIPAL
                          { name: 'BLUE JEAN', kind: 5 },
                          { name: 'TENCEL', kind: 5 },
                          { name: 'TERCIOPELO', kind: 5 },
                          { name: 'PLUSH', kind: 5 },
                          { name: 'LINO', kind: 5 },
                          { name: 'GAMUZA', kind: 5 },
                          { name: 'PLUMETI', kind: 5 },
                          { name: 'JACQUARD', kind: 5 },
                          { name: 'ALGODON', kind: 5 },
                          { name: 'GABARDINA', kind: 5 },
                          { name: 'POLIESTER', kind: 5 },
                          { name: 'FRANELA', kind: 5 },
                          { name: 'CREPE', kind: 5 },
                          { name: 'ENCAJE', kind: 5 },
                          { name: 'CUERO', kind: 5 },
                          { name: 'ECO CUERO', kind: 5 },
                          { name: 'COTELE', kind: 5 },
                          { name: 'LYCRA', kind: 5 },
                          { name: 'POPELINA', kind: 5 },
                          { name: 'CHIFFON', kind: 5 },
                          { name: 'PLISADO', kind: 5 },
                          { name: 'BRODERIE', kind: 5 },
                          { name: 'CROCHET', kind: 5 },
                          { name: 'RIBBED', kind: 5 },
                          { name: 'WAFFLE', kind: 5 },
                          { name: 'PIEL ', kind: 5 },
                          { name: 'PIEL SINTETICA', kind: 5 },
                          { name: 'LANA', kind: 5 },
                          { name: 'HILO', kind: 5 },
                          { name: 'OTRA', kind: 5 },

                          # prints: 6, PRINT
                          { name: 'FLORES', kind: 6 },
                          { name: 'TIE DYE', kind: 6 },
                          { name: 'PAISLEY', kind: 6 },
                          { name: 'ANIMAL PRINT', kind: 6 },
                          { name: 'GINHAM', kind: 6 },
                          { name: 'PRINCIPE DE GALES', kind: 6 },
                          { name: 'CAMUFLADO', kind: 6 },
                          { name: 'LOGO/FRASE', kind: 6 },
                          { name: 'CHEVRON (ZIGZAG)', kind: 6 },
                          { name: 'RAYAS', kind: 6 },
                          { name: 'PUNTOS', kind: 6 },
                          { name: 'TROPICAL', kind: 6 },
                          { name: 'LISO', kind: 6 },
                          { name: 'OTRO', kind: 6 },

                          # bottom_length_jeans: 7, POR LARGO (PANTALON)
                          { name: 'REGULAR', kind: 7 },
                          { name: 'CULOTTE (PANTORILLA)', kind: 7 },
                          { name: 'CROP (TOBILLO)', kind: 7 },

                          # bottom_length_dress: 15, POR LARGO (VESTIDO/ENTERITO/FALDA)
                          { name: 'MINI', kind: 15 },
                          { name: 'MIDI', kind: 15 },
                          { name: 'MAXI', kind: 15 },
                          { name: 'DESIGUAL ', kind: 15 },

                          # bottom_short_fit: 14, POR LARGO (SHORT)
                          { name: 'NORMAL', kind: 14 },
                          { name: 'CORTO', kind: 14 },
                          { name: 'BERMUDA', kind: 14 },
                          
                          # bottom_style: 8, POR TIRO
                          { name: 'ALTO (HIGH RISE)', kind: 8 },
                          { name: 'NORMAL (A LA CINTURA)', kind: 8 },
                          { name: 'LOW RISE (CORTE BAJO)', kind: 8 },

                          # jeans_fit: 9,POR FIT PANTALON
                          { name: 'FLARE', kind: 9 },
                          { name: 'RECTO', kind: 9 },
                          { name: 'PITILLO (SKINNY)', kind: 9 },
                          { name: 'WIDE ', kind: 9 },
                          { name: 'JOGGER', kind: 9 },
                          { name: 'BOYFRIEND', kind: 9 },
                          { name: 'MOM', kind: 9 },
                          { name: 'CORTE BOTA', kind: 9 },
                          { name: 'PLISADO', kind: 9 },
                          { name: 'OTRO', kind: 9 },

                          # top_size: 10, TALLA TOP
                          { name: 'XS', kind: 10 },
                          { name: 'S', kind: 10 },
                          { name: 'M', kind: 10 },
                          { name: 'L', kind: 10 },
                          { name: 'XL', kind: 10 },
                          { name: 'XXL', kind: 10 },

                          # bottom_size: 11, TALLA BOTTOM
                          { name: '32', kind: 11 },
                          { name: '34', kind: 11 },
                          { name: '36', kind: 11 },
                          { name: '38', kind: 11 },
                          { name: '40', kind: 11 },
                          { name: '42', kind: 11 },
                          { name: '44', kind: 11 },
                          { name: '46', kind: 11 },

                          # details: 12, DETALLES
                          { name: 'ENCAJE', kind: 12 },
                          { name: 'TULL', kind: 12 },
                          { name: 'FLECOS', kind: 12 },
                          { name: 'TACHAS', kind: 12 },
                          { name: 'DESTROY', kind: 12 },
                          { name: 'LENTEJUELAS', kind: 12 },
                          { name: 'BORDADO', kind: 12 },
                          { name: 'MOSTACILLAS', kind: 12 },
                          { name: 'CINTA', kind: 12 },
                          { name: 'NUDO', kind: 12 },
                          { name: 'TRANSPARENCIA', kind: 12 },
                          { name: 'OJETILLOS ', kind: 12 },
                          { name: 'CORDON/TIRA', kind: 12 },
                          { name: 'ACANALADO', kind: 12 },
                          { name: 'NIDO ABEJA', kind: 12 },
                          { name: 'BOTONES', kind: 12 },
                          { name: 'CIERRE', kind: 12 },
                          { name: 'OTRO', kind: 12 },
                          { name: 'NINGUNO', kind: 12 },

                          # color: 13, COLOR
                          { name: 'BEIGE', kind: 13 },
                          { name: 'NEGRO', kind: 13 },
                          { name: 'AZUL', kind: 13 },
                          { name: 'CAFÉ', kind: 13 },
                          { name: 'CREMA', kind: 13 },
                          { name: 'DORADO', kind: 13 },
                          { name: 'VERDE MILITAR', kind: 13 },
                          { name: 'GRIS', kind: 13 },
                          { name: 'MULTICOLOR', kind: 13 },
                          { name: 'AZUL MARINO', kind: 13 },
                          { name: 'NARANJO', kind: 13 },
                          { name: 'VERDE AGUA', kind: 13 },
                          { name: 'ROSADO', kind: 13 },
                          { name: 'MORADO', kind: 13 },
                          { name: 'LILA', kind: 13 },
                          { name: 'ROJO', kind: 13 },
                          { name: 'BURDEO', kind: 13 },
                          { name: 'PLATEADO', kind: 13 },
                          { name: 'BLANCO', kind: 13 },
                          { name: 'AMARILLO', kind: 13 },
                          { name: 'FUCSIA', kind: 13 },
                          { name: 'CALIPSO', kind: 13 },
                          { name: 'CELESTE', kind: 13 },
                          { name: 'DAMASCO', kind: 13 },
                          { name: 'VERDE PETROLEO', kind: 13 },
                          { name: 'OTRO', kind: 13 }
                        ])
