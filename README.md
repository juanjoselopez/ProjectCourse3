# <h1 align="center">Proyecto de Curso 3: Getting and Cleaning Data</h1>
### <div align="center">Especialización en Data Science</div>
##### <div align="center">Entrega "Getting and Cleaning Data Course Project"</div>

Esta entrega se realiza bajo los <a href="https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project">criterios de la asignación</a>:
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

La entrega comenzó a realizarse con la creación de este repositorio en GitHub a fecha <i>25 de Noviembre del 2020</i>, desde aquí continuaremos con el desarrollo del encargo en los días venideros.

### I. Acerca del Dataset: *"Human Activity Recognition Using Smartphones Dataset"*

Se descargó la **versión 1.0** del dataset en cuestión, el cual corresponde con una recopilación de datos de "reconocimiento de actividades humanas", construida a partir de las observaciones a 30 sujetos que realizaron actividades de la vida cotidiana (ADL por sus siglas en inglés) mientras llevan un smartphone a la altura de la cintura, con acelerómetros y giróscopos incorporados en el mismo.

Las actividades medidas fueron seis:
  1. Caminar.
  2. Subir escaleras.
  3. Bajar escaleras.
  4. Sentarse.
  5. Pararse.
  6. Acostarse.
  
La recopilación de las observaciones corresponden a lecturas de los sensores a una frecuencia de 50Hz, de las tres coordenadas rectangulares y sus respectivas rotaciones. Adicionalmente se particionó "aleatoriamente" en una proporción de entrenamiento del 70% y una porción de prueba del 30%.

Las señales de los sensores sufrieron las siguientes intervenciones:
  1. Preprocesamiento a través de filtros de ruido.
  2. Generación de muestras de ancho fijo de 2,56 seg. y overlap del 50% (128 lecturas por ventana).
  3. Separación de la señal por filtro de paso bajo (Butterworth) en aceleración corporal e influencia de la fuerza de gravedad (que se supone de baja frecuencia, en torno a 0,3Hz).
  4. De cada ventana se obtuvo un vector de características calculando variables desde el dominio del tiempo y la frecuencia.

### II. Acerca de los Files Adjuntos

La mayor parte de los files del comprimido están en **formato .txt**, y están repartidos en tres niveles (UCI HAR Dataset\test || train\Inertial Signals). En total son 28 files de texto, entre los que podemos destacar los siguientes:

  - ***"features.txt"***; contiene las 561 variables involucradas en el vector de características.
  - ***"feature_info.txt"***; información sobre las variables usadas en el vector anteriormente mencionado.
  - ***"X_train.txt"***; Datos del conjunto de entrenamiento.
  - ***"y_train.txt"***; Etiquetas del conjunto de entrenamiento.
  - ***"X_test.txt"***; Datos del conjunto de prueba.
  - ***"y_test.txt"***; Etiquetas del conjunto de prueba.
  - ***"subject_train.txt"***; Identificador del sujeto que desempeña la actividad para cada ventana de muestra (en rango de 1 a 30), conjunto de entrenamiento.
  - ***"subject_test.txt"***; Identificador del sujeto que desempeña la actividad para cada ventana de muestra (en rango de 1 a 30), conjunto de prueba.
  - ***"total_acc_x || y || z_train.txt"***; Señal de la aceleración en el eje X || Y || Z en unidades de 'G', conjunto de entrenamiento.
  - ***"total_acc_x || y || z_test.txt"***; Señal de la aceleración en el eje X || Y || Z en unidades de 'G', conjunto de prueba.
  - ***"body_acc_x || y || z_train.txt"***; Aceleración corporal al sustraer de la aceleración total la acción de la gravedad, conjunto de entrenamiento.
  - ***"body_acc_x || y || z_test.txt"***; Aceleración corporal al sustraer de la aceleración total la acción de la gravedad, conjunto de prueba.
  - ***"body_gyro_x || y || z_train.txt"***; Velocidad angular medida por el giróscopo incluido en el dispositivo para el axis X || Y || Z, conjunto de entrenamiento.
  - ***"body_gyro_x || y || z_test.txt"***; Velocidad angular medida por el giróscopo incluido en el dispositivo para el axis X || Y || Z, conjunto de prueba.
