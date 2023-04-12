#!/usr/bin/env roseus

(ros::load-ros-manifest "roseus")
(ros::roseus-add-msgs "jsk_recognition_msgs")

(require :fetch-interface "package://fetcheus/fetch-interface.l")
(setq *ri* (instance fetch-interface :init))
(ros::roseus "move-to-fetch")

;;set call-back function
(defun move-base-cb (msg)
  (let (x y z d pos move-x)
    (if (send msg :boxes)
	(progn
	  (setq pos (send (send (car (send msg :boxes)) :pose) :position))
	  (setq x (send pos :x))                                                                   
          (setq y (send pos :y))                                                                  
          (setq z (send pos :z))    
	  ;;(ros::ros-info "pos")
	  (ros::ros-info (format nil "x=~A, y=~A, z=~A" x y z))
	  ;;move-base
	  (setq d (atan y x))
	  (send *ri* :go-velocity 0.1 0 d 1000)
	  )
      (progn
	(ros::ros-warn "no position info")
	)
      )
    )
  )
    ;;(setq pos (send (send (send msg :boxes) :pose) :position))
    ;;(if (send msg :boxes)
	;;(progn
	  ;;(setq x (send pos :x))
	  ;;(setq y (send pos :y))
	  ;;(setq z (send pos :z))
	  ;;calc and move
	  ;;(ros::ros-info (format nil "x=~A, y=~A, z=~A" x y z))
	  ;;(ros::ros-info "pos")
	  ;;)
      ;;(progn
	;;(ros::ros-warn "no position info")
     




;;subscribe msg
(ros::subscribe "/head_camera_remote/depth_registered/boxes_sonoda" jsk_recognition_msgs::BoundingBoxArray #'move-base-cb)

(warn "(main)~%")
(defun main()
  (do-until-key
   (ros::spin-once)
   (ros::sleep)
   ))

(main)
