# scoped_model_example

The Flutter app, **Scoped Model Example**, shows a state management approach using the **scoped_model** package. The app has two separate screens: ***a list of fruits and a cart***. The list of fruits represented by **MyList** widget and the cart represented by **MyCart** widget. The list of fruits screen consist of a scrolling view of many fruit items (**FruitItem**) and add button (**AddButton**). The cart screen includes a list of added fruits (**CartList**) and total price of added fruits (**CartTotal**).

This is **a widget tree** of the **Scoped Model Example** app:

![](https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/widgettree.png)

# A Flutter app structure:

# lib/main.dart

In order to track states of the object, they need to be provided to widget further down the tree.
The **Scoped_model** is a set of utilities that allow to pass a data Model from parent Widget down to its descendants.
In this project the **ScopedModel** Widget is used in order to pass two data Models (in this case: **ListModel** and **CartModel**) via one data Model **CombainModel**, deep down the tree and to listen it for changes. **ScopedModelDescendant** Widget used in order to find the appropriate **ScopedModel** in the Widget tree. It rebuild automatically whenever the Model notifies that changes has taken place. When add button is pressed **CartModel** notifies that changes has taken place and **ScopedModelDescendant** Widget (**MyCart** screen) gets rebuilded automatically.


# lib/models/*

This directory contains of three data Models : **ListModel**, **CartModel**, **CombinModel** and an object **Fruit** skeleton. One data Model (In this case, **CombinModel** are provided in the main.dart. This class represent the app state.

The **ListModel** data Model extends **Model** class.

The **CartModel** data Model contains of **Fruit** class and  extends the **ListModel** data Model.

The **CombainModel** data Model extends **Model** class with **CartModel** and **ListModel** data Models.


# lib/screens/*

This directory contains the widgets (**MyList** and **MyCart**) used to construct the two screens of the app with other widgets: ***a list of fruits and a cart***.

# lib/widgets/*

This directory contains widgets (**FruitItem**, **AddButton**, **CartList**, and **CartTotal**) used to construct the two screens of the app: ***a list of fruits and a cart***.

A widget **FruitItem** has access to the current state of the list of fruits (**ListModel**) via **CombinModel** instance.

The widgets **AddButton**, **CartList** and **CartTotal** have access to the current state of the **CombinModel** via **ScopedModelDescendant**. The ScopedModelDescendant Widget used to find the appropriate **ScopedModel** in the Widget tree.

# lib/style/*

This directory contains of the app **Text Style:** ***fontFamily***, ***fontWeight***, ***fontSize*** and ***text color***.

# IOS Platform
<p align="left">
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/1i.png" width="300" height="600"/> 
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/2i.png" width="300"height="600"/> 
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/3i.png" width="300" height="600"/>
</p>

# Android Platform
<p align="left" >
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/1a.png" width="250" height="580" hspace="50"/> 
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/2a.png" width="250"height="580"/> 
<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/3a.png" width="250" height="580" hspace="50"/>
</p> 



