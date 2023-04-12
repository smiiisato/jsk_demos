(ros::roseus "miraikan")

(ros::load-ros-package "std_msgs")
;; (ros::roseus-add-msgs "miraikan_demo")
(ros::load-ros-package "miraikan_demo")
(setq *mode-srv* "/demo_mode")

(setq TIME_OFFSET 3.2)

(defun call_demo (mode time_delay)
  (let* ((req (instance miraikan_demo::ModeRequest :init
			:mode mode :time_delay time_delay))
	 res)
    (format t "waiting service ...~%")
    (ros::wait-for-service *mode-srv*)
    (setq res (ros::service-call *mode-srv* req))
    (format t "called service~%")
    )
  )

;; memories talk mode
(defun episode_introduction (req)
  (let ((m (send req :response)))
    (call_demo 0 (+ TIME_OFFSET 17.0))
    m)
  )

(defun episode_0_1 (req)
  (let ((m (send req :response)))
    (call_demo 1 (+ TIME_OFFSET 4.7))
    m)
  )

(defun episode_0_2 (req)
  (let ((m (send req :response)))
    (call_demo 2 (+ TIME_OFFSET 1.0))
    m)
  )

(defun episode_1_1 (req)
  (let ((m (send req :response)))
    (call_demo 3 (+ TIME_OFFSET 4.0))
    m)
  )

(defun episode_1_2 (req)
  (let ((m (send req :response)))
    (call_demo 4 (+ TIME_OFFSET 7.5))
    m)
  )

(defun episode_1_3 (req)
  (let ((m (send req :response)))
    (call_demo 5 (+ TIME_OFFSET 5.5))
    m)
  )

(defun episode_1_4 (req)
  (let ((m (send req :response)))
    (call_demo 6 (+ TIME_OFFSET 2.0))
    m)
  )

(defun episode_2 (req)
  (let ((m (send req :response)))
    (call_demo 7 (+ TIME_OFFSET 0.5))
    (ros::duration-sleep 6.0)
    (call_demo 8 (+ TIME_OFFSET 8.0))
    (ros::duration-sleep 5.0)
    (call_demo 9 (+ TIME_OFFSET 0.5))
    m)
  )

(defun episode_3_1 (req)
  (let ((m (send req :response)))
    (call_demo 10 (+ TIME_OFFSET 5.5))
    m)
  )

(defun episode_3_2 (req)
  (let ((m (send req :response)))
    (call_demo 11 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 7.0)
    (call_demo 12 (+ TIME_OFFSET 1.5))
    m)
  )

(defun episode_3_3 (req)
  (let ((m (send req :response)))
    (call_demo 13 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 4.0)
    (call_demo 14 (+ TIME_OFFSET 0.5))
    m)
  )

(defun episode_4_1 (req)
  (let ((m (send req :response)))
    (call_demo 15 (+ TIME_OFFSET 4.5))
    (ros::duration-sleep 4.0)
    (call_demo 16 (+ TIME_OFFSET 2.0))
    m)
  )

(defun episode_4_2 (req)
  (let ((m (send req :response)))
    (call_demo 17 (+ TIME_OFFSET 0.5))
    (ros::duration-sleep 6.0)
    (call_demo 18 (+ TIME_OFFSET 4.5))
    m)
  )

(defun episode_5_1 (req)
  (let ((m (send req :response)))
    (call_demo 19 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 6.0)
    (call_demo 20 (+ TIME_OFFSET 7.0))
    m)
  )

(defun episode_5_2 (req)
  (let ((m (send req :response)))
    (call_demo 21 (+ TIME_OFFSET 3.0))
    (ros::duration-sleep 5.0)
    (call_demo 22 (+ TIME_OFFSET 4.0))
    m)
  )

(defun episode_summary (req)
  (let ((m (send req :response)))
    (call_demo 23 (+ TIME_OFFSET 4.0))
    (ros::duration-sleep 5.0)
    (call_demo 24 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 25 (+ TIME_OFFSET 11.7))
    (ros::duration-sleep 5.0)
    (call_demo 26 (+ TIME_OFFSET 6.0))
    (ros::duration-sleep 6.0)
    (call_demo 27 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 28 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 29 (+ TIME_OFFSET 1.7))
    (ros::duration-sleep 11.0)
    (call_demo 30 (+ TIME_OFFSET 7.5))
    m)
  )

(defun episode_6 (req)
  (let ((m (send req :response)))
    (call_demo 31 (+ TIME_OFFSET 2.5))
    (ros::duration-sleep 5.0)
    (call_demo 32 (+ TIME_OFFSET 0.0))
    m)
  )

;; no memories talk mode
(defun explanation_introduction (req)
  (let ((m (send req :response)))
    (call_demo 0 (+ TIME_OFFSET 17.0))
    m)
  )

(defun explanation_0_1 (req)
  (let ((m (send req :response)))
    (call_demo 1 (+ TIME_OFFSEt 2.5))
    m)
  )

(defun explanation_0_2 (req)
  (let ((m (send req :response)))
    (call_demo 2 (+ TIME_OFFSET 0.0))
    m)
  )

(defun explanation_1_1 (req)
  (let ((m (send req :response)))
    (call_demo 3 (+ TIME_OFFSET 2.0))
    m)
  )

(defun explanation_1_2 (req)
  (let ((m (send req :response)))
    (call_demo 4 (+ TIME_OFFSET 7.0))
    m)
  )

(defun explanation_1_3 (req)
  (let ((m (send req :response)))
    (call_demo 5 (+ TIME_OFFSET 1.0))
    m)
  )

(defun explanation_1_4 (req)
  (let ((m (send req :response)))
    (call_demo 6 (+ TIME_OFFSET 0.0))
    m)
  )

(defun explanation_2 (req)
  (let ((m (send req :response)))
    (call_demo 8 (+ TIME_OFFSET 3.0))
    m)
  )

(defun explanation_3_1 (req)
  (let ((m (send req :response)))
    (call_demo 10 (+ TIME_OFFSET 0.5))
    m)
  )

(defun explanation_3_2 (req)
  (let ((m (send req :response)))
    (call_demo 11 (+ TIME_OFFSET 1.5))
    m)
  )

(defun explanation_3_3 (req)
  (let ((m (send req :response)))
    (call_demo 13 (+ TIME_OFFSET 5.0))
    m)
  )

(defun explanation_4_1 (req)
  (let ((m (send req :response)))
    (call_demo 15 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 11.0)
    (call_demo 16 (+ TIME_OFFSET 1.5))
    m)
  )

(defun explanation_4_2 (req)
  (let ((m (send req :response)))
    (call_demo 18 (+ TIME_OFFSET 1.5))
    m)
  )

(defun explanation_5_1 (req)
  (let ((m (send req :response)))
    (call_demo 19 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 6.0)
    (call_demo 20 (+ TIME_OFFSET 1.0))
    m)
  )

(defun explanation_5_2 (req)
  (let ((m (send req :response)))
    (call_demo 21 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 6.0)
    (call_demo 22 (+ TIME_OFFSET 3.5))
    m)
  )

(defun explanation_summary (req)
  (let ((m (send req :response)))
    (call_demo 23 (+ TIME_OFFSET 4.0))
    (ros::duration-sleep 5.0)
    (call_demo 24 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 25 (+ TIME_OFFSET 11.7))
    (ros::duration-sleep 5.0)
    (call_demo 26 (+ TIME_OFFSET 6.0))
    (ros::duration-sleep 6.0)
    (call_demo 27 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 28 (+ TIME_OFFSET 1.0))
    (ros::duration-sleep 10.0)
    (call_demo 29 (+ TIME_OFFSET 1.7))
    (ros::duration-sleep 11.0)
    (call_demo 30 (+ TIME_OFFSET 7.5))
    m)
  )

(defun explanation_6 (req)
  (let ((m (send req :response)))
    (call_demo 31 (+ TIME_OFFSET 0.0))
    (ros::duration-sleep 5.0)
    (call_demo 32 (+ TIME_OFFSET 0.0))
    m)
  )

;; common function
(defun greeting (req)
  (let ((m (send req :response)))
    (call_demo 33 1.0)
    m)
  )

(defun look_at_kochisan (req)
  (let ((m (send req :response)))
    (call_demo 34 1.0)
    m)
  )

(defun end_greeting (req)
  (let ((m (send req :response)))
    (call_demo 35 1.0)
    m)
  )

(defun listening (req)
  (let ((m (send req :response)))
    (call_demo 36 1.0)  ;; attract_audience
    (ros::duration-sleep 2.0)
    (call_demo 37 1.0)  ;; look_at_audience
    ;; (ros::duration-sleep 8.0)
    ;; (call_demo 36 1.0)
    ;; (ros::duration-sleep 2.0)
    ;; (call_demo 37 1.0)
    ;; (ros::duration-sleep 8.0)
    ;; (call_demo 34 1.0)  ;; look_at_kochisan
    m)
  )

(defun hello (req)
  (let ((m (send req :response)))
    (call_demo 38 1.0)
    m)
  )

;; funcs -> rossrv msg
(ros::load-ros-package "std_srvs")
(defvar *process-rate* 5)
;; (setq tm (ros::time-now))

(defun main_memories ()
  (ros::advertise-service "episode_introduction" std_srvs::Empty #'episode_introduction)
  (ros::advertise-service "episode_0_1" std_srvs::Empty #'episode_0_1)
  (ros::advertise-service "episode_0_2" std_srvs::Empty #'episode_0_2)
  (ros::advertise-service "episode_1_1" std_srvs::Empty #'episode_1_1)
  (ros::advertise-service "episode_1_2" std_srvs::Empty #'episode_1_2)
  (ros::advertise-service "episode_1_3" std_srvs::Empty #'episode_1_3)
  (ros::advertise-service "episode_1_4" std_srvs::Empty #'episode_1_4)
  (ros::advertise-service "episode_2" std_srvs::Empty #'episode_2)
  (ros::advertise-service "episode_3_1" std_srvs::Empty #'episode_3_1)
  (ros::advertise-service "episode_3_2" std_srvs::Empty #'episode_3_2)
  (ros::advertise-service "episode_3_3" std_srvs::Empty #'episode_3_3)
  (ros::advertise-service "episode_4_1" std_srvs::Empty #'episode_4_1)
  (ros::advertise-service "episode_4_2" std_srvs::Empty #'episode_4_2)
  (ros::advertise-service "episode_5_1" std_srvs::Empty #'episode_5_1)
  (ros::advertise-service "episode_5_2" std_srvs::Empty #'episode_5_2)
  (ros::advertise-service "episode_summary" std_srvs::Empty #'episode_summary)
  (ros::advertise-service "episode_6" std_srvs::Empty #'episode_6)
  (ros::advertise-service "greeting" std_srvs::Empty #'greeting)
  (ros::advertise-service "look_at_kochisan" std_srvs::Empty #'look_at_kochisan)
  (ros::advertise-service "end_greeting" std_srvs::Empty #'end_greeting)
  (ros::advertise-service "listening" std_srvs::Empty #'listening)
  (ros::advertise-service "hello" std_srvs::Empty #'hello)
  (ros::rate *process-rate*)
  (format t "robot behavior server start~%")
  (while (ros::ok)
    ;; (when (> (send (ros::time- (ros::time-now) tm) :to-sec) 10)
    ;;   (call_demo 34 1.0)
    ;;   (setq tm (ros::time-now)))
    (ros::spin-once)
    (ros::sleep)
    )
  (format t "robot behavior server end~%")
  )

(defun main_no_memories ()
  (ros::advertise-service "episode_introduction" std_srvs::Empty #'explanation_introduction)
  (ros::advertise-service "episode_0_1" std_srvs::Empty #'explanation_0_1)
  (ros::advertise-service "episode_0_2" std_srvs::Empty #'explanation_0_2)
  (ros::advertise-service "episode_1_1" std_srvs::Empty #'explanation_1_1)
  (ros::advertise-service "episode_1_2" std_srvs::Empty #'explanation_1_2)
  (ros::advertise-service "episode_1_3" std_srvs::Empty #'explanation_1_3)
  (ros::advertise-service "episode_1_4" std_srvs::Empty #'explanation_1_4)
  (ros::advertise-service "episode_2" std_srvs::Empty #'explanation_2)
  (ros::advertise-service "episode_3_1" std_srvs::Empty #'explanation_3_1)
  (ros::advertise-service "episode_3_2" std_srvs::Empty #'explanation_3_2)
  (ros::advertise-service "episode_3_3" std_srvs::Empty #'explanation_3_3)
  (ros::advertise-service "episode_4_1" std_srvs::Empty #'explanation_4_1)
  (ros::advertise-service "episode_4_2" std_srvs::Empty #'explanation_4_2)
  (ros::advertise-service "episode_5_1" std_srvs::Empty #'explanation_5_1)
  (ros::advertise-service "episode_5_2" std_srvs::Empty #'explanation_5_2)
  (ros::advertise-service "episode_summary" std_srvs::Empty #'explanation_summary)
  (ros::advertise-service "episode_6" std_srvs::Empty #'explanation_6)
  (ros::advertise-service "greeting" std_srvs::Empty #'greeting)
  (ros::advertise-service "look_at_kochisan" std_srvs::Empty #'look_at_kochisan)
  (ros::advertise-service "end_greeting" std_srvs::Empty #'end_greeting)
  (ros::advertise-service "listening" std_srvs::Empty #'listening)
  (ros::advertise-service "hello" std_srvs::Empty #'hello)
  (ros::rate *process-rate*)
  (format t "robot behavior server start~%")
  (while (ros::ok)
    (ros::spin-once)
    (ros::sleep)
    )
  (format t "robot behavior server end~%")
  )