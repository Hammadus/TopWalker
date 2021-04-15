App Spec Design - Top Walker
===

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
* An App that motivates users to become physically Active by giving an opportunity to compete with other users around.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category: Health and Fitness**
- **Mobile: IOS**
- **Story: Meant for people to get moving**
- **Market: All ages**
- **Habit: yes**
- **Scope: big**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can sign up for a new account
* User can login with username and password
* User can view the record of their steps taken (steps measured through Health API)

* User can add other user(s) as a friend to the FriendList
* User can see the detailed info of other user in the Friendlist

* User can Create a new activity session 
* User can view the ID assigned to specific session
* User can choose/Enter the Money Amount for the session being created
* User can Add friend(s) from the Friends List to the session being created
* User can choose time period for the session

* User can view the time left till the session ends
* User can see the TIME UP screen with the name of the winner
* User can choose Payment Method to pay the winner

* User can view their Profile info with Name, Age, Weight, Height in Profile/Setting Tab

**Optional Nice-to-have Stories**
* User can edit their info after sign up screen is gone
* User can unfriend other users from their friendList
* User can view the other members in the current session
* User can see the steps taken by other members in the session
* User can join other session by entering session id #
* User can join other sessions on the basis of their Neighborhood, City or State

### 2. Screen Archetypes

* Create Session Screen
   * session screen allows one to add others to the group 
   * people will have the ability to add others to the task
   * User make an account and add other people/friends 
* Progress Screen
   * timeline using the google api/Apple Health API
   * tracks steps walked over time in calendar view as well
* End session Screen
   * when the session is over, users will have to pick a payment option to send to the winner

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* user profile
* timeline

**Flow Navigation** (Screen to Screen)

* Launch Screen
   * Create session
   * profile tabe, timeline tab
* Sesssion Screen
   * lists relevant info for creating/inviting people to the session
   * leads to end screen where link redirects to payment apps

## Wireframes
[Add picture of your hand sketched wireframes in this section]

![View_Sketch](https://user-images.githubusercontent.com/42243986/114639374-a9f1eb80-9c9b-11eb-82a2-d8615c45f758.jpg)


### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]



