# scoped_model_example

A Flutter app example, **Scoped Model Example**, shows a state management approach using the **scoped_model** package. The app has two separate screens: ***a list of fruits and a card***. The list of fruits represented by **MyList** widget and the cart represented by **MyCart** widget. The list of fruits screen includes the app bar (**MyAppBar**) and a scrolling view of many fruit items (**MyFruitItem**). The cart screen includes a list of added fruits (**CartList**) and total price of added fruits (**CartTotal**).

This is **a widget tree** of the **Scoped Model Example** app:

![](https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/widget_tree1.png)

# A Flutter app structure:

# lib/main.dart

In order to track states of the object, they need to be provided to widget further down the tree.
The **Scoped_model** is a set of utilities that allow to pass a data Model from parent Widget down to its descendants.
In this project the **ScopedModel** Widget is used in order to pass two data Models (in this case: **ListModel** and **CartModel**) via one data Model **CombainModel**, deep down the tree and to listen it for changes. 


# lib/models/*

This directory contains of three data Models : **ListModel**, **CartModel**, **CombinModel** and an object **Fruit** skeleton. One classes (In this case, **CombinModel** are provided in the main.dart. This class represent the app state.

The **ListModel** data Model extends **Model** class.

The **CartModel** data Model contains of **Fruit** class and  extends the **ShoppingModel** data Model.

The **CombainModel** data Model extends **Model** class with **CartModel** and **ListModel** data Models.


# lib/screens/*

This directory contains the widgets (**MyList** and **MyCart**) used to construct the two screens of the app with other widgets: ***a list of fruits and a cart***.

# lib/widgets/*

This directory contains widgets (**MyAppBar**, **MyFruitItem**, **AddButton**, **CartList**, and **CartTotal**) used to construct the two screens of the app: ***a list of fruits and a cart***.

A widget **MyFruitItem** has access to the current state of the list of fruits (**ListModel**) via **CombinModel** instance.

The widgets **AddButton** and **CartList**, have access to the current state of the cart (**CartModel**) via **ScopedModelDescendant**. The ScopedModelDescendant Widget used to find the appropriate **ScopedModel** in the Widget tree.

# lib/style/*

This directory contains of the app **Text Style:** ***fontFamily***, ***fontWeight***, ***fontSize*** and ***text color***.


<img src="https://github.com/CodingFlutter/scoped_model_example/blob/main/assets/images/1.png" width="150" height="300">

