
A new Flutter application.

## Getting Started

Flutter’s first stable release of 2020 brought plenty to talk about Ranging from Performance boost to massive improvements in tooling.
But worked on widget called NavigationRail, 
which can be termed as a creative alternative to BottomNavigationBar. 
The both can also be used in tandem to create a seamless experience across devices.


## The usual NavigationRailDestination object looks like this.

NavigationRailDestination(
  icon: Icon(Icons.favorite_border),
  selectedIcon: Icon(Icons.favorite),
  label: Text('First'),
),

## Let’s start with the NavigationRail properties

1) destinations : This property takes a list of NavigationRailDestination objects. 
                  The list should contain 2 or more items. Standard stuff.

2) selectedLabelTextStyle & unselectedLabelTextStyle : Again, using these 2 properties, you can customize the look 
                                                       and feel of the text labels for selected/unselected states. 
                                                       You need to assign TextStyle objects to these properties.    
                                                       
3) labelType : takes an enum class NavigationRailLabelType value, 
               which gives you 3 choices :
                                  NavigationRailLabelType.none ,
                                  NavigationRailLabelType.selected,
                                  NavigationRailLabelType.all.
               Check out the illustration below. It should explain how the property can be used to hide/show the text labels.            
 4) selectedIndex : The index into destinations for the current selected NavigationRailDestination.  
 
 
 
 
 (https://user-images.githubusercontent.com/60923917/84161185-a21a5700-aa8c-11ea-8823-a1e9e1808f45.jpg
 
 
 
 
          and many more.....
          
          
                                        
                                                  ThankYou Developer's
      
                                            
                                                     
