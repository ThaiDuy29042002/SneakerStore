# . Introduction

## 1.Requirement:
A. Name of system: SneakerStore.

B. Purpose: supply service to sell sneaker.

C. List all features:

- Login:Login account with userID and password. If the roleID is ‘AD’, the page will go to admin.jsp and if it is ‘US’, it will go to user.jsp.
- Create user: Only create a new user with roleID of ‘US’ by entring userID, fullName, password and confirm password. userID can not be the same as an existing userID.
- Admin:
  + Manage orders from users : by clicking on the userID, admin can see what the user ordered.
  + User management: 

      + Delete user.

      + Update: fullName and roleID.

- User: 
   + Order: view order, edit quantity, add cart, remove their choose.
   + Checkout.



## 2. Wirefram or screenshots of the system:


Login_page

![login_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/342923015_516259400525609_4863629304264852611_n.png?stp=dst-png_s206x206&_nc_cat=104&ccb=1-7&_nc_sid=aee45a&_nc_ohc=mHTXGIgVz6MAX-obNoI&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQQ_KYBG2SX6yiIHwOkSJ7luUxbpUhnNlD3mfDvaHzVyQ&oe=646C139F)

Create_page

![create user](https://scontent.xx.fbcdn.net/v/t1.15752-9/342972257_611960827489279_6490803745500085798_n.png?stp=dst-png_p75x225&_nc_cat=105&ccb=1-7&_nc_sid=aee45a&_nc_ohc=vLH1IrOGvQ0AX_rHmD3&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRDkJd9MX6NLMG4s2vCJVgTi2B1fsCNdGRKM0VLByLY8A&oe=646C0887)

Admin_page

![Admin_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/342565020_1185746255470753_7957745898955921447_n.png?stp=dst-png_s552x414&_nc_cat=108&ccb=1-7&_nc_sid=aee45a&_nc_ohc=ARltk7OxuZEAX-nK5Cw&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTZgF_ZmUQBtu_s6K2KU2Uhppz9ByuIeOY4uMTOoEQpPQ&oe=646FB561)

![Admin_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/342546146_980624179599111_3642877207495405508_n.png?stp=dst-png_p206x206&_nc_cat=101&ccb=1-7&_nc_sid=aee45a&_nc_ohc=ORVIoXYY68AAX9MPfyr&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdR80oEbkTji_uKtYDus-tBHQH9_oQAMSJlYOIChLHb9Ig&oe=646FAA5D)

DetailOrder_page

![DetailOrder_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/342567157_628913725802046_8954192779040289528_n.png?stp=dst-png_p206x206&_nc_cat=102&ccb=1-7&_nc_sid=aee45a&_nc_ohc=OJL_C9zp4qUAX-j1kDX&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRr-tIrYPsXjjsOB6XJyavEbwFWcL9kjsKEG5usj3m4dA&oe=646FA51E)

Uer_page

![Uer_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/341703842_189469497238658_4553736164424571721_n.png?stp=dst-png_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=aee45a&_nc_ohc=aaRhlgYTXbcAX8I3Flj&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQFOppUQ2rfq3NzYs8yDeiGRLoMAsS7yI6CIxmON91dZw&oe=646FC93A)

ViewCart_page

![ViewCart_page](https://scontent.xx.fbcdn.net/v/t1.15752-9/342032605_507643398090572_2933630216672624895_n.png?stp=dst-png_s480x480&_nc_cat=108&ccb=1-7&_nc_sid=aee45a&_nc_ohc=BOM3wunVq8MAX-z0R8r&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRLfWmpvcKe5SImnq7f6myWRN82F-CGZ7MZDQqZSIX9Ng&oe=646FD219)

![]()
## 3. Database design:
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/343020680_1267109930550335_4008447350565837558_n.png?stp=dst-png_s261x260&_nc_cat=110&ccb=1-7&_nc_sid=aee45a&_nc_ohc=flLe__Lj0qsAX8K7832&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdSuEVdkogBM15YWKtkfxgYXq8d6ABrqZhDDyib_uX3KWA&oe=646F517B)
## 4. System design:
![](https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.15752-9/341512686_179275781685563_2304716923343863180_n.png?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=eSVs9JA_0uMAX-rndXO&_nc_ht=scontent.fsgn2-6.fna&oh=03_AdQoQZBrTFSO3cGS1Kv-QP7ETF0Nn3k3TcIk1MSsjYTtBw&oe=646C25AC)

## 5. Conclusion and Discussion:

- During the development of this app, we learned:
  - Working as a team using github and understanding how to use it.
  - Understand how MVC2 works.
  - Know how to use bootstrap.
  - How to divide content that members do.
  - Know how an application works and its layout.

- Problems when implementing the project:

   - Not able to control the working time.
   - Difficulty using github: unable to create repository and push data.

- The pros of our application:

   - Manage products in the shop.
   - Easy to use.
   - Customer management.
   - Store guest information.
   - Save time buying.
   - Accessible anywhere.

- The cons of our application:

   - Most of the features are still quite simple and not in-depth for better support.