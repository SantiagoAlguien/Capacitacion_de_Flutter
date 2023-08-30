# Forma CORRECTA🥇 de hacer un SplashScreen en Flutter (✅ 100% explicado)

El SplashScreen es una animacion que aparece cuando se abre una aplicacion y exitste una forma correcte y incorrecta

Nos toca dirigirnos a la carpeta android en donde podremos implementar el SplashScreen para hacerlo de la manera correcta 

C:\Users\Luis Carlos Triana\Documents\Capacitacion_de_Flutter\FlutterPruebas\nombreapp\android\app\src\main\res\drawable

los drawable son las carpetas importantes 

identificamos en el tipo de color que vamos a usar en los archivos que estan en C:\Users\Luis Carlos Triana\Documents\Capacitacion_de_Flutter\FlutterPruebas\nombreapp\android\app\src\main\res\values\color.xml donde cambiamos el color que queremos poner 

    <?xml version="1.0" encoding="utf-8"?>
    <resources>
    <color name="primary">#FF0000</color> el color que podemos insertar en el archivo 
    </resources>


despues en la carpeta drable que esta en el mismo rango de res insertamos el archivp bg_color.xml

    C:\Users\Luis Carlos Triana\Documents\Capacitacion_de_Flutter\FlutterPruebas\nombreapp\android\app\src\main\res\drawable-v21\bg_color.xml

dentro de este archivo llamamos al color asi 

    <!-- bg_color.xml -->
    <?xml version="1.0" encoding="UTF-8"?>
    <shape xmlns:android="http://schemas.android.com/apk/res/android">

          <solid android:color="@color/primary" />

    </shape>

y en el archivo launch_background.xml llamamos a nuestro archivo bg_color asi 

    <?xml version="1.0" encoding="utf-8"?>
    <!-- Modify this file to customize your launch splash screen -->
    <layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@drawable/bg_color" /> Aqui llamamos a la carpeta de nuestro color 

    <!-- You can insert your own image assets here -->
    <!-- <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/launch_image" />
    </item> -->
    </layer-list>

y con estos cambios ya nuestra aplicacion sale con un color por defecto en el inico y luego esscogemos la imagen que queremos que aparezca 

para esto nos dirijimos en el archivo launch_background.xml o bueno en los 2 arhcivos

y descomentamos la linea de item

    <?xml version="1.0" encoding="utf-8"?>
    <!-- Modify this file to customize your launch splash screen -->
    <layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@drawable/bg_color" />

    <!-- You can insert your own image assets here -->
    <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/download 1.png" />
    </item> 

    </layer-list>

antes tuvimos que haber agregado la imagen que queremos que aparezca en las carpetas de mipmap

si se llega a presentar un error en la ejecucion debes limpiar con "flutter clean" en el terminal

toda la confifuracion estara en la carpte de al lado para que se pueda implementear 