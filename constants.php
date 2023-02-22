<?php
    /* Order status codes
        0 -  new order
        1 -  canceled
        2 -  Accepted
        3 -  assign to delivery
        4 -  out for delivery
        5 -  delivered
        6 -  user canceled
		7 -  Order Pending for online orders
    */
    define("ORD_NEW_ORDER",0);
    define("ORD_CANCELED",1);
    define("ORD_ACCEPTED",2);
    define("ORD_ASSIGN_TO_DELIVERY",3);
    define("ORD_OUT_FOR_DELIVERY",4);
    define("ORD_DELIVERED",5);
    define("ORD_USER_CANCELED",6);
    define("ORD_PENDING",7);
?>