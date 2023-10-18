-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2023 at 01:15 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thefitk9_thefitcare_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(9, 'Butt Increase', '2023-03-13 21:36:44', '2023-03-13 21:36:44'),
(10, 'Neck Workout', '2023-03-13 21:38:16', '2023-03-13 21:38:16'),
(11, 'Collar Bone Exercise', '2023-03-13 21:38:37', '2023-03-13 21:38:37'),
(12, 'Improved Forward Head Posture', '2023-03-13 21:39:10', '2023-03-13 21:39:10'),
(13, 'Butt Reduce', '2023-03-15 20:32:27', '2023-03-15 20:32:27'),
(14, 'Arm Workout', '2023-03-22 15:44:35', '2023-03-22 15:44:35'),
(15, 'Face Yoga', '2023-03-22 17:01:47', '2023-03-22 17:01:47'),
(16, 'Breast Reduce ', '2023-04-03 17:17:22', '2023-04-03 17:17:22'),
(17, 'Back workout', '2023-04-04 21:13:34', '2023-04-04 21:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ex_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ex_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ex_duration` tinyint(4) NOT NULL,
  `ex_thumbnail_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ex_video_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `ex_name`, `ex_description`, `ex_duration`, `ex_thumbnail_url`, `ex_video_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'New Ex 1', 'NA', 22, '1678694163_Reduced Forehead stress line -Right.jpg', '1678694163_Butt (Right).m4v', 0, '2023-03-13 18:56:03', '2023-03-15 21:27:19', '2023-03-15 21:27:19'),
(15, 'Neck 4', 'NA', 30, '1678704162_For Bigger eye\'s-exercise.jpg', '1678704162_Squeezereversehold.mp4', 0, '2023-03-13 21:42:42', '2023-03-15 21:27:06', '2023-03-15 21:27:06'),
(17, 'Collar Bone 2', 'NA', 22, '1678704431_O pose-bigger eye.jpg', '1678704431_Squeezereversehold.mp4', 0, '2023-03-13 21:47:11', '2023-03-15 21:26:58', '2023-03-15 21:26:58'),
(19, 'Forward Head 2', 'NA', 30, '1678787131_For Bigger eye\'s-exercise.jpg', '1678787131_Squeezereversehold.mp4', 0, '2023-03-14 20:45:31', '2023-03-15 21:26:49', '2023-03-15 21:26:49'),
(24, 'Back Leg Raise (Left)', 'Stand straight at ease on the floor with the support of a chair or any surface that’s height reaches till your waist. Now lift your right leg backward up and bring it down on its same position, repeat this action again. Similarly lift left leg backward up and bring it down on its same position. Continue with the same movement again and again. Breathe normally during this movement.', 30, '1678876273_Back Leg Raise (Left).jpg', '1678876273_Back Leg Raise (Left).m4v', 1, '2023-03-15 21:31:13', '2023-03-15 21:31:13', NULL),
(25, 'Back Leg Raise (Right)', 'Stand straight at ease on the floor with the support of a chair or any surface that’s height reaches till your waist. Now lift your right leg backward up and bring it down on its same position, repeat this action again. Similarly lift left leg backward up and bring it down on its same position. Continue with the same movement again and again. Breathe normally during this movement.', 30, '1678876457_Back Leg Raise (Right).jpg', '1678876457_Back Leg Raise (Right).m4v', 1, '2023-03-15 21:34:17', '2023-03-15 21:34:17', NULL),
(26, 'Both Leg Stretch', 'Stand on the floor. Open your legs wide apart. Place hands on the floor by bending upper body by the waist forward down. Move toward right hand side by walking with hands and bend right leg by the knee and straighten up your left leg. Similarly, walk toward left-hand side with hands and bend left leg by knee while right leg straight. Repeat the same movement again and take rest after few seconds.', 30, '1678877577_Both leg Stretch.jpg', '1678877577_Both Leg Stretch.m4v', 1, '2023-03-15 21:52:57', '2023-03-15 21:52:57', NULL),
(27, 'Butt Kickers', 'Stand straight on the floor by placing hands on your either side of the waist. Now lift your right lower leg towards hip in a way that your heel faces your hip. Bring the leg down to the floor and lift the left lower leg back up in the same way. Continue to create this motion a little fast. Breathe in and out during this process. This will increase your stamina more.', 30, '1678877732_Butt Kickers.jpg', '1678877732_Butt Kickers.m4v', 1, '2023-03-15 21:55:32', '2023-03-15 21:55:32', NULL),
(28, 'Clam Shells (Left)', 'Lay on your right hand side on the floor. Your body from head to hip and legs should be bend normally. Rest left leg on right leg. Your head should rest on right arm which is bent backwards creating (V) of it and put left arm in front of you in a bending pose by placing hand palm way down in front of chest. Now without lifting left foot, lift left knee up from the right knee and rest it down on right knee again. Repeat this up-down movement fewer times. Breathe normally during this motion.', 30, '1678877894_Calm Shells (Left).jpg', '1678877894_Calm Shells (Left).m4v', 1, '2023-03-15 21:58:14', '2023-03-15 21:58:14', NULL),
(29, 'Clam Shells (Right)', 'Lay on your left-hand side on the floor. Your body from head to hip and legs should be bend normally. Rest right leg on left leg. Your head should rest on left arm which is bent backwards creating (V) of it and put right arm in front of you in a bending pose by placing hand palm way down in front of chest. Now without lifting right foot, lift right knee up from the left knee and rest it down on left knee again. Repeat this up-down movement fewer times. Breathe normally during this motion.\n', 30, '1678877996_Calm Shells (Right).jpg', '1678877996_Calm Shells (Right).m4v', 1, '2023-03-15 21:59:56', '2023-03-15 21:59:56', NULL),
(30, 'Child Pose Angle Two', 'Place your hands on the floor palm way down a bit ahead from the shoulders with shoulders width space between them. Your knees should be placed in the way of hands and they should be widely opened. While your lower legs rest on the floor by feet joined together. Your body from head to lower back should be straight and hips slightly lifted up. Now pull your body back down to the floor in a way that from hands till hips your body is aligned straight. In the same way bring body forward to its original position. By breathing normally continue to perform this exercise repeatedly. {CAMERA ANGLE FROM THE SIDE LEFT}', 30, '1678878283_Child Pose Angle Two.jpg', '1678878283_Child Pose Angle Two.m4v', 1, '2023-03-15 22:04:43', '2023-03-15 23:12:45', NULL),
(31, 'Child Pose', 'Place your hands on the floor palm way down a bit ahead from the shoulders with shoulders width space between them. Your knees should be placed in the way of hands and they should be widely opened. While your lower legs rest on the floor by feet joined together. Your body from head to lower back should be straight and hips slightly lifted up. Now pull your body back down to the floor in a way that from hands till hips your body is aligned straight. In the same way bring body forward to its original position. By breathing normally continue to perform this exercise repeatedly.', 30, '1678878471_Child Pose.jpg', '1678878471_Child Pose.m4v', 1, '2023-03-15 22:07:51', '2023-03-15 22:35:48', NULL),
(32, 'Cross Bent Knee Lift (Left)', '\nPlace your hands palm way down on the floor facing towards heels beneath the shoulders and arms straight. There should be shoulders width space between hands. Place your left leg on the floor in a bending position while bend right leg inwards to left hand side and rest right ankle on left leg thigh just above knee. Lift the body up from the floor and from head to knee, align it in a straight line. While stand on toe as body is lifted up. Bring the body down above the floor & by moving backward slightly, stand on your heel. Take rest and repeat the same movement by breathing in-out.\n', 30, '1678878572_Cross Knee Lifts (Left).jpg', '1678878572_Cross Knee Lifts (Left).m4v', 1, '2023-03-15 22:09:32', '2023-03-15 22:35:43', NULL),
(33, 'Cross Bent Knee Lift (Right)', 'Place your hands palm way down on the floor facing toward heels beneath the shoulders and arms straight. There should be shoulders width space between hands. Place your right leg on the floor in a bending position while bend left leg inwards to right hand side and rest right ankle on left leg thigh just above knee. Lift the body up from the floor and from head to knee, align it in a straight line. While stand on toe as body is lifted up. Bring the body down above the floor & by moving backward slightly, stand on your heel. Take rest and repeat the same movement by breathing in-out.\n', 30, '1678878696_Cross Knee Lifts (Right).jpg', '1678878696_Cross Knee Lifts (Right).m4v', 1, '2023-03-15 22:11:36', '2023-03-15 22:35:39', NULL),
(34, 'Donkey Kick (Left)', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your left leg in a bending pose back up, your left leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.\n', 30, '1678878920_Donkey Kick (Left).jpg', '1678878920_Donkey Kick (Left).m4v', 1, '2023-03-15 22:15:20', '2023-03-15 22:35:34', NULL),
(35, 'Donkey Kick (Right)', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your right leg in a bending pose back up, your right leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.\n', 30, '1678879007_Donkey Kick (Right).jpg', '1678879007_Donkey Kick (Right).m4v', 1, '2023-03-15 22:16:47', '2023-03-15 22:35:29', NULL),
(36, 'Frog Kicks', '\nLay on the floor by your belly. Bend your arms inwards to the chest and place one on the other. Rest your chin on hands. Bend the legs in a way that lower legs are lifted above the floor and knee are beneath the feet. Now in the bending pose of leg lift right leg straight up and rest it down on the floor. Similarly lift left leg up in the air and rest it down on the floor. Take rest in between and continue with the same movement after rest.\n', 30, '1678879340_Frog Kicks.jpg', '1678879340_Frog Kicks.mp4', 1, '2023-03-15 22:22:20', '2023-03-15 22:35:24', NULL),
(37, 'Hands and Knees Leg Raise Pulse (Left)', 'Place your hands on the floor palm way down beneath the shoulders and shoulders width space between them and arms straight. Place your right leg in a bending position as your knee rest on the floor under hip and lower leg stand on toe. Lift the left leg straight back up in the air as you align your body from head to left foot in a straight line. Now in the same pose move left leg up and halfway down till hip height. Continue with the same movement repeatedly taking rest in-between.', 30, '1678879517_Hands and Knee Leg Raise Pulse (Left).jpg', '1678879517_Hands And Knee Leg Raise Pulse (Left).m4v', 1, '2023-03-15 22:25:17', '2023-03-15 22:35:18', NULL),
(38, 'Hands & Knees Leg Raise Pulse (Right)', '\nPlace your hands on the floor palm way down beneath the shoulders and shoulders width space between them and arms straight. Place your left leg in a bending position as your knee rest on the floor under hip and lower leg stand on toe. Lift the right leg straight back up in the air as you align your body from head to right foot in a straight line. Now in the same pose move right leg up and halfway down till hip height. Continue with the same movement repeatedly taking rest in-between.\n', 30, '1678879597_Hands and Knee Leg Raise Pulse (Right).jpg', '1678879597_Hands And Knee Leg Raise Pulse (Right).m4v', 1, '2023-03-15 22:26:37', '2023-03-15 22:35:05', NULL),
(39, 'Hip Abduction (Left)', 'Lay on your left-hand side by bending body from waist, place right leg over the left one, place right arm in front of chest in a bending pose, while hand resting on fingers and palm lifted up the ground, rest left arm straight on the floor and head lifted in air. Now lift your right leg straight up in the air and rest it down on left leg. Continue with the same movement for couple of seconds. Then take rest. Breathe normally during the workout.\n', 30, '1678879689_Hip Abduction (Left).jpg', '1678879689_Hip Abduction (Left).m4v', 1, '2023-03-15 22:28:09', '2023-03-15 22:35:02', NULL),
(40, 'Hip Abduction (Right)', 'Lay on your right-hand side by bending body from waist, place left leg over the right one, place left arm in front of chest in a bending pose, while hand resting on fingers and palm lifted up the ground, rest right arm straight on the floor and head lifted in the air. Now lift your left leg straight up in the air and rest it down on right leg. Continue with the same movement for couple of seconds. Then take rest. Breathe normally during the workout.\n', 30, '1678880949_Hip Abduction (Right).jpg', '1678880949_Hip Abduction (Right).m4v', 1, '2023-03-15 22:49:09', '2023-03-15 22:49:09', NULL),
(41, 'Hip Extension (Left)', 'Lay straight by your belly on the floor. Place both arms over each other bending inwards and rest your forehead on the arms. Now lift left arm straight up in the air and rest it down on the floor. Repeat this movement few times, then take rest. Breathe in-out normally and slowly during this action. Repeat this up-down movement of leg again.\n', 30, '1678881035_Hip Extension (Left).jpg', '1678881035_Hip Extension (Left).m4v', 1, '2023-03-15 22:50:35', '2023-03-15 22:50:35', NULL),
(42, 'Hip Extension (Right)', 'Lay straight by your belly on the floor. Place both arms over each other bending inwards and rest your forehead on the arms. Now lift right arm straight up in the air and rest it down on the floor. Repeat this movement few times, then take rest. Breathe in-out normally and slowly during this action. Repeat this up-down movement of leg again.\n', 30, '1678881102_Hip Extension (Right).jpg', '1678881102_Hip Extension (Right).m4v', 1, '2023-03-15 22:51:42', '2023-03-15 22:51:42', NULL),
(43, 'Hip Raise Angle Two', 'Lay down on the floor by bending your legs with feet shoulders width apart. Place your hands at ease on the floor, belly or thighs. By putting pressure on feet and shoulder blades down to the floor, lift the body up above the floor. Start to move in up and down motion in this position. Repeat this movement for few times.', 30, '1678881220_Hip Raise Angle Two.jpg', '1678881220_Hip Raise Angle Two.m4v', 1, '2023-03-15 22:53:40', '2023-03-15 23:13:23', NULL),
(44, 'Hip Raise', 'Lay on your back on the floor straight, while place your hands by your sides and legs bent with shoulders width distance between knees and feet. By putting pressure on feet and hands, lift hips above the floor in a way that align your body straight from chest till knees. Bring the hips down to the floor and again lift them upwards. Continue with this movement again and again taking rest in between.', 30, '1678881432_Hip Raise.jpg', '1678881432_Hip Raise.m4v', 1, '2023-03-15 22:57:12', '2023-03-15 22:57:12', NULL),
(45, 'Leg Pull Back (Left)', 'Place your hands on the floor palm way down and open to a shoulder\'s width space. Stand lower body on toes. Raise your left leg straight back up and rest it down. Repeat the movement again on same side.', 30, '1678881666_Leg Pull Back (Left).jpg', '1678881666_Leg Pull Back (Left).m4v', 1, '2023-03-15 23:01:06', '2023-03-15 23:14:12', NULL),
(46, 'Leg Pull Back (Right)', 'Place your hands on the floor palm way down and open to a shoulder\'s width space. Stand lower body on toes. Raise your right leg straight back up and rest it down. Repeat the movement again on same side.', 30, '1678881816_Leg Pull Back (Right).jpg', '1678881816_Leg Pull Back (Right).m4v', 1, '2023-03-15 23:03:36', '2023-03-15 23:14:37', NULL),
(47, 'Leg Pull Front', 'Sit on the floor. Place hands at back of the body palm way down beneath the shoulders blade. Arms should be straight and shoulders width apart. Rest your heels on the floor with legs straight and small space between knees and feet. Now lift the hips above the floor by creating pressure on hands and heels. In the same pose lift right leg straight up from the ground and bring it down to the floor, now lift left leg up and bring it down. Repeat this movement on each leg one by one.\n', 30, '1678882128_Leg Pull Front.jpg', '1678882128_Leg Pull Front.m4v', 1, '2023-03-15 23:08:48', '2023-03-15 23:08:48', NULL),
(48, 'Pigeon Pose (Left)', 'Sit on your lower legs by placing palms on the thighs. By moving forward, place your hands palm way down beneath the shoulders and shoulders width apart. Now take your right leg straight back and rest it down from knee to toe on the floor, while drag arms straight forward in the way of shoulders and rest left foot under right thigh as left leg bent. Hold in this pose for few seconds then return to your starting position step by step. Repeat this process again.\n', 30, '1678882235_Pigeon Pose (Left).jpg', '1678882235_Pigeon Pose (Left).m4v', 1, '2023-03-15 23:10:35', '2023-03-15 23:10:35', NULL),
(49, 'Pigeon Pose (Right)', 'Sit on your lower legs by placing palms on the thighs. By moving forward, place your hands palm way down beneath the shoulders and shoulders width apart. Now take your left leg straight back and rest it down from knee to toe on the floor, while drag arms straight forward in the way of shoulders and rest right foot under left thigh as right leg bent. Hold in this pose for few seconds then return to your starting position step by step. Repeat this process again.\n', 30, '1678882301_Pigeon Pose (Right).jpg', '1678882301_Pigeon Pose (Right).m4v', 1, '2023-03-15 23:11:41', '2023-03-15 23:11:41', NULL),
(50, 'Quadruped Hip Extension (Left)', 'Stand in a cow pose by placing hands palm way down on the floor beneath the shoulders and shoulders width distance between them. Bend your legs by resting knees under the hips and lower legs stand on toes. From head to hip the body should be straight. Now lift your left leg straight back up in the air and hold for a second, then bring the leg down towards the floor at its same position. Take the leg back again and repeat the same movement time to time.\n', 30, '1678883866_Quadruped Hip Extension (Left).jpg', '1678883866_Quadruped Hip Extension (Left).m4v', 1, '2023-03-15 23:37:46', '2023-03-15 23:37:46', NULL),
(51, 'Quadruped Hip Extension (Right)', 'Stand in a cow pose by placing hands palm way down on the floor beneath the shoulders and shoulders width distance between them. Bend your legs by resting knees under the hips and lower legs stand on toes. From head to hip the body should be straight. Now lift your right leg straight back up in the air and hold for a second, then bring the leg down towards the floor at its same position. Take the leg back again and repeat the same movement time to time.\n', 30, '1678883941_Quadruped Hip Extension (Right).jpg', '1678883941_Quadruped Hip Extension (Right).m4v', 1, '2023-03-15 23:39:01', '2023-03-15 23:39:01', NULL),
(52, 'Side Leg Windshield Wiper (Left)', 'Place your hands on the floor palm way down a bit ahead from head. Arms should be straight, and they should have shoulders width space between them. Lift your hips above the ground high and legs should be straight while they stand on toes with shoulders width space between them also. Now lift the left leg up and by making curve in the air, move the left foot over right foot and rest it on the floor. Bring the leg back and continue with the same movement.\n', 30, '1678884144_Side Leg Windshiled Wiper (Left).jpg', '1678884144_Side Leg Windshiled Wiper (Left).m4v', 1, '2023-03-15 23:42:24', '2023-03-15 23:42:24', NULL),
(53, 'Side Leg Windshield Wiper (Right)', 'Place your hands on the floor palm way down a bit ahead from head. Arms should be straight and they should have shoulders width space between them. Lift your hips above the ground high and legs should be straight while they stand on toes with shoulders width space between them also. Now lift the right leg up and by making curve in the air, move the right foot over right foot and rest it on the floor. Bring the leg back and continue with the same movement.\n', 30, '1678884226_Side Leg Windshiled Wiper (Right).jpg', '1678884226_Side Leg Windshiled Wiper (Right).m4v', 1, '2023-03-15 23:43:46', '2023-03-15 23:43:46', NULL),
(54, 'Switch Kick (Left)', 'Stand on the floor hip side down by making bench of the body straight by placing hands palm way down on floor beneath the shoulders and arms straight. Hands fingers should be facing towards heels side. Lift your body above the floor straight by bending legs and placing feet on floor. Your feet should be under the knees and from chest to knees, the body should be aligned straight in a line. Kick upwards with the right leg and bring leg down. Then kick upwards with the left leg and rest leg down. Repeat the same workout again and again. \n', 30, '1678884329_Switch Kick (Left).jpg', '1678884329_Switch Kick (Left).m4v', 1, '2023-03-15 23:45:29', '2023-03-15 23:49:40', NULL),
(55, 'Switch Kick (Right)', 'Stand on the floor hip side down by making bench of the body straight by placing hands palm way down on floor beneath the shoulders and arms straight. Hands fingers should be facing towards heels side. Lift your body above the floor straight by bending legs and placing feet on floor. Your feet should be under the knees and from chest to knees, the body should be aligned straight in a line. Kick upwards with the right leg and bring leg down. Then kick upwards with the left leg and rest leg down. Repeat the same workout again and again. \n', 30, '1678884407_Switch Kick (Right).jpg', '1678884407_Switch Kick (Right).m4v', 1, '2023-03-15 23:46:47', '2023-03-15 23:46:47', NULL),
(56, 'Upward Leg Opener', 'Lay down on the floor straight by your back. Place arms by your sides and palm-way down. From head to toes your body should be straight. Now raise your legs straight up and resting hips down. Open your legs widely on either side down. Take your legs back up and join them together. Continue this movement for few seconds. Take rest afterwards.\n', 30, '1678884564_Upward Leg Opener.jpg', '1678884564_Upward Leg Opener.m4v', 1, '2023-03-15 23:49:24', '2023-03-15 23:49:24', NULL),
(57, 'Background Head Excretion', 'Sit on the chair. From head to hip body should be straight. Rest hands on your thighs. While space between the feet should be normal. By stretching neck, move head backward by tucking chin in and bring head to starting position. Repeat this motion few times.\n', 30, '1678952266_Background Head Excretion.jpg', '1678952266_Background Head Excretion.mp4', 1, '2023-03-16 18:37:46', '2023-03-16 18:37:46', NULL),
(58, 'Backward Stretching (Left)', 'Pull your hand up and right leg half bent towards and left leg bent down and backward, stretch your both hands backwards, this posture makes your back muscles strong. Hold this position for (1 minute).', 30, '1678952592_Backward Stretching (Left).jpg', '1678952592_Backward Stretching (Left).m4v', 1, '2023-03-16 18:43:12', '2023-03-17 16:57:13', NULL),
(59, 'Backward Stretching (Right)', 'Pull your hand up and right leg half bent towards and left leg bent down and backward, stretch your both hands backwards, this posture makes your back muscles strong. Hold this position for (1 minute).', 30, '1678952684_Backward Stretching (Right).jpg', '1678952684_Backward Stretching (Right).m4v', 1, '2023-03-16 18:44:44', '2023-03-17 16:56:27', NULL),
(60, 'Head Circles (Left)', 'Sit on the chair. Place hands on the thighs. Straighten up your body from head to hip. Now start to move the head in the motion of rotation clockwise first, then rotate head anti-clockwise. Keep on doing this movement for some time then take rest and repeat the process.\n', 30, '1678952872_Head Circles (Left).jpg', '1678952872_Head Circles (Left).m4v', 1, '2023-03-16 18:47:52', '2023-03-16 18:47:52', NULL),
(61, 'Head Circles (Right)', 'Sit on the chair. Place hands on the thighs. Straighten up your body from head to hip. Now start to move the head in the motion of rotation clockwise first, then rotate head anti-clockwise. Keep on doing this movement for some time then take rest and repeat the process.\n', 30, '1678952972_Head Circles (Right).jpg', '1678952972_Head Circles (Right).m4v', 1, '2023-03-16 18:49:32', '2023-03-16 18:50:07', NULL),
(62, 'Head Excretion', 'In this exercise put your both hands to your back and pull your head towards and backwards do this exercise for (1 minute)\n', 30, '1678953254_Head Excretion.jpg', '1678953254_Head Excretion.m4v', 1, '2023-03-16 18:54:14', '2023-03-16 18:54:14', NULL),
(63, 'Head Pressure', 'Stand straight on the floor with feet open at shoulder width space. Lift arms up till shoulders in bending position towards chest. Put one hand on the other. Rest your face by chin on the hands and put pressure downwards with chin. Without moving hands, pressurize hands by face as much as possible. Bring body to rest and repeat the described process again.\n', 30, '1678953361_Head Pressure.jpg', '1678953361_Head Pressure.m4v', 1, '2023-03-16 18:56:01', '2023-03-16 18:56:01', NULL),
(64, 'Hold the Lotus', 'Sit on the floor in a lotus flower pose or legs bend inwards resting by each other. Lift both arms straight up over the head and join hands. Now start to stretch the body up. Stretch as much possible as you can. Hold in this position for few seconds. Bring body back to ease.\n', 30, '1678953443_Hold The Lotus.jpg', '1678953443_Hold The Lotus.m4v', 1, '2023-03-16 18:57:23', '2023-03-16 18:57:23', NULL),
(65, 'Looking Over the Shoulder Angle 2 (Left)', 'Sit on the chair or a surface above the floor with your neck and back straight and hands rest on thighs. Turn your head towards right shoulder and start to look over the shoulder straight. Stay in this pose for some time and take rest. After rest repeat this movement same way again.\n', 30, '1678953578_Looking Over the Shoulder Angle 2 (Left).jpg', '1678953578_Looking Over The Shoulder Angle 2 (Left).m4v', 1, '2023-03-16 18:59:38', '2023-03-16 18:59:38', NULL),
(66, 'Looking Over the Shoulder Angle 2 (Right)', 'Sit on the chair or a surface above the floor with your neck and back straight and hands rest on thighs. Turn your head towards right shoulder and start to look over the shoulder straight. Stay in this pose for some time and take rest. After rest repeat this movement same way again.\n', 30, '1678953822_Looking Over the Shoulder Angle 2 (Left).jpg', '1678953822_Looking Over The Shoulder Angle 2 (Right).m4v', 1, '2023-03-16 19:03:42', '2023-03-16 19:03:42', NULL),
(67, 'Neck Back Massage', 'In this exercise just Stand and put your both hands back to the neck, now do massage with both hands finger to relax the neck muscles. Do this (1 minute)\n', 30, '1678953889_Neck Back Massage.jpg', '1678953889_Neck Back Massage.m4v', 1, '2023-03-16 19:04:49', '2023-03-16 19:04:49', NULL),
(68, 'Neck Flexion', 'Sit on the chair or a surface above the floor with your neck and back straight and place hands palm way down on thighs. Move your head down forward first then take the head down in backward direction while looking towards your cheeks. During this movement stretch your neck as much as you can.\n', 30, '1678953947_Neck Flexion.jpg', '1678953947_Neck Flexion.m4v', 1, '2023-03-16 19:05:47', '2023-03-16 19:05:47', NULL),
(69, 'Neck Twists (Left)', 'Sit on the surface above the floor or on a chair. Place your hands on thighs. Straighten up your neck and backbone. Turn your face toward right shoulder by keeping eyes on nose and hold. Now turn head towards left shoulder in the same way and hold. In between this movement stretches neck muscles as much as you can. Take rest and repeat the movement again.\n', 30, '1678954035_Neck Twists (Left).jpg', '1678954035_Neck Twists (Left).m4v', 1, '2023-03-16 19:07:15', '2023-03-16 19:07:37', NULL),
(70, 'Neck Twists (Right)', 'Sit on the surface above the floor or on a chair. Place your hands on thighs. Straighten up your neck and backbone. Turn your face toward right shoulder by keeping eyes on nose and hold. Now turn head towards left shoulder in the same way and hold. In between this movement stretches neck muscles as much as you can. Take rest and repeat the movement again.\n', 30, '1678954136_Neck Twists (Right).jpg', '1678954136_Neck Twists (Right).m4v', 1, '2023-03-16 19:08:56', '2023-03-16 19:08:56', NULL),
(71, 'Shoulder Circles (Back)', 'Stand at ease on the floor with a small space between the feet and hands rest by the sides. Now lift the shoulders up and draw circles with them. Continue to rotate shoulders in one direction. Take rest for few seconds and proceed with the same exercise.\n', 30, '1678954287_Shoulder Circles (Back).jpg', '1678954287_Shoulder Circles (Back).m4v', 1, '2023-03-16 19:11:27', '2023-03-16 19:11:27', NULL),
(72, 'Shoulder Circles (Front)', 'Stand at ease on the floor with a small space between the feet and hands rest by the sides. Now lift the shoulders up and draw circles with them. Continue to rotate shoulders in one direction. Take rest for few seconds and proceed with the same exercise.\n', 30, '1678954348_Shoulder Circles (Front).jpg', '1678954348_Shoulder Circles (Front).m4v', 1, '2023-03-16 19:12:28', '2023-03-16 19:12:28', NULL),
(73, 'Shrug', 'Sit straight on the chair by resting hands on your thighs. Gradually raise the shoulders up high, while tucking the neck in. Bring the shoulders down to ease by stretching neck. Continue to do these up and down movements of shoulders. Breathe normally during exercise.\n', 30, '1678954413_Shrug.jpg', '1678954413_Shrug.m4v', 1, '2023-03-16 19:13:33', '2023-03-16 19:13:33', NULL),
(74, 'Side Slopes (Left)', 'Stand straight on the floor with shoulder width space between feet. Lift arms up and take them back by your head. Now in this position bend towards right hand side. Similarly bend towards left hand side. Continue with this movement for some time. During this movement your body should be straight.\n', 30, '1678954503_Side Slope (Left).jpg', '1678954503_Side Slope (Left).m4v', 1, '2023-03-16 19:15:03', '2023-03-16 19:15:03', NULL),
(75, 'Side Slopes (Right)', 'Stand straight on the floor with shoulder width space between feet. Lift arms up and take them back by your head. Now in this position bend towards right hand side. Similarly bend towards left hand side. Continue with this movement for some time. During this movement your body should be straight.\n', 30, '1678954575_Side Slope (Right).jpg', '1678954575_Side Slope (Right).m4v', 1, '2023-03-16 19:16:15', '2023-03-16 19:16:15', NULL),
(76, 'Side Tilts (Left)', 'Sit on the chair or a surface above the floor with your neck and back straight and hands rest on thighs. Take your head down towards the shoulder gently while looking upon your nose. Hold in this position for few seconds. Bring the head back to straight position. During this movement of head stretch your neck muscles as much as you can.\n', 30, '1678954692_Side Tilts (Left).jpg', '1678954692_Side Tilts (Left).m4v', 1, '2023-03-16 19:18:12', '2023-03-16 19:18:12', NULL),
(77, 'Side Tilts (Right)', 'Sit on the chair or a surface above the floor with your neck and back straight and hands rest on thighs. Take your head down towards the shoulder gently while looking upon your nose. Hold in this position for few seconds. Bring the head back to straight position. During this movement of head stretch your neck muscles as much as you can.\n', 30, '1678958543_Side Tilts (Right).jpg', '1678958543_Side Tilts (Right).m4v', 1, '2023-03-16 20:22:23', '2023-03-16 20:22:23', NULL),
(78, 'Sipping', 'Sit on the chair straight. Lift arms up in a bending position and take hands at the back of head and hold there. Now take your head back down by your hands, and then bring it back. Take head back down again. Continue to perform this action few times. Then take rest.\n', 30, '1678958603_Sipping.jpg', '1678958603_Sipping.m4v', 1, '2023-03-16 20:23:23', '2023-03-16 20:23:23', NULL),
(79, 'Slopes in Lotus (Left)', 'Sit on the floor by bending one leg inward to the other leg thigh and outer leg should be bending in and place foot on inner leg shin (lower leg). Raise both arms straight above the head and join both hands on the top. In the same position start to bend upper body towards right hand side and then to the left hand side. Repeat this movement few times and take rest.\n', 30, '1678958697_Slopes In Lotus (Left).jpg', '1678958697_Slopes In Lotus (Left).m4v', 1, '2023-03-16 20:24:57', '2023-03-16 20:24:57', NULL),
(80, 'Slopes in Lotus (Right)', 'Sit on the floor by bending one leg inward to the other leg thigh and outer leg should be bending in and place foot on inner leg shin (lower leg). Raise both arms straight above the head and join both hands on the top. In the same position start to bend upper body towards right hand side and then to the left hand side. Repeat this movement few times and take rest.\n', 30, '1678958752_Slopes In Lotus (Right).jpg', '1678958752_Slopes In Lotus (Right).m4v', 1, '2023-03-16 20:25:52', '2023-03-16 20:25:52', NULL),
(81, 'Surface Back Massage (Left)', 'In this exercise stand on the floor and take your one hand to the back neck and other hand to your eye just to relax your muscles and stronger.\n', 30, '1678958812_Surface Back Massage (Left).jpg', '1678958812_Surface Back Massage (Left).m4v', 1, '2023-03-16 20:26:52', '2023-03-16 20:26:52', NULL),
(82, 'Surface Back Massage (Right)', 'In this exercise stand on the floor and take your one hand to the back neck and other hand to your eye just to relax your muscles and stronger.\n', 30, '1678958857_Surface Back Massage (Right).jpg', '1678958857_Surface Back Massage (Right).m4v', 1, '2023-03-16 20:27:37', '2023-03-16 20:27:37', NULL),
(83, 'Surface Massage 2', 'In this exercise stand on the floor and take your both hands to your neck and tap with your fingers, apply medium pressure and press your neck muscles.\n', 30, '1678958904_Surface Massage 2.jpg', '1678958904_Surface Massage 2.m4v', 1, '2023-03-16 20:28:24', '2023-03-16 20:28:24', NULL),
(84, 'The Bird', 'Sit straight on the chair. Lift your arms aside down to the shoulders and hands slightly moved backwards. Stretch your chin forward to the way of neck. Hold in this pose for few seconds. Take rest while breathing in-out. Continue with the exercise as described.\n', 30, '1678958961_The Bird.jpg', '1678958961_The Bird.m4v', 1, '2023-03-16 20:29:21', '2023-03-16 20:29:21', NULL),
(85, 'The Circles', '\nStand straight on the floor with feet wide. Lift your arms up like an airplane. Start to rotate arms in the same pose clockwise, then after few rotations, rotate arms anti-clockwise. Take rest and continue with the arm movement.\n', 30, '1678959025_The Circles.jpg', '1678959025_The Circles.m4v', 1, '2023-03-16 20:30:25', '2023-03-16 20:30:25', NULL),
(86, 'The Clap', 'Stand straight on the floor. The space between the feet should be shoulder width. Lift the arms straight like airplane to shoulders side. Take arms up above the head and clap. Bring arms down back beside the either shoulder. Repeat the clapping again. \n', 30, '1678959082_The Clap.jpg', '1678959082_The Clap.m4v', 1, '2023-03-16 20:31:22', '2023-03-16 20:31:22', NULL),
(87, 'The Frame (Left)', 'Sit on the chair straight. Rest left hand on thigh. Place right hand on left shoulder by bending from elbow. Turn your head towards right shoulder. Hold in this position for few seconds. Stretch chin muscles by slightly lifting up. Take rest and repeat the movement.\n', 30, '1678959142_The Frame (Left).jpg', '1678959142_The Frame (Left).m4v', 1, '2023-03-16 20:32:22', '2023-03-16 20:32:22', NULL),
(88, 'The Frame (Right)', 'Sit on the chair straight. Rest left hand on thigh. Place right hand on left shoulder by bending from elbow. Turn your head towards right shoulder. Hold in this position for few seconds. Stretch chin muscles by slightly lifting up. Take rest and repeat the movement.\n', 30, '1678959190_The Frame (Right).jpg', '1678959190_The Frame (Right).m4v', 1, '2023-03-16 20:33:10', '2023-03-16 20:33:10', NULL),
(89, 'The Panther', 'Stand your body on knees, lower legs on toes joined together and arms straight in a way that from hands to hip they should be aligned straight. Now start to push shoulder joints down to towards the floor. Create up-down movement of the joint. Keep on doing this action repeatedly by taking rest.\n', 30, '1678959245_The Panther.jpg', '1678959245_The Panther.m4v', 1, '2023-03-16 20:34:05', '2023-03-16 20:34:05', NULL),
(90, 'The Shoulders (left)', 'Just simply stand on the floor and relax your body and move your head to the left side stretch your head as you can, hold this position for (1 minute)\n', 30, '1678959301_The Shoulders (left).jpg', '1678959301_The Shoulders (Left).m4v', 1, '2023-03-16 20:35:01', '2023-03-16 20:35:01', NULL),
(91, 'The Shoulders (Right)', 'Just simply stand on the floor and relax your body and move your head to the right side stretch your head as you can, hold this position for (1 minute)\n', 30, '1678959367_The Shoulders (Right).jpg', '1678959367_The Shoulders (Right).m4v', 1, '2023-03-16 20:36:07', '2023-03-16 20:36:07', NULL),
(92, 'Tilts Back', 'Sit on the chair or a surface above the floor with your neck and back straight and hand rest on thighs. Take your head back gently while looking upon your lips. Hold in this position for few seconds. Bring the head back to straight position. During this movement of head stretch your neck as much as you can.\n', 30, '1678959420_Tilts Back.jpg', '1678959420_Tilts Back.m4v', 1, '2023-03-16 20:37:00', '2023-03-16 20:37:00', NULL),
(93, 'Trapezoid Stretching (Left)', 'Sit on the chair straight. Place the right arm at the back of your body in bending pose. Lift the left hand up and hold head top with it. By pressurizing head towards left shoulder with left hand, start to move head up-down towards side. Put left hand at back now and right hand on top of head and repeat the same motion on left hand side. While bending head towards shoulders, stretch neck as much as possible.\n', 30, '1678959480_Trapezoid Stretching (Left)).jpg', '1678959480_Trapezoid Stretching (Left)).m4v', 1, '2023-03-16 20:38:00', '2023-03-16 20:38:00', NULL),
(94, 'Trapezoid Stretching (Right)', 'Sit on the chair straight. Place the right arm at the back of your body in bending pose. Lift the left hand up and hold head top with it. By pressurizing head towards left shoulder with left hand, start to move head up-down towards side. Put left hand at back now and right hand on top of head and repeat the same motion on left hand side. While bending head towards shoulders, stretch neck as much as possible.\n', 30, '1678959532_Trapezoid Stretching (Right).jpg', '1678959532_Trapezoid Stretching (Right).m4v', 1, '2023-03-16 20:38:52', '2023-03-16 20:38:52', NULL),
(95, 'Twists (Left)', 'Sit on the chair. Straighten up your neck and back. Lift your arms up at back of your head in bending position and hold hands. Twist body towards right hand side and bring left elbow slightly forward. Hold in this pose for some time and return back. Take rest and continue with the exercise.\n', 30, '1678959612_Twists (Left).jpg', '1678959612_Twists (Left).m4v', 1, '2023-03-16 20:40:12', '2023-03-16 20:40:12', NULL),
(96, 'Twists (Right)', 'Sit on the chair. Straighten up your neck and back. Lift your arms up at back of your head in bending position and hold hands. Twist body towards right hand side and bring left elbow slightly forward. Hold in this pose for some time and return back. Take rest and continue with the exercise.\n', 30, '1678959685_Twists (Right).jpg', '1678959685_Twists (Right).m4v', 1, '2023-03-16 20:41:25', '2023-03-16 20:41:25', NULL),
(97, 'Zig Zag', 'Stand on your knees by resting lower legs on toes. Place arms by your sides. Bend towards back and at the same time lift arms in front to the way of chest. This will help to maintain the body balance. Straighten up the body and put arms down. Repeat the bending movement again.', 30, '1678959759_Zig Zag.jpg', '1678959759_Zig Zag.m4v', 1, '2023-03-16 20:42:39', '2023-03-17 16:55:38', NULL),
(98, 'Double chin lift – Center', 'Put your hand on your chest or shoulder, breath in and breath out and look first and with your eyes only look toward the ceiling and you can move your chin slightly towards and feel a good sensation on your neck. \n', 30, '1678960099_Double chin lift - Center.jpg', '1678960099_Double Chin Lift - Center.mp4', 1, '2023-03-16 20:48:19', '2023-03-16 20:48:19', NULL),
(99, 'Double chin lift – Left', 'Put your hand on your chest or shoulder, breath in an breath out and look first and with your eyes only look toward the ceiling and you can move your chin slightly towards and feel a good sensation on your neck and come down and you can combine these poses together, back to the center, look up and other side pucker the mouth.\n', 30, '1678960195_Double chin lift - Left.jpg', '1678960195_Double Chin Lift - Left.m4v', 1, '2023-03-16 20:49:55', '2023-03-16 20:49:55', NULL),
(100, 'Double chin lift – Right', 'Posture is important, open your chest, and open your heart. Breathe in from the nose, and breathe out and then pucker your mouth slightly and lift your chin slightly up in a 45-degree angle and feel a nice sensation on the side of your neck and another side. Back to the center and another side.\n', 30, '1678960338_Double chin lift - Right.jpg', '1678960338_Double Chin Lift - Right.m4v', 1, '2023-03-16 20:52:18', '2023-03-16 20:52:18', NULL),
(101, 'Fish pose - neck massage', 'Make fish pose, do your face upwards the ceiling with this pose now take two fingers and do start massage with under the jawline and end with the center of the collar bone.\n', 30, '1678960486_Fish pose - neck massage.jpg', '1678960486_Fish Pose - Neck Massage.m4v', 1, '2023-03-16 20:54:46', '2023-03-16 20:54:46', NULL),
(102, 'kissing sound towards ceiling', 'Kissing sound up to the ceiling, and back down to the 10 second.\n', 30, '1678961162_kissing sound towards ceiling.jpg', '1678961162_Kissing Sound Towards Ceiling.m4v', 1, '2023-03-16 21:06:02', '2023-03-16 21:06:02', NULL),
(103, 'Neck and chin Massage', 'Back your hand to the back and up your face to the ceiling than center 10-15 times.\nIn this exercise just Stand and put your both hands back to the neck, now do massage with both hands finger to relax the neck muscles. Do this (1 minute)\n', 30, '1678961237_Neck and chin Massage.jpg', '1678961237_Neck And Chin Massage.m4v', 1, '2023-03-16 21:07:17', '2023-03-16 21:07:17', NULL),
(104, 'Neck massage', 'Look your chin down, and rest your neck with your fingertip look up, rest your jaw muscles. Do massage for (1 minute)\n', 30, '1678961305_Neck Back Massage.jpg', '1678961305_Neck Back Massage.m4v', 1, '2023-03-16 21:08:25', '2023-03-16 21:08:25', NULL),
(105, 'Neck stretch', 'Put your all fingers on neck, Stretch looks up as can u position and hold, it 5-10 second.\n', 30, '1678961430_Neck streatch.jpg', '1678961430_Neck Streatch.m4v', 1, '2023-03-16 21:10:30', '2023-03-16 21:10:30', NULL),
(106, 'Neck tapping massage.', 'Tap to the neck, jawline with both hands on the tap to the jawline towards the neck. Do this exercise for (1 minute)\n', 30, '1678961494_Neck tapping massage.jpg', '1678961494_Neck Tapping Massage.m4v', 1, '2023-03-16 21:11:34', '2023-03-16 21:11:34', NULL),
(107, 'Resistance Flexion (Left)', 'Just stand on the floor take your both hands on your ear and press with medium pressure, now turn on left side slowly, do this exercise for (1 minute)\n', 30, '1678961543_Resistence Flexion (Left).jpg', '1678961543_Resistence Flexion (Left).m4v', 1, '2023-03-16 21:12:23', '2023-03-16 21:12:23', NULL),
(108, 'Resistance Flexion (Right)', 'Just stand on the floor take your both hands on your ear and press with medium pressure, now turn on right side slowly, do this exercise for (1 minute)\n', 30, '1678961669_Resistence Flexion (Right).jpg', '1678961669_Resistence Flexion (Right).m4v', 1, '2023-03-16 21:14:29', '2023-03-16 21:14:29', NULL),
(109, 'Resistance Turns (Left)', 'Just stand on the floor take your both hands on your ear and press with medium pressure, now turn on right side slowly, do this exercise for (1 minute)\n\n', 30, '1678961728_Resistence Turns (Left).jpg', '1678961728_Resistence Turns (Left).m4v', 1, '2023-03-16 21:15:28', '2023-03-16 21:15:28', NULL),
(110, 'Resistance Turns (Right)', 'Just stand on the floor take your both hands on your ear and press with medium pressure, now turn on right side slowly, do this exercise for (1 minute)\n', 30, '1678961794_Resistence Turns (Right).jpg', '1678961794_Resistence Turns (Right).m4v', 1, '2023-03-16 21:16:34', '2023-03-16 21:16:34', NULL),
(111, 'Side Slope (Left)', 'In this exercise just stand on the floor and take your both hands to back your head and half bent down to the left side, hold this position for (1 minute)\n', 30, '1678962028_Side Slope (Left).jpg', '1678962028_Side Slope (Left).m4v', 1, '2023-03-16 21:20:28', '2023-03-16 21:20:28', NULL),
(112, 'Side Slope (Right)', 'In this exercise just stand on the floor and take your both hands to back your head and half bent down to the right side, hold this position for (1 minute)\n', 30, '1678962280_Side Slope (Right).jpg', '1678962280_Side Slope (Right).m4v', 1, '2023-03-16 21:24:40', '2023-03-16 21:24:40', NULL),
(113, 'Balance Kick Back (Left)', 'Stand on the floor on left hand side straight. By placing right foot down, lift left leg in a bending pose halfway up till waist line & left foot pointing towards ground. Lift both arms straight up in the way of chest. As you take left leg back up in the air till hip height, bring arms down and tap floor with the fingers. By moving arms back up straight, bring the left leg back towards the waist line without touching the ground. Repeat this process time to time & maintain good balance during arms and leg movement.', 30, '1678965840_Balance Kick Back (Left).jpg', '1678965840_Balance Kick Back (Left).mp4', 1, '2023-03-16 22:24:00', '2023-03-16 22:24:00', NULL),
(114, 'Balance Kick Back (Right)', 'Stand on the floor on right hand side straight. By placing left foot down, lift right leg in a bending pose halfway up till waist line & right foot pointing towards ground. Lift both arms straight up in the way of chest. As you take right leg back up in the air till hip height, bring arms down and tap floor with the fingers. By moving arms back up straight, bring the right leg back towards the waist line without touching the ground. Repeat this process time to time & maintain good balance during arms and leg movement.', 30, '1678965917_Balance Kick Back (Right).jpg', '1678965917_Balance Kick Back (Right).mp4', 1, '2023-03-16 22:25:17', '2023-03-16 22:25:17', NULL),
(115, 'Barre Leg Back Extension Circle (Left)', 'Stand on left hand side straight on the floor at bit away from the support. Bend down slightly towards the support or chair whose height reaches your waist line. Place your arms on the support by bending lower arms inward and placing one on top of the other. Lift your left leg up back straight till hip height and start to rotate the leg clockwise then anti clockwise. Rest the leg back down, take rest and repeat the same movement again.', 30, '1678965981_Barre Leg Back Extension Circle (Left).jpg', '1678965981_Barre Leg Back Extension Circle (Left).mp4', 1, '2023-03-16 22:26:21', '2023-03-16 22:26:21', NULL),
(116, 'Barre Leg Back Extension Circle (Right)', 'Stand on right hand side straight on the floor at bit away from the support. Bend down slightly towards the support or chair whose height reaches your waist line. Place your arms on the support by bending lower arms inward and placing one on top of the other. Lift your right leg up back straight till hip height and start to rotate the leg clockwise then anti clockwise. Rest the leg back down, take rest and repeat the same movement again.', 30, '1678966073_Barre Leg Back Extension Circle (Right).jpg', '1678966073_Barre Leg Back Extension Circle (Right).mp4', 1, '2023-03-16 22:27:53', '2023-03-16 22:27:53', NULL),
(117, 'Barre Leg Back Extension Flex Full (Left)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your right leg and by bending and raising left leg, kick backward. Continue this movement.', 30, '1678966138_Barre Leg Back Extension Flex Full (Left).jpg', '1678966138_Barre Leg Back Extension Flex Full (Left).mp4', 1, '2023-03-16 22:28:58', '2023-03-16 22:28:58', NULL),
(118, 'Barre Leg Back Extension Flex Full (Right)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your left leg and by bending and raising right leg, kick backward. Continue this movement.', 30, '1678966422_Barre Leg Back Extension Flex Full (Right).jpg', '1678966422_Barre Leg Back Extension Flex Full (Right).mp4', 1, '2023-03-16 22:33:42', '2023-03-16 22:33:42', NULL),
(119, 'Barre Leg Back Extension Full (Left)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your right leg and by raising left leg straight backward up. Continue this movement.', 30, '1678966747_Barre Leg Back Extension Full (Left).jpg', '1678966747_Barre Leg Back Extension Full (Left).mp4', 1, '2023-03-16 22:39:07', '2023-03-16 22:39:07', NULL),
(120, 'Barre Leg Back Extension Full (Right)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your left leg and by raising right leg straight backward up. Continue this movement.', 30, '1678966818_Barre Leg Back Extension Full (Right).jpg', '1678966818_Barre Leg Back Extension Full (Right).mp4', 1, '2023-03-16 22:40:18', '2023-03-16 22:40:18', NULL),
(121, 'Arm Lifts', 'Stand straight on the floor. Lift both arms above the head parallel to each other. Bring the arms down and by bending the upper body slightly from the waist, take the hands back up halfway. Raise arms again and continue with this movement a few times. Take normal breaths in between the exercise.', 30, '1678967261_Arm Lifts.jpg', '1678967261_Arm Lifts.m4v', 1, '2023-03-16 22:47:41', '2023-03-17 16:49:11', NULL);
INSERT INTO `exercises` (`id`, `ex_name`, `ex_description`, `ex_duration`, `ex_thumbnail_url`, `ex_video_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(122, 'Arm Scissors', 'Stand straight on the floor. Raise arms to parallel to each other to the way of the chest. Your hands should be opened and palms facing the floor. Lift right arm shortly and the left arm down the same way. Similarly, lift the left arm and the right arm down. Speed up the movement of arms a little bit. Continue the action by breathing normally.', 30, '1678967534_Arm Scirrors.jpg', '1678967534_Arm Scirrors.m4v', 1, '2023-03-16 22:52:14', '2023-03-17 16:49:31', NULL),
(123, 'Baby Position', 'Lay down on the floor straight at ease. Lift both legs in a bending pose and bring knees towards the belly. As you lift the legs, lift arms at the same time. And by reaching the knees to the belly hold knees by hands, while neck as well as head lifted up from the ground too. Bring body to rest and as described repeat the movements.', 30, '1678967610_Baby Possition.jpg', '1678967610_Baby Possition.m4v', 1, '2023-03-16 22:53:30', '2023-03-16 22:53:30', NULL),
(124, 'Hands Alternate Movement', 'Stand on the floor. Bend up your lower arms halfway to the rib cage. Now on the spot start to walk in slow motion. Continue to move the body for a couple of breaths and breathe normally while the movement goes on.', 30, '1678967692_Hands Alternate Movement.jpg', '1678967692_Hands Alternate Movement.m4v', 1, '2023-03-16 22:54:52', '2023-03-17 23:34:22', NULL),
(125, 'Semi-circle Pose', 'Now gently take your chin to the semi-circle, come to center and do it one more time and relax.', 30, '1678967766_Semi circle pose.jpg', '1678967766_Semi Circle Pose.m4v', 1, '2023-03-16 22:56:06', '2023-03-17 16:50:09', NULL),
(126, 'Up And Down', 'Just stand on the floor and put your hands up now move your body to down and up this exercise help to strong back muscles.', 30, '1678967839_Up And Down.jpg', '1678967839_Up And Down.m4v', 1, '2023-03-16 22:57:19', '2023-03-17 16:51:30', NULL),
(127, 'Cat Cow', 'Stand on your arms and knees. Arms should be shoulders width apart and palms facing down. While neck straight and lower legs rest on toes. Now start moving head up and down. Stretch spine along with it. Continue with these movements smoothly. Breathe normally in-out to increase stamina. \n', 30, '1678969461_Cat Cow.jpg', '1678969461_Cat Cow.m4v', 1, '2023-03-16 23:24:21', '2023-03-16 23:24:21', NULL),
(128, 'Forward Slope', 'Stand straight on the floor. Join your legs and feet. Now by the waist, start to bend in down towards the floor by bringing arms forward and hands opened. Try to touch the floor with tip of your fingers. Stand straight and repeat the same action again.\n', 30, '1678969611_Forward Slope.jpg', '1678969611_Forward Slope.m4v', 1, '2023-03-16 23:26:51', '2023-03-16 23:26:51', NULL),
(129, 'The Bow', 'Lay on the floor by your belly. Bend your lower legs in back and upward direction. Now by lifting your head and neck above the floor, take your arms at the back and hold feet tightly. Stretch feet towards head and stretch shoulder blades toward the feet. Stretch the head and knees upward. Hold in this position.\n', 30, '1678969759_The Bow.jpg', '1678969759_The Bow.m4v', 1, '2023-03-16 23:29:19', '2023-03-16 23:29:19', NULL),
(130, 'The Camel', 'Stand on the floor by your knees. Rest lower legs on toes and joined together. Now take your arms at the back and hold heels. Gently bend your head backward as much as possible. Hold in this pose and stretch the body. Breathe normally during the workout. Continue to perform the act as described.\n', 30, '1678970438_The Camel.jpg', '1678970438_The Camel.m4v', 1, '2023-03-16 23:40:38', '2023-03-16 23:40:38', NULL),
(131, 'The Bird (2)', 'Lay on your belly on the floor. From head to toe the body should be completely straight. Place your arms on either side of the head and widely open. By stretching your upper body upwards and lower body downwards. Stand body on belly and thighs. Hold in this position and rest the body down. Carry on with the same movement again.\n', 30, '1678970954_The Bird 2.jpg', '1678970954_The Bird 2.m4v', 1, '2023-03-16 23:49:14', '2023-03-16 23:49:14', NULL),
(132, 'The Slopes', 'Sit on the floor with legs widely open. Raise your arms straight above the head parallel to each other. From head to hip your body should be straight. In the same pose bend down between legs first as much as possible. Then bend towards the right leg and then bend to the left side. Repeat this act for few times by breathing in-out. Stretch your body during the movements.\n', 30, '1678971334_The Slopes.jpg', '1678971334_The Slopes.m4v', 1, '2023-03-16 23:55:34', '2023-03-16 23:55:34', NULL),
(133, 'Arm Bend Fly Up (Chest Fly)', 'Raise your elbows till they become parallel to earth and knuckles of both hands facing roof. Move your elbows to the side and back. Slightly bring chest forward and squeeze shoulder blade backward as hard as you can. \n', 30, '1678971625_Arm Bend Fly Up.jpg', '1678971625_Arm Bend Fly Up.mp4', 1, '2023-03-17 00:00:25', '2023-03-17 00:00:25', NULL),
(134, 'Arm Rotation', 'Raise your elbows till they become parallel to earth and knuckles of both hands facing roof. Move your elbows to the side and back. Slightly bring chest forward and squeeze shoulder blade backward as hard as you can. \n\n', 30, '1678971709_Arm rotation.jpg', '1678971709_Arm Rotation.m4v', 1, '2023-03-17 00:01:49', '2023-03-17 00:01:49', NULL),
(135, 'Back Arm Raise And Crunch', 'Hold your hands at the back. Raise arms upward away from hips. Bring arms down. Move arms up and down. Repeat 3 times. \n', 30, '1678971765_Back Arm Raise and Crunch.jpg', '1678971765_Back Arm Raise And Crunch.m4v', 1, '2023-03-17 00:02:45', '2023-03-17 00:02:45', NULL),
(136, 'Back Hold Rotation Anti-Clockwise', 'Hold hands at the back, interlock fingers. Start moving arms in anti-clockwise direction. Repeat this movement a few times.\n', 30, '1678971832_Back Hold Rotation Anti-Clockwise.jpg', '1678971832_Back Hold Rotation Anti-Clockwise.mp4', 1, '2023-03-17 00:03:52', '2023-03-17 00:03:52', NULL),
(137, 'Back Hold Rotation Clockwise', 'Hold hands at the back, interlock fingers. Start rotating arms in clockwise direction. Repeat this movement a few times.\n', 30, '1678971989_Back Hold Rotation Clockwise.jpg', '1678971989_Back Hold Rotation Clockwise.m4v', 1, '2023-03-17 00:06:29', '2023-03-17 00:06:29', NULL),
(138, 'Back Squeeze Movement', 'Rest hands on hips, squeeze shoulder blades as much as you can. Repeat 5 times. \n', 30, '1678972046_Back Squeeze Movement.jpg', '1678972046_Back Squeeze Movement.m4v', 1, '2023-03-17 00:07:26', '2023-03-17 00:07:26', NULL),
(139, 'Back Squeezing', 'Hold your waist by bending elbows. Squeeze shoulders back as hard as possible and then relax. Repeat 5 times.\n', 30, '1678972109_Back Squeezing.jpg', '1678972109_Back Squeezing.m4v', 1, '2023-03-17 00:08:29', '2023-03-17 00:08:29', NULL),
(140, 'Bicep Squeeze Stretch Left (Bicep Stretch – Left)', 'Pull left arm to your chest, use other arm to keep left arm still. Move left shoulder backward and then forward. Repeat for 30 seconds. \n', 30, '1678972169_Bicep Squeeze Stretch Left.jpg', '1678972169_Bicep Squeeze Stretch Left.m4v', 1, '2023-03-17 00:09:29', '2023-03-17 00:09:29', NULL),
(141, 'Bicep Squeeze Stretch Right (Bicep Stretch – Right)', 'Pull right arm to your chest, use other arm to keep right arm still. Move right shoulder backward and then forward. Repeat for 30 seconds. \n', 30, '1678972229_Bicep Squeeze Stretch Right.jpg', '1678972229_Bicep Squeeze Stretch Right.m4v', 1, '2023-03-17 00:10:29', '2023-03-17 00:10:29', NULL),
(142, 'Blessing Reaches Up_Down (Arm Stretch)', 'Raise your arms straight up above the head and join palms. Arms straight over head as high as possible then bring hands down by bending elbow. Repeat exercise for 10 times.\n', 30, '1678972288_Blessing Reaches Up-Down.jpg', '1678972288_Blessing Reaches Up-Down.m4v', 1, '2023-03-17 00:11:28', '2023-03-17 00:11:28', NULL),
(143, 'Cavical Strengthening', 'Raise your elbows till chest height and arms joined by wrists, while palms toward your face. Spread arms outward and join back of the palms over your head, keeping arms as straight and high as possible. \n', 30, '1678972357_Cavical Strengthening.jpg', '1678972357_Cavical Strengthening.m4v', 1, '2023-03-17 00:12:37', '2023-03-17 00:12:37', NULL),
(144, ' Chest Stretch', 'Bring both arms out in front of chest, make fists of both hands. Bring elbows back and bend them. Take arms out again. Repeat this exercise for 1 minute. \n', 30, '1678972412_Chest Stretch.jpg', '1678972412_Chest Stretch.m4v', 1, '2023-03-17 00:13:32', '2023-03-17 00:13:32', NULL),
(145, 'Clavicle Massage Left', 'Left hand on left waist and right hand fingers over left collar bone. Start massage from mid of the collar bone to end for 30 seconds. \n', 30, '1678972462_Clavicle Massage Left.jpg', '1678972462_Clavicle Massage Left.m4v', 1, '2023-03-17 00:14:22', '2023-03-17 00:14:22', NULL),
(146, 'Clavicle Massage Right', 'Right hand on right waist and left hand fingers over right collar bone. Start massage from mid of the collar bone to end for 30 seconds. \n', 30, '1678972507_Clavicle Massage Right.jpg', '1678972507_Clavicle Message Right.m4v', 1, '2023-03-17 00:15:07', '2023-03-17 00:15:07', NULL),
(147, 'Clavicle Stretches Left', 'Bend left elbow up to the height of chest. Hold the left shoulder blade using fingers of right hand. Move arm upward and downward quickly. \n', 30, '1678972574_Clavicle Stretches Left.jpg', '1678972574_Clavicle Stretches Left.m4v', 1, '2023-03-17 00:16:14', '2023-03-17 00:16:14', NULL),
(148, 'Clavicle Stretches Right', 'Bend right elbow up to the height of chest. Hold the left shoulder blade using fingers of left hand. Move arm upward and downward quickly. \n', 30, '1678972623_Clavicle Stretches Right.jpg', '1678972623_Clavicle Stretches Right.m4v', 1, '2023-03-17 00:17:03', '2023-03-17 00:17:03', NULL),
(149, 'Collar Back Stretch Tilt Hold', 'Bend right elbow up to the height of chest. Hold the left shoulder blade using fingers of left hand. Move arm upward and downward quickly. \n\n', 30, '1678972669_Collar Back Stretch Tilt Hold.jpg', '1678972669_Collar Back Stretch Tilt Hold.m4v', 1, '2023-03-17 00:17:49', '2023-03-17 00:17:49', NULL),
(150, 'Collar Bone Hold Stretches', 'Hold your collar bones with fingers and thumbs. Tilt head back to stretch neck, move head towards left shoulder and then right. Exercise for 30 seconds.\n', 30, '1678972714_Collar Bone Hold Stretches.jpg', '1678972714_Collar Bone Hold Stretches.m4v', 1, '2023-03-17 00:18:34', '2023-03-17 00:18:34', NULL),
(151, 'Collar Bone in Out Squeeze Stretch', 'Bring arms in front of the chest with palms facing upward. Squeeze your back muscles as hard as possible by moving arms backwards. \n', 30, '1678972759_Collar Bone In Out Squeeze Stretch.jpg', '1678972759_Collar Bone In Out Squeeze Stretch.m4v', 1, '2023-03-17 00:19:19', '2023-03-17 00:19:19', NULL),
(152, 'Collar Bone to Back Muscle Squeeze', 'Stand straight on the floor, take arms in front of the chest. Your palms should be facing out. Join back of the hands and take arms down to the back, but while reaching either hip side, rotate your hands. When you reach hips, your palms should be facing out and back of hands towards each other. Repeat exercise for 30 seconds. \n', 30, '1678972807_Collar Bone to Back Muscle Squeeze.jpg', '1678972807_Collar Bone To Back Muscle Squeeze.m4v', 1, '2023-03-17 00:20:07', '2023-03-17 00:20:07', NULL),
(153, 'Front and Back Bone Alignment', 'Stand straight on the floor. Take arms at the back and join hands. Now take arms straight above shoulders and join palms upside down at the middle of shoulder blades. \n', 30, '1678972919_Front and Back Bone Alignment.jpg', '1678972919_Front And Back Bone Alignment.m4v', 1, '2023-03-17 00:21:59', '2023-03-17 00:21:59', NULL),
(154, 'Front Back Squeeze Movement', 'Stand straight on the floor. Hold your waists. Move elbows to squeeze chest muscles inward. Now move elbows back to squeeze shoulder blades. Repeat movement a few times.\n', 30, '1678972987_Front Back Squeeze Movement.jpg', '1678972987_Front Back Squeeze Movement.m4v', 1, '2023-03-17 00:23:07', '2023-03-17 00:23:07', NULL),
(155, 'Head Rest Elbow Squeeze', 'Stand straight on the floor. Hold your waists. Move elbows to squeeze chest muscles inward. Now move elbows back to squeeze shoulder blades. Repeat movement a few times.\n\n', 30, '1678973041_Head Rest Elbow Squeeze.jpg', '1678973041_Head Rest Elbow Squeeze.m4v', 1, '2023-03-17 00:24:01', '2023-03-17 00:24:01', NULL),
(156, 'Left Arm Press Hold', 'Stand straight on the floor. Hold your waists. Move elbows to squeeze chest muscles inward. Now move elbows back to squeeze shoulder blades. Repeat movement a few times.', 30, '1678973091_Left Arm Press Hold.jpg', '1678973091_Left Arm Press Hold.m4v', 1, '2023-03-17 00:24:51', '2023-03-17 00:24:51', NULL),
(157, 'Mamba Cross Squeeze', 'Raise arms till chest height and bend arms halfway upward. Join both elbows. Move the arms to upward direction. Hands on reaching head, cross them over each other and touch right elbow with left hand and left elbow with right hand. Repeat exercise.\n', 30, '1678973135_Mamba Cross Squeeze.jpg', '1678973135_Mamba Cross Squeeze.m4v', 1, '2023-03-17 00:25:35', '2023-03-17 00:25:35', NULL),
(158, 'Rapid Head Tilting Left', 'Hold your head over from left hand side with left hand. Rest down the right arm. Pull head down with left hand toward left shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. \n', 30, '1678973187_Rapid Head Tilting Left.jpg', '1678973187_Rapid Head Tilting Left.m4v', 1, '2023-03-17 00:26:27', '2023-03-17 00:26:27', NULL),
(159, 'Rapid Head Tilting Right', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. \n', 30, '1678973240_Rapid Head Tilting Right.jpg', '1678973240_Rapid Head Tilting Right.m4v', 1, '2023-03-17 00:27:20', '2023-03-17 00:27:20', NULL),
(160, 'Right Arm Press Hold', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. \n\n\n', 30, '1678973355_Back Hold Rotation Clockwise.jpg', '1678973355_Right Arm Press Hold.m4v', 1, '2023-03-17 00:29:15', '2023-03-17 00:29:15', NULL),
(161, 'Shoulder Hold Rotation Anti-Clockwise', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973416_Shoulder Hold Rotation anti-Clockwise.jpg', '1678973416_Shoulder Hold Rotation Anti-Clockwise.m4v', 1, '2023-03-17 00:30:16', '2023-03-17 00:30:16', NULL),
(162, 'Shoulder Hold Rotation Clockwise', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973524_Shoulder Hold Rotation Clockwise.jpg', '1678973524_Shoulder Hold Rotation Clockwise.m4v', 1, '2023-03-17 00:32:04', '2023-03-17 00:32:04', NULL),
(163, 'Shoulder Lift Down Simple', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973616_Shoulder Lift Downs simpel.jpg', '1678973616_Shoulder Lift Downs Simpel.m4v', 1, '2023-03-17 00:33:36', '2023-03-17 00:33:36', NULL),
(164, 'Shoulder Lift Down ', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973686_Shoulder Lift Downs.jpg', '1678973686_Shoulder Lift Downs.m4v', 1, '2023-03-17 00:34:46', '2023-03-17 00:34:46', NULL),
(165, 'Side Drop Bend', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973758_Side Drop Bend.jpg', '1678973758_Side Drop Bend.m4v', 1, '2023-03-17 00:35:58', '2023-03-17 00:35:58', NULL),
(166, 'Side Hold Front Back Hard Squeeze', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973834_Side Hold Front Back Hard Squeeze.jpg', '1678973834_Side Hold Front Back Hard Squeeze.m4v', 1, '2023-03-17 00:37:14', '2023-03-17 00:37:14', NULL),
(167, 'Squeeze Back Crunch', 'Hold your head over from right hand side with right hand. Rest down the left arm. Pull head down with right hand toward right shoulder. Take head up, repeat this down-up motion of head to the left side 3 times. ', 30, '1678973898_Squeeze Back Crunch.jpg', '1678973898_Squeeze Back Crunch.m4v', 1, '2023-03-17 00:38:18', '2023-03-17 00:38:18', NULL),
(168, 'Cat - Cow', 'Stand on your arms and knees. Arms should be shoulders width apart and palms facing down. While neck straight and lower legs rest on toes. Now start moving head up and down. Stretch spine along with it. Continue with these movements smoothly. Breathe normally in-out to increase stamina. ', 30, '1679033421_Cat - Cow.jpg', '1679033421_Cat - Cow.m4v', 1, '2023-03-17 17:10:21', '2023-03-17 17:10:21', NULL),
(169, 'Forward Head Exertion', 'Sit on the chair. From head to hip body should be straight. Rest hands on your thighs. While space between the feet should be normal. By stretching neck, move chin towards front side. Take head back straight and repeat the movement again. Continue to perform this act by taking rest in between.', 30, '1679034942_Forward head Excertion.jpg', '1679034942_Forward Head Exertion.m4v', 1, '2023-03-17 17:35:42', '2023-03-17 17:35:42', NULL),
(170, 'Foward Back (Left)', 'Stand your body by placing arms on the floor straight beneath the shoulders and hands palm way down with normal space between them. Place knees on the floor same way as hands. While rest lower legs on toes. Lift one leg above the floor and take it backward up in the air straight, while stretching neck out. Bring the leg inward to the belly in bending pose and tuck head inwards to the chest. Repeat this motion few times.', 30, '1679035385_Foward Back (Left).jpg', '1679035385_Foward Back (Left).mp4', 1, '2023-03-17 17:43:05', '2023-03-17 17:43:05', NULL),
(171, 'Foward Back (Right)', 'Stand your body by placing arms on the floor straight beneath the shoulders and hands palm way down with normal space between them. Place knees on the floor same way as hands. While rest lower legs on toes. Lift one leg above the floor and take it backward up in the air straight, while stretching neck out. Bring the leg inward to the belly in bending pose and tuck head inwards to the chest. Repeat this motion few times.', 30, '1679035448_Foward Back (Right).jpg', '1679035448_Foward Back (Right).m4v', 1, '2023-03-17 17:44:08', '2023-03-17 17:44:08', NULL),
(172, 'Lean Forward', 'Sit on the floor. Drag your legs forward straight. Lift arms to the way of chest. Now start to bend body toward legs and touch toes with hands, then move back, continue to move forward and back.  Your breathing during the workout should be normal.', 30, '1679035665_Lean Forward.jpg', '1679035665_Lean Forward.m4v', 1, '2023-03-17 17:47:45', '2023-03-17 17:47:45', NULL),
(173, 'Neck Lifts', 'Just lay on the floor and do exercise about neck up and down, do this exercise for (1 minute)', 30, '1679035714_Neck Lifts.jpg', '1679035714_Neck Lifts.m4v', 1, '2023-03-17 17:48:34', '2023-03-17 17:48:34', NULL),
(174, 'Neck Stretch (Left)', 'Just stand on the floor hold your one hand to the other palm and stretch your neck to the left side, do this exercise for (1 minute).', 30, '1679035767_Neck Stretch (Left).jpg', '1679035767_Neck Stretch (Left).m4v', 1, '2023-03-17 17:49:27', '2023-03-17 17:49:27', NULL),
(175, 'Neck Stretch (Right)', 'Just stand on the floor hold your one hand to the other palm and stretch your neck to the right side, do this exercise for (1 minute).', 30, '1679035889_Neck Stretch (Right).jpg', '1679035889_Neck Stretch (Right).m4v', 1, '2023-03-17 17:51:29', '2023-03-17 17:51:29', NULL),
(176, 'Reaching Up', 'Just stand on the floor and meet your hand with each other start with the center and pull it up from the upward, do this exercise for (1 minute).', 30, '1679036083_Reaching Up.jpg', '1679036083_Reaching Up.m4v', 1, '2023-03-17 17:54:43', '2023-03-17 17:54:43', NULL),
(177, 'Snake Position', 'Raise both arms up above the head by standing straight on the floor. Join your feet and hands. Bend spine backward as far as possible. Hold in this pose. Bring the body to ease. Take deep breaths and start with the workout from starting position step by step.', 30, '1679047235_Snake Position.jpg', '1679047235_Snake Possition.m4v', 1, '2023-03-17 21:00:35', '2023-03-17 21:00:35', NULL),
(178, 'The Arc (Left)', 'Sit on the chair. Place hands on your thighs. Press your chin towards your chest and turn your head up towards right hand side. Similarly bring head down by pressing chin towards chest and turn your head up towards left hand side. Continue to perform these movements time to time by taking rest in between.', 30, '1679047278_The Arc (Left).jpg', '1679047278_The Arc (Left).m4v', 1, '2023-03-17 21:01:18', '2023-03-17 21:01:18', NULL),
(179, 'The Arc (Right)', 'Sit on the chair. Place hands on your thighs. Press your chin towards your chest and turn your head up towards right hand side. Similarly bring head down by pressing chin towards chest and turn your head up towards left hand side. Continue to perform these movements time to time by taking rest in between.', 30, '1679047329_The Arc (Right).jpg', '1679047329_The Arc (Right).m4v', 1, '2023-03-17 21:02:09', '2023-03-17 21:02:09', NULL),
(180, 'The Bird 2', 'Just lay down on the floor and take your hands up as you stretch your hand and make bird style, hold this position for (1 minute).', 30, '1679047382_The Bird 2.jpg', '1679047382_The Bird 2.m4v', 1, '2023-03-17 21:03:02', '2023-03-17 21:03:02', NULL),
(181, 'The Cobra', 'Just lay down on the front side to the floor and up your head in fron of your side, now curved your back side as you curved it and hold your position for (1 minute)', 30, '1679047505_The Cobra.jpg', '1679047505_The Cobra.m4v', 1, '2023-03-17 21:05:05', '2023-03-17 21:05:05', NULL),
(182, 'The Diagonal', 'Sit on the chair by straightening up your neck and back. Lift one arm straight up to the side and the other arm straight down to the way of the hand which is up. Align both arms in a straight line. Now stretch your chin forward and hands back. Hold in this pose.', 30, '1679047562_The Diagonal.jpg', '1679047562_The Diagonal.m4v', 1, '2023-03-17 21:06:02', '2023-03-17 21:06:02', NULL),
(183, 'The Heron', 'Just simply stand on the floor and stiff your neck inward of your bone and hold this position for (1 minute).', 30, '1679047731_The Heron.jpg', '1679047731_The Heron.m4v', 1, '2023-03-17 21:08:51', '2023-03-17 21:08:51', NULL),
(184, 'The Hourglass', 'In this exercises just take your hand upward and meet your palm with each other, now move your head left and right and do this exercises for (1 minute)', 30, '1679047788_The Hourglass.jpg', '1679047788_The Hourglass.m4v', 1, '2023-03-17 21:09:48', '2023-03-17 21:09:48', NULL),
(185, 'The Parallel', 'In this exercise make a prayer pose and child pose as well take your both hand towards in front of your head and bent down as you can, hold this position for (1 minute).', 30, '1679047829_The Parallel.jpg', '1679047829_The Parallel.m4v', 1, '2023-03-17 21:10:29', '2023-03-17 21:10:29', NULL),
(186, 'The Plane', 'Just stand on the floor and stretch your hands back to your back as you can stretch, pull your head from outward this feel your sensation on your hand and neck.', 30, '1679047870_The Plane.jpg', '1679047870_The Plane.m4v', 1, '2023-03-17 21:11:10', '2023-03-17 21:11:10', NULL),
(187, 'The Shoulder', 'Just lay on the floor in front of mirror and and pull your shoulder upwards as you can and move your shoulder in a circular movement which can help your muscles stronger.', 30, '1679047928_The Shoulder.jpg', '1679047928_The Shoulder.m4v', 1, '2023-03-17 21:12:08', '2023-03-17 21:12:08', NULL),
(188, 'Trapezoid Stretching (Left) 2', 'In this exercise just stand on the floor take your one hand to the back and one hand put on the neck and pull with the help of hand slowly down which help your muscles strong.', 30, '1679048095_Trapezoid Stretching (Left)).jpg', '1679048095_Trapezoid Stretching (Left)).m4v', 1, '2023-03-17 21:14:55', '2023-03-20 23:32:44', NULL),
(189, 'Wide Slopes', 'Sit on the floor. Open your legs widely. Bend down your upper body from waist completely. In bending position hold both feet toe with hands. Slightly lift body upward and again bend down and hold the toes. Stretch body as much as possible during exercise.', 30, '1679048271_Wide Slopes.jpg', '1679048271_Wide Slopes.m4v', 1, '2023-03-17 21:17:51', '2023-03-17 21:17:51', NULL),
(190, 'Barre Leg Back Extension Full Hold (Left)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your right leg and by bending and raising left leg, hold leg backward up while bending it by the knee. Continue this movement.', 30, '1679051520_Barre Leg Back Extension Full Hold (Left).jpg', '1679051520_Barre Leg Back Extension Full Hold (Left).mp4', 1, '2023-03-17 22:12:00', '2023-03-17 22:12:00', NULL),
(191, 'Barre Leg Back Extension Full Hold(Right)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your left leg and by bending and raising right leg, hold leg backward up while bending it by the knee. Continue this movement.', 30, '1679051597_Barre Leg Back Extension Full Hold(Right).jpg', '1679051597_Barre Leg Back Extension Full Hold(Right).mp4', 1, '2023-03-17 22:13:17', '2023-03-17 22:13:17', NULL),
(192, 'Barre Leg Back Extension Hold (Left)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your right leg and by raising left leg straight backward up. Hold this pose.  Continue this movement.', 30, '1679051888_Barre Leg Back Extension Hold (Left).jpg', '1679051888_Barre Leg Back Extension Hold (Left).mp4', 1, '2023-03-17 22:18:08', '2023-03-17 22:18:08', NULL),
(193, 'Barre Leg Back Extension Hold (Right)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your left leg and by raising right leg straight backward up. Hold this pose.  Continue this movement.', 30, '1679051971_Barre Leg Back Extension Hold (Right).jpg', '1679051971_Barre Leg Back Extension Hold (Right).mp4', 1, '2023-03-17 22:19:31', '2023-03-17 22:19:31', NULL),
(194, 'Barre Leg Side Extension Full (Left)', 'Stand straight on the floor with the support of chair by placing right hand on it. The height of the chair should reach the waist line. Place left hand on left side of the waist line. This is your starting position. Now lift your left leg straight up toward outer side opposite to right leg. Bring the leg down to its starting position. Repeat the movement of left leg again. Breathe normally during this up-down movement.', 30, '1679052063_Barre Leg Side Extension Full (Left).jpg', '1679052063_Barre Leg Side Extension Full (Left).mp4', 1, '2023-03-17 22:21:03', '2023-03-17 22:21:03', NULL),
(195, 'Barre Leg Side Extension Full (Right)', 'Stand straight on the floor with the support of chair by placing left hand on it. The height of the chair should reach the waist line. Place right hand on right side of the waist line. This is your starting position. Now lift your right leg straight up toward outer side opposite to left leg. Bring the leg down to its starting position. Repeat the movement of right leg again. Breathe normally during this up-down movement.', 30, '1679052123_Barre Leg Side Extension Full (Right).jpg', '1679052123_Barre Leg Side Extension Full (Right).mp4', 1, '2023-03-17 22:22:03', '2023-03-17 22:22:03', NULL),
(196, 'Butt (Left)', 'Stand on the floor in a dog pose. Place hands palm way down on the floor and opened to a shoulder width space between them. Stand lower body on knees and lower legs on toes. Raise your left leg on outer left side and bring it down. Repeat the movement.', 30, '1679052183_Butt (Left).jpg', '1679052183_Butt (Left).mp4', 1, '2023-03-17 22:23:03', '2023-03-17 22:23:03', NULL),
(197, 'Butt (Right)', 'Stand on the floor in a dog pose. Place hands palm way down on the floor and opened to a shoulder width space between them. Stand lower body on knees and lower legs on toes. Raise your right leg on outer right side and bring it down. Repeat the movement.', 30, '1679052254_Butt (Right).jpg', '1679052254_Butt (Right).mp4', 1, '2023-03-17 22:24:14', '2023-03-17 22:24:14', NULL),
(198, 'Cross Knee Lifts (Left)', 'Lay straight on the floor at ease by placing arms palm way down by your sides. Bend your right leg in towards left leg & rest right ankle on left thigh above knee while your right knee should be lifted above the floor. Now lift your left leg straight up in a way that your hip is beneath the left foot. Bring the leg down above the floor and lift the leg up again. Continue with the same movement by breathing in-out.', 30, '1679052470_Cross Knee Lifts (Left).jpg', '1679052470_Cross Knee Lifts (Left).mp4', 1, '2023-03-17 22:27:50', '2023-03-17 22:27:50', NULL),
(199, 'Cross Knee Lifts (Right)', 'Lay straight on the floor at ease by placing arms palm way down by your sides. Bend your left leg in towards right leg & rest left ankle on right thigh above knee while your left knee should be lifted above the floor. Now lift your right leg straight up in a way that your hip is beneath the right foot. Bring the leg down above the floor and lift the leg up again. Continue with the same movement by breathing in-out.', 30, '1679052554_Cross Knee Lifts (Right).jpg', '1679052554_Cross Knee Lifts (Right).mp4', 1, '2023-03-17 22:29:14', '2023-03-17 22:29:14', NULL),
(200, 'Grasshoppers Angletwo', 'Lie down on the floor on your belly. Bend your legs up by the knees and join your heels. Rest forehead on both hands. Now slightly raise your thighs up and move legs up and down. Continue the movement. (Angle Two)', 30, '1679052738_Grasshoppers Angletwo.jpg', '1679052738_Grasshoppers Angletwo.mp4', 1, '2023-03-17 22:32:18', '2023-03-17 22:32:18', NULL),
(201, 'Grasshoppers', 'Lie down on the floor on your belly. Bend your legs up by the knees and join your heels. Rest forehead on both hands. Now slightly raise your thighs up and move legs up and down. Continue the movement.', 30, '1679052782_Grasshoppers.jpg', '1679052782_Grasshoppers.mp4', 1, '2023-03-17 22:33:02', '2023-03-17 22:33:02', NULL),
(202, 'Hands And Knee Leg Raise Pulse (Left)', 'Place your hands on the floor palm way down beneath the shoulders and shoulders width space between them and arms straight. Place your right leg in a bending position as your knee rest on the floor under hip and lower leg stand on toe. Lift the left leg straight back up in the air as you align your body from head to left foot in a straight line. Now in the same pose move left leg up and halfway down till hip height. Continue with the same movement repeatedly taking rest in-between.', 30, '1679052885_Hands And Knee Leg Raise Pulse (Left).jpg', '1679052885_Hands And Knee Leg Raise Pulse (Left).mp4', 1, '2023-03-17 22:34:45', '2023-03-17 22:34:45', NULL),
(203, 'Hands And Knee Leg Raise Pulse (Right)', 'Place your hands on the floor palm way down beneath the shoulders and shoulders width space between them and arms straight. Place your left leg in a bending position as your knee rest on the floor under hip and lower leg stand on toe. Lift the right leg straight back up in the air as you align your body from head to right foot in a straight line. Now in the same pose move right leg up and halfway down till hip height. Continue with the same movement repeatedly taking rest in-between.', 30, '1679053041_Hands And Knee Leg Raise Pulse (Right).jpg', '1679053041_Hands And Knee Leg Raise Pulse (Right).mp4', 1, '2023-03-17 22:37:21', '2023-03-17 22:37:21', NULL),
(204, 'Scissor Kicks', 'Lay down on the floor with back straight. Hands placed on the sides, while legs lifted above the ground. Now move right leg down towards the floor and lift it back up, at the same time take left leg down to the floor and lift that up too. Repeat this movement of legs (up-down) few times.', 30, '1679055169_Scissor Kicks.jpg', '1679055169_Scissor Kicks.mp4', 1, '2023-03-17 23:12:49', '2023-03-17 23:12:49', NULL),
(205, 'Side Leg Wind shield Wiper (Left)', 'Place your hands on the floor palm way down a bit ahead from head. Arms should be straight and they should have shoulders width space between them. Lift your hips above the ground high and legs should be straight while they stand on toes with shoulders width space between them also. Now lift the left leg up and by making curve in the air, move the left foot over right foot and rest it on the floor. Bring the leg back and continue with the same movement.', 30, '1679055290_Side Leg Windshiled Wiper (Left).jpg', '1679055290_Side Leg Windshiled Wiper (Left).mp4', 1, '2023-03-17 23:14:50', '2023-03-17 23:14:50', NULL),
(206, 'Side Leg Wind shield Wiper (Right)', 'Place your hands on the floor palm way down a bit ahead from head. Arms should be straight and they should have shoulders width space between them. Lift your hips above the ground high and legs should be straight while they stand on toes with shoulders width space between them also. Now lift the right leg up and by making curve in the air, move the right foot over right foot and rest it on the floor. Bring the leg back and continue with the same movement.', 30, '1679055395_Side Leg Windshiled Wiper (Right).jpg', '1679055395_Side Leg Windshiled Wiper (Right).mp4', 1, '2023-03-17 23:16:35', '2023-03-17 23:16:35', NULL),
(207, 'Abductor Squat', 'Stand on the floor with bending legs and wide space between them, while upper body from waist slightly bent down forward and both arms bent inwards resting on each other. Your neck should be straight and chin lifted up to maintain the balance. Now start to move the knees inwards and outwards. Continue the actions as directed. Breathe in-out for stabling the stamina.', 30, '1679056370_Abductor Squat.jpg', '1679056370_Abductor Squat.mp4', 1, '2023-03-17 23:32:50', '2023-03-17 23:32:50', NULL),
(208, 'Barre Leg Back Extension Flex Pulse(Left)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your right leg and by bending and raising left leg, kick backward. Continue this movement.', 30, '1679056615_Barre Leg Back Extension Flex Pulse(Left).jpg', '1679056615_Barre Leg Back Extension Flex Pulse(Left).mp4', 1, '2023-03-17 23:36:55', '2023-03-17 23:36:55', NULL),
(209, 'Barre Leg Back Extension Flex Pulse(Right)', 'Take a chair and face its back towards yourself. Stand on the floor straight a bit away from the chair. Now bend towards the chair and place your arms at the back of the chair bent inwards till elbows. Stand on your left leg and by bending and raising right leg, kick backward. Continue this movement.', 30, '1679056694_Barre Leg Back Extension Flex Pulse(Right).jpg', '1679056694_Barre Leg Back Extension Flex Pulse(Right).mp4', 1, '2023-03-17 23:38:14', '2023-03-17 23:38:14', NULL),
(210, 'Barre Leg Back Extension Pulse (Left)', 'Stand straight on the floor a bit away from the support or chair on your left hand side. The chair or support height should reach your waist or belly. Place both hands on the chair/support back top by bending down towards it and lift the left leg back up in bending pose. Hold for some time, then rest leg down & stand straight. Take rest and repeat this movement again.', 30, '1679056838_Barre Leg Back Extension Pulse (Left).jpg', '1679056838_Barre Leg Back Extension Pulse (Left).mp4', 1, '2023-03-17 23:40:38', '2023-03-17 23:40:38', NULL),
(211, 'Barre Leg Back Extension Pulse (Right)', 'Stand straight on the floor a bit away from the support or chair on your right hand side. The chair or support height should reach your waist or belly. Place both hands on the chair/support back top by bending down towards it and lift the right leg back up in bending pose. Hold for some time, then rest leg down & stand straight. Take rest and repeat this movement again.', 30, '1679056893_Barre Leg Back Extension Pulse (Right).jpg', '1679056893_Barre Leg Back Extension Pulse (Right).mp4', 1, '2023-03-17 23:41:33', '2023-03-17 23:41:33', NULL),
(212, 'Barre Leg Side Extension Hold (Left)', 'Stand straight on the floor by taking the support of chair with right hand. Place left hand on left side of the waist. Now lift left leg straight out up to the waist and opposite to right leg. Hold in this pose for few seconds. Then rest the leg down on the floor. Repeat the same movement again after taking rest.', 30, '1679056983_Barre Leg Side Extension Hold (Left).jpg', '1679056983_Barre Leg Side Extension Hold (Left).mp4', 1, '2023-03-17 23:43:03', '2023-03-17 23:43:03', NULL),
(213, 'Barre Leg Side Extension Hold (Right)', 'Stand straight on the floor by taking the support of chair with left hand. Place right hand on right side of the waist. Now lift right leg straight out up to the waist and opposite to left leg. Hold in this pose for few seconds. Then rest the leg down on the floor. Repeat the same movement again after taking rest.', 30, '1679057053_Barre Leg Side Extension Hold (Right).jpg', '1679057053_Barre Leg Side Extension Hold (Right).mp4', 1, '2023-03-17 23:44:13', '2023-03-17 23:44:13', NULL),
(214, 'Barre Leg Side Extension Pulse (Left)', 'Stand straight on the floor by taking the support of chair with right hand. Place left hand on left side of the waist. Now lift left leg straight out up to the waist and opposite to right leg. Start to move left leg in up and down direction with slight movement. Now bring the leg down and rest it on the floor. Repeat the same movement and continue with the workout.', 30, '1679057134_Barre Leg Side Extension Pulse (Left).jpg', '1679057134_Barre Leg Side Extension Pulse (Left).mp4', 1, '2023-03-17 23:45:34', '2023-03-17 23:45:34', NULL),
(215, 'Barre Leg Side Extension Pulse (Right)', 'Stand straight on the floor by taking the support of chair with left hand. Place right hand on right side of the waist. Now lift right leg straight out up to the waist and opposite to left leg. Start to move right leg in up and down direction with slight movement. Now bring the leg down and rest it on the floor. Repeat the same movement and continue with the workout.', 30, '1679057177_Barre Leg Side Extension Pulse (Right).jpg', '1679057177_Barre Leg Side Extension Pulse (Right).mp4', 1, '2023-03-17 23:46:17', '2023-03-17 23:46:17', NULL),
(216, 'Calm Shells (Left)', 'Lay on your right hand side on the floor. Your body from head to hip and legs should be bend normally. Rest left leg on right leg. Your head should rest on right arm which is bent backwards creating (V) of it and put left arm in front of you in a bending pose by placing hand palm way down in front of chest. Now without lifting left foot, lift left knee up from the right knee and rest it down on right knee again. Repeat this up-down movement fewer times. Breathe normally during this motion.', 30, '1679290205_Calm Shells (Left).jpg', '1679290205_Calm Shells (Left).mp4', 1, '2023-03-20 16:30:05', '2023-03-20 16:30:05', NULL),
(217, 'Calm Shells (Right)', 'Lay on your left hand side on the floor. Your body from head to hip and legs should be bend normally. Rest right leg on left leg. Your head should rest on left arm which is bent backwards creating (V) of it and put right arm in front of you in a bending pose by placing hand palm way down in front of chest. Now without lifting right foot, lift right knee up from the left knee and rest it down on left knee again. Repeat this up-down movement fewer times. Breathe normally during this motion.', 30, '1679290250_Calm Shells (Right).jpg', '1679290250_Calm Shells (Right).mp4', 1, '2023-03-20 16:30:50', '2023-03-20 16:30:50', NULL),
(218, 'Flutter Kicks', 'Lay on the floor straight. Place hands by your sides. Lift both legs up above the floor. Start to move the legs over and on each other continuously. Take rest for few seconds by bringing legs down and then continue with the workout again.', 30, '1679291981_Flutter Kicks.jpg', '1679291981_Flutter Kicks.mp4', 1, '2023-03-20 16:59:41', '2023-03-20 16:59:41', NULL),
(219, 'Lateral Walk', 'Stand on the floor in a bending position by waist. Bend arms up towards the chest and hold hands under chin. Slightly bend legs too. In this pose walk toward right hand side and then towards left hand side. Do not step forward or backward. Move in a straight line.', 30, '1679292588_Lateral Walk.jpg', '1679292588_Lateral Walk.mp4', 1, '2023-03-20 17:09:48', '2023-03-20 17:09:48', NULL),
(220, 'Standup Bicycle', 'Stand straight on the floor with large space between feet. Lift your arms up from the sides. Bend arms up till shoulders height and start to move right elbow in same pose down by lifting left knee up towards the elbow, while left arm rests at back. Similarly move left elbow in same pose down by lifting right knee up towards the elbow, while right arm rests at back. Repeat this process by and by.', 30, '1679292814_Standup Bicycle.jpg', '1679292814_Standup Bicycle.mp4', 1, '2023-03-20 17:13:34', '2023-03-20 17:13:34', NULL),
(221, 'Toe Squat', 'Stand straight at ease on the floor by arms on sides and legs open. Bend body slightly by waist. Bend arms towards chest and hold hands under the chin, while elbows apart. Bend the legs a bit too. Start to move up and down by putting pressure on hips.  Repeat this movement few times then take rest. Continue with the up and down movement again.', 30, '1679293621_Toe Squat.jpg', '1679293621_Toe Squat.mp4', 1, '2023-03-20 17:27:01', '2023-03-20 17:27:01', NULL),
(222, 'Cross Bent Knee Lifts Tabletop (Left)', 'Place your hands palm way down on the floor facing towards heels beneath the shoulders and arms straight. There should be shoulders width space between hands. Place your left leg on the floor in a bending position while bend right leg inwards to left hand side and rest right ankle on left leg thigh just above knee. Lift the body up from the floor and from head to knee, align it in a straight line. While stand on toe as body is lifted up. Bring the body down above the floor & by moving backward slightly, stand on your heel. Take rest and repeat the same movement by breathing in-out.', 30, '1679295768_Cross Bent Knee Lifts Tabletop (Left).jpg', '1679295768_Cross Bent Knee Lifts Tabletop (Left) (1) (1).mp4', 1, '2023-03-20 18:02:48', '2023-03-20 18:02:48', NULL),
(223, 'Cross Bent Knee Lifts Tabletop (Rightt)(1) (1)', 'Place your hands palm way down on the floor facing toward heels beneath the shoulders and arms straight. There should be shoulders width space between hands. Place your right leg on the floor in a bending position while bend left leg inwards to right hand side and rest right ankle on left leg thigh just above knee. Lift the body up from the floor and from head to knee, align it in a straight line. While stand on toe as body is lifted up. Bring the body down above the floor & by moving backward slightly, stand on your heel. Take rest and repeat the same movement by breathing in-out.', 30, '1679295904_Cross Bent Knee Lifts Tabletop (Right).jpg', '1679295904_Cross Bent Knee Lifts Tabletop (Rightt)(1) (1).mp4', 1, '2023-03-20 18:05:04', '2023-03-20 18:05:04', NULL),
(231, 'Fingers Pulses', 'Stand on the floor. Rest arms above your waist line in a bending position. Create stress in your chest, shoulders and arm muscles. Open hands with full power then close it. Again open hands and close them by making punch. Repeat this motion and breathe normally during the exercise.', 30, '1679470283_Fingers Pulses.jpg', '1679470283_Fingerspulses.mp4', 1, '2023-03-22 18:31:23', '2023-03-25 04:29:11', NULL),
(232, 'Fingers Spread Curl Hold', 'Stand on the floor. Lift both arms to the front a bit. Bend your hands by wrist halfway down and open the fingers completely. Hold in this position and create stress in muscles. Bring body to rest.', 30, '1679470344_Fingers Spread Curl Hold.jpg', '1679470344_Fingersspreadcurlhold.mp4', 1, '2023-03-22 18:32:24', '2023-03-22 18:32:24', NULL),
(233, 'Fingers Spread Reverse Scoopers', 'Stand straight on the floor. Lift arms up to the belly height in a bending position. Create a stress in your hands and open them fully. Start to rotate hands in up and down motion. Keep rotating hands for couple of seconds. Breathe normally during exercise. Take rest and repeat the movement again.', 30, '1679470392_Fingers Spread Reverse Scoopers.jpg', '1679470392_Fingersspreadreversescoopers.mp4', 1, '2023-03-22 18:33:12', '2023-03-22 18:33:12', NULL),
(234, 'Fingers Spread Rocker Rotations', 'Stand at ease. Bring both arms to the front in a slight bend pose. From elbows to wrists stiffened up your arms. Open fingers of both hands full. Move hands down and hold. Stretch lower arms as much possible as you can.', 30, '1679470552_Fingers Spread Roker Rotations.png', '1679470552_Fingersspreadrokerrotations.mp4', 1, '2023-03-22 18:35:52', '2023-03-22 18:35:52', NULL),
(235, 'Squeeze Curl In Out', 'Stand straight on the floor. Rest arms by your sides. Lift your arms to the way of belly a bit. By facing palms downwards, make punch of hands. Slightly bend punches down by the wrists. Start to move hands in up and down motion by rotation movement. Keep on doing this action for few seconds.', 30, '1679470602_Squeeze Curl In Out.jpg', '1679470602_Squeezecurlinout.mp4', 1, '2023-03-22 18:36:42', '2023-03-22 18:36:42', NULL),
(236, 'Switch Squeeze', 'Stand on the floor at ease. Lift up both arms parallel to each other. Hands should be open. Now fold fingers to the palms and squeeze. Turn hands upward and fold fingers in to the palms again and squeeze. Repeat this motion few times on either sides and carry on with the exercise again.', 30, '1679470676_Switch Squeezes.jpg', '1679470676_Switchsqueezes.mp4', 1, '2023-03-22 18:37:56', '2023-03-22 18:37:56', NULL),
(237, 'Fingers Spread Front Twists', 'Stand on the floor. Lift arms straight to the way of chest parallel to each other. Bend hands down by the wrist with fingers open completely. Now start to twist hands in upward and downward motion. Continue to perform this exercise for few seconds take rest then.', 30, '1679470806_Fingers Spread Front Twists.jpg', '1679470806_Fingersspreadfronttwists.mp4', 1, '2023-03-22 18:40:06', '2023-03-22 18:40:06', NULL),
(238, 'Fingers Spread Swing Back', 'Stand at ease on the floor. Rest hands by your sides. Lift your arms up to the outer side. Open your hands and bend them by the wrist. Give hands a good stretch. Move hands in up and down motion. During the hand movements, arm and shoulder muscles should be stretched too. Continue this exercise while taking rest in between.', 30, '1679470872_Fingers Spread Swing Back.jpg', '1679470872_Fingersspreadswingback.mp4', 1, '2023-03-22 18:41:12', '2023-03-22 18:41:12', NULL),
(239, 'Fingers Spread Twist Reverse Curls', 'Stand straight on the floor. By facing palms to the floor, slightly bend your arms by elbows upward. Firstly move hands in up and down motion few times. Secondly twist hands in upward and downward movement. Take rest and repeat the movement again. During both kinds of movements, stretch your activated muscles as much as possible.', 30, '1679470936_Fingers Spread Twist Reverse Curls.jpg', '1679470936_Fingersspreadtwistreversecurls.mp4', 1, '2023-03-22 18:42:16', '2023-03-22 18:42:16', NULL),
(240, 'Forward Reverse Wrist Curls', 'Stand at ease on the floor. Lift arms toward front side of the belly. Close both hands like a punch. Now by creating pressure on wrist joint, start to move hands up and down. Keep going on with this movement for few seconds. Take rest by breathing in-out.', 30, '1679471163_Forward Reverse Wrist Curls.png', '1679471163_Forwardreversewristcurls.mp4', 1, '2023-03-22 18:46:03', '2023-03-22 18:46:03', NULL),
(241, 'Frontal Rotations', 'Stand on the floor in a way that your hands on either side in a bending position. Your elbows should reach the height of lower rib cage, while lower arms straight parallel to each other. Make punch of hands and start to move hands up to the thumb and in downward direction. Keep on moving hands up and down. Take rest in between workout.', 30, '1679471305_Frontal Frayers.png', '1679471305_Frontalrotations.mp4', 1, '2023-03-22 18:48:25', '2023-03-22 18:48:25', NULL);
INSERT INTO `exercises` (`id`, `ex_name`, `ex_description`, `ex_duration`, `ex_thumbnail_url`, `ex_video_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(242, 'Palm Squeeze', 'Stand at ease on the floor. Bend both arms inward to the lower side of rib cage. Hold one hand with the other hand tightly. Start to press both hands palm way to each other. Loose up the hands and again press both together. Repeat this movement or action few times.', 30, '1679471402_Palm Squeeze.jpg', '1679471402_Palmsqueeze.mp4', 1, '2023-03-22 18:50:02', '2023-03-22 18:50:02', NULL),
(243, 'Squeeze Reverse Corcle', 'Stand on the floor with a small space between feet. Lift arms till shoulders height. Fold hands inwards. Start to rotate hands anti-clock wise for couple of turns. Take rest after few movements, and then continue with the movement again.', 30, '1679471466_Squeeze Reverse Corcle.png', '1679471466_Squeezereverse corcle.mp4', 1, '2023-03-22 18:51:06', '2023-03-22 18:51:06', NULL),
(244, 'Behind Squeeze Circles', 'Stand straight on the floor. Feet should be joined and arms rest on either hand side. Lift both arms up to the outer side slightly and move arms backward a bit. Now by folding fingers to the palm, rotate hands by the wrist. Continue to perform this movement.', 30, '1679471569_Behind Squeeze Circle.jpg', '1679471569_Behindsqueeze circle.mp4', 1, '2023-03-22 18:52:49', '2023-03-22 18:52:49', NULL),
(245, 'Blasters', 'Stand straight at ease. Lift up arms on either sides from the hips and take arms at back a bit. Now with the help of hands, push air back. Repeat this movement few times.', 30, '1679471617_Blasters.jpg', '1679471617_Blasters.mp4', 1, '2023-03-22 18:53:37', '2023-03-22 18:53:37', NULL),
(246, 'Downward Wrist Curl', 'Stand straight on the floor. Lift both arms till shoulder height with hands open. Now start to move hands up and down from wrist joint. Keep on moving hands up-down for some time.', 30, '1679471713_Downward Wrist Curl.png', '1679471713_Downwardwristcurl.mp4', 1, '2023-03-22 18:55:13', '2023-03-22 18:55:13', NULL),
(247, 'Frontal Frayers', 'Stand on the floor. Lift your arms up on either side till shoulders height. From wrist joint bend hands down and fold fingers inwards to hand palms. Now start to move hands to the way of thumbs up and down. Create pressure on lower arms above wrist. Keep on rotating hands same like halfway.', 30, '1679471769_Frontal Frayers.png', '1679471769_Frontalfrayers.mp4', 1, '2023-03-22 18:56:09', '2023-03-22 18:56:09', NULL),
(248, 'Frontal Squeeze Hammer Pulse', 'Stand straight on the floor. Bend both arms upward halfway to the belly. Now by stiffening the muscles from the elbows move up the arm toward chest and take arm down. Repeat this workout for few times, and then take rest.', 30, '1679471827_Frontal Squeeze Hammer Pulse.jpg', '1679471827_Frontalsqueezehammerpulse.mp4', 1, '2023-03-22 18:57:07', '2023-03-22 18:57:07', NULL),
(249, 'Inner Wrist Curl', 'Stand at ease position on the floor. Rest arms by your sides but a bit lifted up. Make punch of hands. In this pose start to move hands inwards and outward. Move hands in and out at normal speed. Take rest after every 15 seconds.', 30, '1679471888_Inner Wrist Curl.png', '1679471888_Innerwristcurl.mp4', 1, '2023-03-22 18:58:08', '2023-03-22 18:58:08', NULL),
(250, 'Push Spread', 'Stand on the floor straight. Bend both arms upwards and join hands in front of the face. Creating pressure at lower palm side, open the upper part of hands. Push lower hand palms inward as hard as possible. Continue to perform this act for few seconds. Bring body to ease then.', 30, '1679471940_Push Spread.jpg', '1679471940_Pushspread.mp4', 1, '2023-03-22 18:59:00', '2023-03-22 18:59:00', NULL),
(251, 'Squeeze Reverse Hold', 'Stand straight by facing hands palms toward the floor. Slightly move hands forward up. Now fold hands like a punch. Squeeze hands tightly. Hold in this position by creating tension in arm muscles. Bring body to ease. Repeat the hold position again.', 30, '1679471984_Squeeze Reverse Hold.jpg', '1679471984_Squeezereversehold.mp4', 1, '2023-03-22 18:59:44', '2023-03-22 18:59:44', NULL),
(252, 'Upward Apple Picker', 'By standing straight, open your arms widely to either side. Your hand palms should be facing upward. In this pose start to fold the fingers in and out. Make punch of hands and open them up instantly. Keep on closing and opening the hands. Repeat this movement for few seconds.', 30, '1679472090_Upward Apple Picker.png', '1679472090_Upwardapplepicker.mp4', 1, '2023-03-22 19:01:30', '2023-03-22 19:01:30', NULL),
(253, 'Upward Wrist Curl', 'Stand on the floor. Open your legs with small space in between feet. Lift arms on either side like a flying bird. Now start to move hands in up and downward motion. Continue to move hands like this for few turns then take rest.', 30, '1679472128_Upward Wrist Curl.png', '1679472128_Upwardwristcurl.mp4', 1, '2023-03-22 19:02:08', '2023-03-22 19:02:08', NULL),
(254, '180 Degree Rotations', 'Stand on the floor. Head to toe your body should be straight. Bend your arms upward halfway by facing palms to the ceiling. Fold fingers and make punch of hands. Now start to rotate punches in up and down direction or halfway. Stretch arms during rotation movements.', 30, '1679472181_180 Degree Rotation.jpg', '1679472181_180Degreerotation.mp4', 1, '2023-03-22 19:03:01', '2023-03-22 19:03:01', NULL),
(255, 'Arms Out Palms Forward Front', 'By standing straight on the floor, spread your arms straight like a bird with hands open and palms facing to the way of outer side. Fold your fingers in toward the palm and bend hands inward. Take the hands back and repeat the motion.', 30, '1679472229_Arms Out Palms Forward Front.jpg', '1679472229_Armsoutpalmsforwardfront.mp4', 1, '2023-03-22 19:03:49', '2023-03-22 19:03:49', NULL),
(256, 'Downward Apple Picker', 'Stand on the floor at ease. Lift your arms aside till shoulders height straight like an airplane. Now start to press fingers of either hand inward to the palms. Keep on pressing fingers inward few times, and then take rest.', 30, '1679472336_Downward Apple Picker.jpg', '1679472336_Downwardapplepicker.mp4', 1, '2023-03-22 19:05:36', '2023-03-22 19:05:36', NULL),
(257, 'Rear Toasters', 'Stand straight on the floor. Lift arms aside like a flying bird. Make punch of hands and face them in downward direction. In this position, move hands in forward and backward direction. Stretch arms and hands as much as possible during movement.', 30, '1679472674_Raer Toasters.png', '1679472674_Raertoasters.mp4', 1, '2023-03-22 19:11:14', '2023-03-22 19:11:14', NULL),
(258, 'Reverse Squeeze Hamme Pulse', 'Stand straight on the floor. Bend both arms halfway till belly height up. Open hands full and stretch. Now start to move lower arms up to the chest and downward to belly by the wrists. Arms should be parallel to each other. Continue with the workout.', 30, '1679472728_Reverse Squeeze Hammer Pulse.jpg', '1679472728_Reversesqueezehammerpulse.mp4', 1, '2023-03-22 19:12:08', '2023-03-22 19:12:08', NULL),
(259, 'Squeeze Circle', 'Stand on the floor. Lift arms like a plane. Fold in fingers to palm. Start to make circles of hands. Squeeze hands when you make circles. Continue to perform this action again by rest in between.', 30, '1679736272_Squeeze Circle.png', '1679736272_Squeezecircle.mp4', 1, '2023-03-25 20:24:32', '2023-03-25 20:24:32', NULL),
(260, 'Angled Kick Back (Left)', 'Stand on your arms by facing hands palm way down to the floor and shoulders width space between them. Place right leg in bending position on the floor, while resting lower leg on toe. Lift left leg straight up to the height of hip in the air. Straighten up your body from head to toe. Now start to move left leg in up left direction to the outer side. Then take leg back down and tap the floor in way of right foot. Raise the leg and repeat moves again.', 30, '1680342788_Angled Kick back (Left).jpg', '1680157064_Angled Kick Back (Left).mp4', 1, '2023-03-30 17:17:44', '2023-04-01 20:53:08', NULL),
(261, 'Angled Kick Back (Right)', 'Stand on your arms by hands facing palm way down to the floor and shoulders width space between them. Place left leg in bending position on the floor, while resting lower leg on toe. Lift right leg straight up to the height of hip in the air. Straighten up your body from head to toe. Now start to move right leg in up right direction to the outer side. Then take leg back down and tap the floor in way of left foot. Raise the leg and repeat moves again.', 30, '1680342751_Angled Kick Back (Right).jpg', '1680157126_Angled Kick Back (Right).mp4', 1, '2023-03-30 17:18:46', '2023-04-01 20:52:31', NULL),
(263, 'New Test Ex', 'NA', 33, '1680339697_1680157356_Butt Glute Heel Up Angle 2.jpg', '1680339697_Squeezereversehold.mp4', 0, '2023-04-01 20:01:37', '2023-04-01 20:01:56', '2023-04-01 20:01:56'),
(264, 'Butt Glute Heel Up Angle 2', 'Lay down on the floor on your spine. By bending your lower arms, rest them on ribs under the chest. Bend your legs. There should be normal space between feet. Raise your hips above the floor. From knees to chest your body should be straight. In this position raise heels of either foot one by one. Keep this movement going on for few seconds.', 30, '1680343123_Butt Glute Heel Up Angle 2.jpg', '1680343123_Butt Glute Heel Up Angle 2.mp4', 1, '2023-04-01 20:58:43', '2023-04-01 20:58:43', NULL),
(265, 'Butt Glute Heel Up', 'Lay down on the floor on your spine. By bending your lower arms upward straight toward the ceiling, rest elbows down. Bend your legs. There should be normal space between feet. Raise your hips and lower back above the floor. From knees to chest your body should be straight. In this position raise heels of either foot turn by turn. Keep this movement going on for few seconds.', 30, '1680343170_Butt Glute Heel Up.jpg', '1680343170_Butt Glute Heel Up.mp4', 1, '2023-04-01 20:59:30', '2023-04-01 20:59:30', NULL),
(266, 'Crab Walk', 'Stand at ease on the floor. Bend body from waist forward to the floor and bend lower arms up to the chest halfway, while legs bent with normal space in between feet. Now move towards right hand side and to the left hand side in the same pose. Breathe normally during the movement.', 30, '1680343245_Crab Walk.jpg', '1680343245_Crab Walk.mp4', 1, '2023-04-01 21:00:45', '2023-04-01 21:00:45', NULL),
(267, 'Cross Leg Movement', 'Lay down on the floor straight. Spread and place arms on the floor on side like an airplane. Raise both legs straight up. Move down right leg to the left side and while left leg remains up. Take right leg back up again. Similarly, move left leg down to the right side while the right leg remains up. Continue with this movement few times and take rest. ', 30, '1680343389_Cross leg Movement.jpg', '1680343389_Cross Leg Movement.mp4', 1, '2023-04-01 21:03:09', '2023-04-01 21:03:09', NULL),
(268, 'Donkey Pulse (Left)', 'Stand on your arms by hands facing palm way down to the floor and shoulders width space between them. Place right leg in bending position on the floor, while resting lower leg on toe. Lift left leg upward in a bending position. Now start to move the lifted leg up two times and then bring the leg down above the floor beside right knee. Lift leg back up and continue with the same movements.', 30, '1680343549_Donkey Pulse (Left).jpg', '1680343549_Donkey Pulse (Left).mp4', 1, '2023-04-01 21:05:49', '2023-04-01 21:05:49', NULL),
(269, 'Donkey Pulse (Right)', 'Stand on your arms by hands facing palm way down to the floor and shoulders width space between them. Place left leg in bending position on the floor, while resting lower leg on toe. Lift right leg upward in a bending position. Now start to move the lifted leg up two times and then bring the leg down above the floor beside left knee. Lift leg back up and continue with the same movements.', 30, '1680344442_Donkey Pulse (Right).jpg', '1680344442_Donkey Pulse (Right).mp4', 1, '2023-04-01 21:20:42', '2023-04-01 21:20:42', NULL),
(270, 'Fire Hydrand Kick (Right)', 'Place your hands on the floor palm way down, arms should be straight beneath the shoulders with normal space between them. Bend both legs and rest lower legs on toes. Lift the right leg up out to the right side and kick hard. Kick for few times in the same direction and then take rest.', 30, '1680420485_Fire Hydrand Kick (Right).jpg', '1680420485_Fire Hydrand Kick (Right).mp4', 1, '2023-04-02 18:28:05', '2023-04-02 18:28:05', NULL),
(271, 'Fire Hydrant Kick (Left)', 'Place your hands on the floor palm way down, arms should be straight beneath the shoulders with normal space between them. Bend both legs and rest lower legs on toes. Lift the left leg up out to the left side and kick hard. Kick for few times in the same direction and then take rest.', 30, '1680420537_Fire Hydrant Kick (Left).jpg', '1680420537_Fire Hydrant Kick (Left).mp4', 1, '2023-04-02 18:28:57', '2023-04-02 18:28:57', NULL),
(272, 'Frog Stretch', 'Sit on the floor like a frog by placing elbows on the floor under the shoulder to a shoulders width space between them. Bend legs and place knees on the floor and open them wide while feet joined. Now stretch your body for couple of breaths and relax the body.', 30, '1680420614_Frog Stretch.jpg', '1680420614_Frog Stretch.mp4', 1, '2023-04-02 18:30:14', '2023-04-02 18:30:14', NULL),
(273, 'Glute Bridge Abduction', 'Lay on the floor. Bend your legs with feet widely opened. Take your arms at the back of head and rest head on hands. By creating pressure on feet and shoulder blades, lift back, hips and thighs above the floor. As the body is lifted, align straight the body from chest to knees. At this point move knees in and outward direction for few seconds. Rest down on the floor and repeat the action again as described.', 30, '1680420664_Glute Bridge Abduction.jpg', '1680420664_Glute Bridge Abduction.mp4', 1, '2023-04-02 18:31:04', '2023-04-02 18:31:04', NULL),
(274, 'Glute Bridge', 'Lay down on the floor by bending your legs with feet shoulders width apart. Place your hands at ease on the floor, belly or thighs. By putting pressure on feet and shoulder blades down to the floor, lift the body up above the floor. Start to move in up and down motion in this position. Repeat this movement for few times.', 30, '1680420717_Glute Bridge.jpg', '1680420717_Glute Bridge.mp4', 1, '2023-04-02 18:31:57', '2023-04-02 18:31:57', NULL),
(275, 'Glute Flutters', 'Lay down on your belly on the floor straight. Bend arms up towards the face and rest face on hands, lift chest above the floor. Lift both legs in the air. Start to move legs in up and down motion. Continue to do this movement for couple of seconds. Rest down legs and breathe in-out. Afterwards repeat the steps again.', 30, '1680420775_Glute Flutters.jpg', '1680420775_Glute Flutters.mp4', 1, '2023-04-02 18:32:55', '2023-04-02 18:32:55', NULL),
(276, 'Glute Kick', 'Lay down on your belly on the floor straight. Bend arms in towards the face and rest face on hands. Lift both legs up the floor till thighs by joining heels. Now move the legs down and lift them up again in the same position. Carry on with this movement few times.', 30, '1680420835_Glute Kick.jpg', '1680420835_Glute Kick.mp4', 1, '2023-04-02 18:33:55', '2023-04-02 18:33:55', NULL),
(277, 'Glute Kickback (Left)', 'Place your elbows and lower arms on the floor with shoulder width space between them. Join both hands together. Balance your body on right leg, while rest lower leg on toe. Lift left leg above the floor and kick back up in the air. Bring the leg back down gently and kick back again. Take rest in between and continue to perform the acts as described.', 30, '1680420902_Glute Kickback (Left).jpg', '1680420902_Glute Kickback (Left).mp4', 1, '2023-04-02 18:35:02', '2023-04-02 18:35:02', NULL),
(278, 'Glute Kickback (Right)', 'Place your elbows and lower arms on the floor with shoulder width space between them. Join both hands together. Balance your body on left leg, while rest lower leg on toe. Lift right leg above the floor and kick back up in the air. Bring the leg back down gently and kick back again. Take rest in between and continue to perform the acts as described.', 30, '1680420941_Glute Kickback (Right).jpg', '1680420941_Glute Kickback (Right).mp4', 1, '2023-04-02 18:35:41', '2023-04-02 18:35:41', NULL),
(279, 'Hold Kick Back (Left)', 'Stand like a dog on the floor by placing hands on the floor and knees down while legs bent. Hands should be shoulders width apart. Now lift your left leg and stretch it straight towards backside. Hold in this position for few seconds.', 30, '1680421029_Hold Kick Back (Left).jpg', '1680421029_Hold Kick Back (Left).mp4', 1, '2023-04-02 18:37:09', '2023-04-02 18:37:09', NULL),
(280, 'Hold Kick Back (Right)', 'Stand like a dog on the floor by placing hands on the floor and knees down while legs bent. Hands should be shoulders width apart. Now lift your right leg and stretch it straight towards backside. Hold in this position for few seconds.', 30, '1680421892_Hold Kick Back (Right).jpg', '1680421892_Hold Kick Back (Right).mp4', 1, '2023-04-02 18:51:32', '2023-04-02 18:51:32', NULL),
(281, 'Knee In & Extend (Left)', 'Stand on the floor by placing hands palm way down and opened widely. Your arms should be straight. Place legs in a bending position, your knees beneath the hips and lower legs rest on toes. Now lift your left leg above the floor straight back in the air and bend it in toward the chest. Take the leg back and bend it in again. Stretch the body during such movements.', 30, '1680421956_Knee In & Extend (Left).jpg', '1680421956_Knee In & Extend (Left).mp4', 1, '2023-04-02 18:52:36', '2023-04-02 18:52:36', NULL),
(282, 'Knee In & Extend (Right)', 'Stand on the floor by placing hands palm way down and opened widely. Your arms should be straight. Place legs in a bending position, your knees beneath the hips and lower legs rest on toes. Now lift your right leg above the floor straight back in the air and bend it in toward the chest. Take the leg back and bend it in again. Stretch the body during such movements.', 30, '1680422010_Knee In & Extend (Right).jpg', '1680422010_Knee In & Extend (Right).mp4', 1, '2023-04-02 18:53:30', '2023-04-02 18:53:30', NULL),
(283, 'Lateral Lunge (Left)', 'Stand straight on the floor at ease. Step out towards left hand side by bending left leg and straightening right leg, while upper body slightly bent from waist and arms bent upwards to the way of chest and hands joined. Move back to the starting position and bring body to ease. Again perform the movement as described.', 30, '1680422312_Lateral Lunge (Left).jpg', '1680422312_Lateral Lunge (Left).mp4', 1, '2023-04-02 18:58:32', '2023-04-02 18:58:32', NULL),
(284, 'Lateral Lunge (Right)', 'Stand straight on the floor at ease. Step out towards right hand side by bending right leg and straightening left leg, while upper body slightly bent from waist and arms bent upwards to the way of chest and hands joined. Move back to the starting position and bring body to ease. Again perform the movement as described. Breathe normally during exercise.', 30, '1680422393_Lateral Lunge (Right).jpg', '1680422393_Lateral Lunge (Right).mp4', 1, '2023-04-02 18:59:53', '2023-04-02 18:59:53', NULL),
(285, 'Leg Through Back (Left)', 'Stand on the floor with legs open wide and arms bend in towards the middle of the chest and join hands. Slightly bend upper body by the waist and knees. Now bend legs halfway by the knees and on standing take the left leg to the left side towards back. Repeat the action again.', 30, '1680422531_Leg Through Back (Left).jpg', '1680422531_Leg Through Back (Left).mp4', 1, '2023-04-02 19:02:11', '2023-04-02 19:02:11', NULL),
(286, 'Leg Through Back (Right)', 'Stand on the floor with legs open wide and arms bend in towards the middle of the chest and join hands. Slightly bend upper body by the waist and knees. Now bend legs halfway by the knees and on standing take the right leg to the right side towards back. Repeat the action again.', 30, '1680422589_Leg Through Back (Right).jpg', '1680422589_Leg Through Back (Right).mp4', 1, '2023-04-02 19:03:09', '2023-04-02 19:03:09', NULL),
(287, 'Pulsing Squat', 'Stand straight at ease on the floor by arms on sides and legs open. Bend body slightly by waist. Bend arms towards chest and hold hands under the chin, while elbows apart. Bend the legs a bit too. Start to move up and down by putting pressure on hips.  Repeat this movement few times then take rest. ', 30, '1680422651_Pulsing Squat.jpg', '1680422651_Pulsing Squat.mp4', 1, '2023-04-02 19:04:11', '2023-04-02 19:04:11', NULL),
(288, 'Pop Squat (Left)', 'Stand on the floor straight. Take a jump. Open your legs wide apart. Bend upper body by the waist, at the same time take the right arm straight to the back and touch the floor with your left hand, while legs bend too on touching the floor. Take a jump again and stand straight.', 30, '1680427254_Pop Squat (Left).jpg', '1680427254_Pop Squat (Left).mp4', 1, '2023-04-02 20:20:54', '2023-04-02 20:20:54', NULL),
(289, 'Pop Squat (Right)', 'Stand on the floor straight. Take a jump. Open your legs wide apart. Bend upper body by the waist, at the same time take the left arm straight to the back and touch the floor with your right hand, while legs bend too on touching the floor. Take a jump again and stand straight.', 30, '1680427297_Pop Squat (Right).jpg', '1680427297_Pop Squat (Right).mp4', 1, '2023-04-02 20:21:37', '2023-04-02 20:21:37', NULL),
(290, 'Rainbow Leg Lift (Left)', 'Place hands on the floor palm way down beneath the shoulders and shoulders width apart. Balance body on right leg while lower leg stands on toe. Lift left leg straight back in the air till hip height. Now start to move the left leg from left to right and right to left in arc shape over the right foot. Breathe normally during workout.', 30, '1680427370_Rainbow Leg Lift (Left).jpg', '1680427370_Rainbow Leg Lift (Left).mp4', 1, '2023-04-02 20:22:50', '2023-04-02 20:22:50', NULL),
(291, 'Rainbow Leg Lift (Right)', 'Place hands on the floor palm way down beneath the shoulders and shoulders width apart. Balance body on left leg while lower leg stands on toe. Lift right leg straight back in the air till hip height. Now start to move the right leg from right to left and left to right in arc shape over the left foot. Breathe normally during workout.', 30, '1680427416_Rainbow Leg Lift (Right).jpg', '1680427416_Rainbow Leg Lift (Right).mp4', 1, '2023-04-02 20:23:36', '2023-04-02 20:23:36', NULL),
(292, 'Reverse Lunge Kickback (Left)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take left leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your right leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680427506_Reverse Lunge Kickback (Left).jpg', '1680427506_Reverse Lunge Kickback (Left).mp4', 1, '2023-04-02 20:25:06', '2023-04-02 20:25:06', NULL),
(293, 'Reverse Lunge Kickback (Right)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take right leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your left leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680427549_Reverse Lunge Kickback (Right).jpg', '1680427549_Reverse Lunge Kickback (Right).mp4', 1, '2023-04-02 20:25:49', '2023-04-02 20:25:49', NULL),
(294, 'Side Plank (Left)', 'Lay on your right hand side by standing upper body on right arm and placing hand palm way down; while left leg placed over right leg in a bending pose. Rest left hand on left waist side and arm bent upward. Now start to move both knees in and out while feet joined. Repeat this movement few times and keep on changing the position of left hand from waist to the back of head.', 30, '1680427592_Side Plank (Left).jpg', '1680427592_Side Plank (Left).mp4', 1, '2023-04-02 20:26:32', '2023-04-02 20:26:32', NULL),
(295, 'Side Plank (Right)', 'Lay on your left hand side by standing upper body on left arm and placing hand palm way down; while right leg placed over left leg in a bending pose. Rest right hand on right waist side and arm bent upward. Now start to move both knees in and out while feet joined. Repeat this movement few times and keep on changing the position of right hand from waist to the back of head.', 30, '1680427690_Side Plank (Right).jpg', '1680427690_Side Plank (Right).mp4', 1, '2023-04-02 20:28:10', '2023-04-02 20:28:10', NULL),
(296, 'Straight Leg Circles (Left)', 'Stand on the floor by placing arms straight and hands palms way down with shoulders width space between them. Balance body by resting right leg down in a bending pose and lift left leg straight back at the height of hip. Start to make circles with left leg clockwise, and then rotate it anti-clock wise. Bring body to ease and repeat this movement.', 30, '1680427789_Straight Leg Circles (Left).jpg', '1680427789_Straight Leg Circles (Left).mp4', 1, '2023-04-02 20:29:49', '2023-04-02 20:29:49', NULL),
(297, 'Straight Leg Circles (Right)', 'Stand on the floor by placing arms straight and hands palms way down with shoulders width space between them. Balance body by resting left leg down in a bending pose and lift right leg straight back at the height of hip. Start to make circles with right leg clockwise, and then rotate it anti-clock wise. Bring body to ease and repeat this movement.', 30, '1680427839_Straight Leg Circles (Right).jpg', '1680427839_Straight Leg Circles (Right).mp4', 1, '2023-04-02 20:30:39', '2023-04-02 20:30:39', NULL),
(298, 'Sumo Squat Angle 2', 'Stand on the floor with legs open and feet pointing to the either outer side. Place arms by your sides. Bend legs halfway and sit, while bend arms upward in to the middle of chest under the chin and join hands there. Stand up again in the same position. (Back should be toward camera).', 30, '1680427907_Sumo Squat Angle 2.jpg', '1680427907_Sumo Squat Angle 2.mp4', 1, '2023-04-02 20:31:47', '2023-04-02 20:31:47', NULL),
(299, 'Sumo Squat', 'Stand on the floor with legs open and feet pointing to the either outer side. Place arms by your sides. Bend legs halfway and sit, while bend arms upward in to the middle of chest under the chin and join hands there. Stand up again in the same position. (Face should be toward camera).', 30, '1680427950_Sumo Squat.jpg', '1680427950_Sumo Squat.mp4', 1, '2023-04-02 20:32:30', '2023-04-02 20:32:30', NULL),
(300, '4 Way Direction', 'Lay down on the floor on your belly straight by placing legs and arms joined together and resting down. Now lift your head, legs, and arms up at the same time resting your whole body on your belly. In the air open up your arms and legs, and on closing them, rest head, arms, and legs down on the floor. Repeat this movement from time to time by taking a rest in between.', 30, '1680430673_4 Way Direction.jpg', '1680430673_4 Way Direction.mp4', 1, '2023-04-02 21:17:53', '2023-04-02 21:17:53', NULL),
(301, 'Bridge Side Hip Raise', 'Lay on the floor. Bend your legs halfway joined together. Place your arms down to the shoulders and at a slight distance from the waist and rib cage. Keep your head down. Lift your hips above the floor. From knees to chest your body should be straight. Stay still in this pose and start to move hips from left to right side and right to left side. Continue to do this motion for few times and take a rest.', 30, '1680430820_Bridge Side Hip Raise.jpg', '1680430820_Bridge Side Hip Raise.mp4', 1, '2023-04-02 21:20:20', '2023-04-02 21:20:20', NULL),
(302, 'Clam Shell', 'Lay on your right hand side on the floor. Your body from head to hip and legs should be bend normally. Rest left leg on right leg. Your head should rest on right arm which is bent backwards creating (V) of it and put left arm in front of you in a bending pose by placing hand palm way down in front of chest. Now without lifting left foot, lift left knee up from the right knee and rest it down on right knee again. Repeat this up-down movement fewer times. Breathe normally during this motion.', 30, '1680430870_Clam Shell.jpg', '1680430870_Clam Shell.mp4', 1, '2023-04-02 21:21:10', '2023-04-02 21:21:10', NULL),
(303, 'Curtesy Lunge To Sidekick (Left)', 'Stand straight on the floor. Bend arms upwards to the chest and join both hands palm way. Now take back the left leg in a bending position, while bending the right leg in its place halfway. Stand straight again and take the left leg to the outer side of the left hand. Bring the leg down and repeat the workout the same way as done before.', 30, '1680430950_Curtesy Lunge to Sidekick (Left)).jpg', '1680430950_Curtesy Lunge To Sidekick (Left)).mp4', 1, '2023-04-02 21:22:30', '2023-04-02 21:22:30', NULL),
(304, 'Curtesy Lunge To Sidekick (Right)', 'Stand straight on the floor. Bend arms upwards to the chest and join both hands palm way. Now take back the right leg in a bending position, while bending the left leg in its place halfway. Stand straight again and take the right leg to the outer side of the right hand. Bring the leg down and repeat the workout the same way as done before.', 30, '1680431514_Curtesy Lunge To Sidekick (Right).jpg', '1680431514_Curtesy Lunge To Sidekick (Right).mp4', 1, '2023-04-02 21:31:54', '2023-04-02 21:31:54', NULL),
(305, 'Donkey Kick Circle-Left', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your left leg in a bending pose back up, your left leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.', 30, '1680431561_Donkey Kick Circle-Left.jpg', '1680431561_Donkey Kick Circle-Left.mp4', 1, '2023-04-02 21:32:41', '2023-04-02 21:32:41', NULL),
(306, 'Donkey Kick Circle-Right', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your right leg in a bending pose back up, your right leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.', 30, '1680431672_Donkey Kick Circle-Right.jpg', '1680431672_Donkey Kick Circle-Right.mp4', 1, '2023-04-02 21:34:32', '2023-04-02 21:34:32', NULL),
(307, 'Donkey Kicks', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your right leg in a bending pose back up, your right leg knee should be at the height of hip. Now lift your left leg in a bending pose back up, your right leg knee should be at the height of hip. Now Bring the leg down in the same bending pose & repeat this action again.', 30, '1680431979_Donkey kicks.jpg', '1680431979_Donkey Kicks.mp4', 1, '2023-04-02 21:39:39', '2023-04-02 21:39:39', NULL),
(308, 'Duck Walk', 'Bend legs by knees halfway with shoulders width space between them, feet should be pointing to both outer side and upper body slightly bent by the waist. Lift lower arms towards the middle of the chest and hold both hands. In the same pose start to step forward and then to the back. Keep going on with this move and after a few steps take a rest.', 30, '1680432024_Duck Walk.jpg', '1680432024_Duck Walk.mp4', 1, '2023-04-02 21:40:24', '2023-04-02 21:40:24', NULL),
(309, 'Forearm Knee Tap', 'Lay on your left hand side by standing upper body on left arm and placing hand palm way down; while right leg placed over left leg in a bending pose. Rest right hand on right waist side and arm bent upward. Now start to move both knees in and out while feet joined. Repeat this movement few times and keep on changing the position of right hand from waist to the back of head.', 30, '1680432074_Forearm Knee Tap.jpg', '1680432074_Forearm Knee Tap.mp4', 1, '2023-04-02 21:41:14', '2023-04-02 21:41:14', NULL),
(310, 'Frog Bridges', 'Lay down on the floor on your back. Lift above your arms straight and join hands palm to palm. Bend your legs halfway; join the sole of both feet, and open-up legs by knees. Now start to move hips up and down above the floor. Continue these movements for a few breaths, and then lay down on the floor.', 30, '1680432173_Frog Bridges.jpg', '1680432173_Frog Bridges.mp4', 1, '2023-04-02 21:42:53', '2023-04-02 21:42:53', NULL),
(311, 'Glutes Lift Hips Up Off', 'Lay down on the floor on your spine. By bending your lower arms upward straight toward the ceiling, rest elbows down. Bend your legs. There should be normal space between feet. Raise your hips and lower back above the floor. From knees to chest your body should be straight. In this position raise heels of either foot turn by turn. Keep this movement going on for few seconds.', 30, '1680432274_Glutes Lift hips up off.jpg', '1680432274_Glutes Lift Hips Up Off.mp4', 1, '2023-04-02 21:44:34', '2023-04-02 21:44:34', NULL),
(312, 'Glutes quickly good morning', 'Just stand on the floor and keep your body relax, now take your hand back to your back and close your hands with each other. Now bend your back like when you wake up early in the morning. Repeat this exercise for 1 to 2 minutes.', 30, '1680432478_Glutes quickly good morning.jpg', '1680432478_Glutes Quickly Good Morning.mp4', 1, '2023-04-02 21:47:58', '2023-04-02 21:47:58', NULL),
(313, 'Grab Walk', 'Stand at ease on the floor. Bend body from waist forward to the floor and bend lower arms up to the chest halfway, while legs bent with normal space in between feet. Now move towards right hand side and to the left hand side in the same pose. Breathe normally during the movement.', 30, '1680432557_Grab Walk.jpg', '1680432557_Grab Walk.mp4', 1, '2023-04-02 21:49:17', '2023-04-02 21:49:17', NULL),
(314, 'Leg Arc (Left)', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your left leg in a bending pose back up, your left leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.', 30, '1680432604_Leg Arc (Left).jpg', '1680432604_Leg Arc (Left).mp4', 1, '2023-04-02 21:50:04', '2023-04-02 21:50:04', NULL),
(315, 'Leg Arc (Right)', 'Place your hands and knees on the floor. Hands should be placed palm way down beneath the shoulders, arms straight and shoulders width apart. Knees should be placed on the floor and under the hips, while lower legs stand on toes. From head to hip your body should be straight. Now lift your right leg in a bending pose back up, your right leg knee should be at the height of hip. Bring the leg down in the same bending pose & repeat this action again.', 30, '1680432661_Leg Arc (Right).jpg', '1680432661_Leg Arc (Right).mp4', 1, '2023-04-02 21:51:01', '2023-04-02 21:51:01', NULL),
(316, 'Leg Extension Bridge Pulse', 'Lay on the floor. Place arms down to the shoulders and at a slight distance from waist and rib cage. Bend your legs and drag lower legs ahead by resting feet on heels and there should be shoulder-width space between feet. Now lift the hips up in the air and start to move in an up and down motion above the floor. After a few movements take a rest.', 30, '1680432793_Leg Extension Bridge Pulse.jpg', '1680432793_Leg Extension Bridge Pulse.mp4', 1, '2023-04-02 21:53:13', '2023-04-02 21:53:13', NULL),
(317, 'Prone Heel Taps', 'Lay on the floor on your belly. Bend your arms inward and place one hand on the other. Rest head on your hands. Open the legs widely and bend them upward back. Tap both heels then rest them down. Again lift legs and tap heels. Continue this tapping for a couple of seconds. Take a rest and again repeat the movement.', 30, '1680432836_Prone Heel Taps.jpg', '1680432836_Prone Heel Taps.mp4', 1, '2023-04-02 21:53:56', '2023-04-02 21:53:56', NULL),
(318, 'Pulsing Squat  Bend Leg (Left)', 'Stand on the floor with legs opened and shoulder-width space between them. Bend the legs slightly and the upper body by the waist slightly. Bend lower arms toward the chest and hold both hands. Now sit halfway and on standing take the right leg in a bending position to the outer right side. Rest the leg down and repeat the same process on the left leg to the outer left side. Continue to perform this movement a few times. Take deep breaths and repeat the movement again.', 30, '1680432907_Pulsing Squat  Bend Leg (Left).jpg', '1680432907_Pulsing Squat  Bend Leg (Left).mp4', 1, '2023-04-02 21:55:07', '2023-04-02 21:55:07', NULL),
(319, 'Pulsing Squat  Bend Leg (Right)', 'Stand on the floor with legs opened and shoulder-width space between them. Bend the legs slightly and the upper body by the waist slightly. Bend lower arms toward the chest and hold both hands. Now sit halfway and on standing take the right leg in a bending position to the outer right side. Rest the leg down and repeat the same process on the left leg to the outer left side. Continue to perform this movement a few times. Take deep breaths and repeat the movement again.', 30, '1680432945_Pulsing Squat  Bend Leg (Right).jpg', '1680432945_Pulsing Squat  Bend Leg (Right).mp4', 1, '2023-04-02 21:55:45', '2023-04-02 21:55:45', NULL),
(320, 'Reverse Parallel Leg Lift (Left)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take left leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your right leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680433017_Reverse Parallel Leg Lift (left).jpg', '1680433017_Reverse Parallel Leg Lift (Left).mp4', 1, '2023-04-02 21:56:57', '2023-04-02 21:56:57', NULL),
(321, 'Reverse Parallel Leg Lift (Right)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take right leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your left leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680433052_Reverse Parallel Leg Lift (Right).jpg', '1680433052_Reverse Parallel Leg Lift (Right).mp4', 1, '2023-04-02 21:57:32', '2023-04-02 21:57:32', NULL),
(322, 'Side Pulse Squat Angle 2', 'Stand straight at ease on the floor by arms on sides and legs open. Bend body slightly by waist. Bend arms towards chest and hold hands under the chin, while elbows apart. Bend the legs a bit too. Start to move up and down by putting pressure on hips.  Repeat this movement few times then take rest. Continue with the up and down movement again.', 30, '1680433155_Side Pulse Squat Angle 2.jpg', '1680433155_Side Pulse Squat Angle 2.mp4', 1, '2023-04-02 21:59:15', '2023-04-02 21:59:15', NULL),
(323, 'Side Pulse Squat', 'Stand straight at ease on the floor by arms on sides and legs open. Bend body slightly by waist. Bend arms towards chest and hold hands under the chin, while elbows apart. Bend the legs a bit too. Start to move up and down by putting pressure on hips.  Repeat this movement few times then take rest. Continue with the up and down movement again. Angle is just from the side exercise is same with pulsing squat.', 30, '1680433613_Side Pulse Squat.jpg', '1680433613_Side Pulse Squat.mp4', 1, '2023-04-02 22:06:53', '2023-04-02 22:06:53', NULL),
(324, 'Single Leg Deadlift (Left)', 'Stand straight on the floor. Bend arms up to the chest and join hands under the chin. By bending the upper body towards front in same pose, lift left leg in the air backwards. Align body in a straight line from head to lifted leg toe. By creating a good balance, bring the leg to front and bend. Take rest by breathing normally and carry on with the every move step by step.', 30, '1680434429_Single Leg Deadlift (Left).jpg', '1680434429_Single Leg Deadlift (Left).mp4', 1, '2023-04-02 22:20:29', '2023-04-02 22:20:29', NULL),
(325, 'Single Leg Deadlift (Right)', 'Stand straight on the floor. Bend arms up to the chest and join hands under the chin. By bending the upper body towards front in same pose, lift right leg in the air backwards. Align body in a straight line from head to lifted leg toe. By creating a good balance, bring the leg to front and bend. Take rest by breathing normally and carry on with the every move step by step.', 30, '1680434466_Single Leg Deadlift (Right).jpg', '1680434466_Single Leg Deadlift (Right).mp4', 1, '2023-04-02 22:21:06', '2023-04-02 22:21:06', NULL),
(326, 'Single Leg Lift (Left)', 'Lay down on the floor by bending your left legs with feet shoulders width apart. Place your hands at ease on the floor, belly or thighs. By putting pressure on feet and shoulder blades down to the floor, lift the body up above the floor. Start to move in up and down motion in this position. Repeat this movement for few times.', 30, '1680434502_Single Leg Lift (Left).jpg', '1680434502_Single Leg Lift (Left).mp4', 1, '2023-04-02 22:21:42', '2023-04-02 22:21:42', NULL),
(327, 'Single Leg Lift (Right)', 'Lay down on the floor by bending your right legs with feet shoulders width apart. Place your hands at ease on the floor, belly or thighs. By putting pressure on feet and shoulder blades down to the floor, lift the body up above the floor. Start to move in up and down motion in this position. Repeat this movement for few times.', 30, '1680434539_Single Leg Lift (Right).jpg', '1680434539_Single Leg Lift (Right).mp4', 1, '2023-04-02 22:22:19', '2023-04-02 22:22:19', NULL),
(328, 'Squat Lunges Kick Back (Left)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take left leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your right leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680434602_Squat Launges Kick Back (Right).jpg', '1680434602_Squat Lunges Kick Back (Left).mp4', 1, '2023-04-02 22:23:22', '2023-04-02 22:23:22', NULL),
(329, 'Squat Lunges Kick Back (Right)', 'Stand straight on the floor. Bend your arms up towards the chest and join both hands under the chin. Now take right leg at the back and by putting pressure on both feet bend legs halfway. By slightly bending upper body from waist, stand on your left leg and kick back upward. Rest the lifted leg down and stand straight at starting position. Repeat the same movement again.', 30, '1680434673_Squat Launges Kick Back (Right).jpg', '1680434673_Squat Launges Kick Back (Right).mp4', 1, '2023-04-02 22:24:33', '2023-04-02 22:24:33', NULL),
(330, 'Squat Pulses', 'Stand on the floor with legs open widely, arms bent upward to the chest and hands joined. Slightly bend upper body by the waist and legs. Start to move the body up and down slowly and shortly. Continue to move for some time than stand up as initially. Kick back to the right thigh with the right leg and then to the left thigh with the left leg. Repeat the motion again after taking a rest.', 30, '1680434747_Squat Pulses.jpg', '1680434747_Squat Pulses.mp4', 1, '2023-04-02 22:25:47', '2023-04-02 22:25:47', NULL),
(331, 'Standing Glute Butt', 'Stand on the floor. Place hands on the thighs. Open your legs wide while pointing your feet to the outer side. Bend legs halfway. Start to move both knees in and outward slowly. Take deep breaths while knee movements. Continue to perform this movement by taking a rest in between.', 30, '1680434798_Standing Glute Butt.jpg', '1680434798_Standing Glute Butt.mp4', 1, '2023-04-02 22:26:38', '2023-04-02 22:26:38', NULL),
(332, 'Tip Toe Bridge Pulses', 'Lay down on your back with arms placed down to the floor. Bend your legs halfway. Now by putting pressure on toes lift heels as well as hips and back too. Start to move hips up and down. Do not rest heels on the floor, while the movement of the hips. After a few movements take a rest. ', 30, '1680434866_Tip Toe Bridge Pulses.jpg', '1680434866_Tip Toe Bridge Pulses.mp4', 1, '2023-04-02 22:27:46', '2023-04-02 22:27:46', NULL),
(333, '4 Step Elbow Lift', 'Stand on the floor with legs open. Raise your arms straight up above the head. Hold the outer side of the left elbow with a right hand and the inner side of the right elbow with the left hand. Bring arms down completely in this pose and raise them up again. Bring arms down till chest and take arms to right-hand side by the slightly twisting body too. In the same way, take arms to left-hand side by twisting body. Bring hands to the way of the chest and raise them above head again, and then take hands down. Repeat this motion a few times.', 30, '1680520272_4 Step Elbow Lift.jpg', '1680520272_4 Step Elbow Lift.mp4', 1, '2023-04-03 22:11:12', '2023-04-03 22:11:12', NULL),
(334, 'Arm Cross Side Jumping', 'Stand on the floor with legs open widely. Lift arms till shoulders height. Cross your arms and take a jump to the right-hand side, open the arms like an airplane at this point. Again cross the arms and jump towards the left-hand side. Continue to perform this movement for a couple of breaths and take a rest then.', 30, '1680520462_Arm Cross Side Jumping.jpg', '1680520462_Arm Cross Side Jumping.mp4', 1, '2023-04-03 22:14:23', '2023-04-03 22:14:23', NULL),
(335, 'Arm Crosses With Dance', 'Stand on the floor with legs widely open and arms spread like an airplane. Now cross your left arm over your right arm by taking your right leg at the back of your left leg. Open the legs widely as well as arms spread like an airplane. Now cross right arm over the left arm while taking left leg at the back of the right leg. Carry on with this movement from time to time by taking a rest.', 30, '1680520516_Arm Crosses With Dnace.jpg', '1680520516_Arm Crosses With Dnace.mp4', 1, '2023-04-03 22:15:16', '2023-04-03 22:15:16', NULL),
(336, 'Arm Crosses', 'Stand on the floor with two hands space between feet. Raise both arms straight up halfway to the chest and palm of right-hand faces palm of the left hand. Both arms should be parallel to each other. Now start to cross the right arm over the left arm and then cross the left arm over the right. Repeat this movement a few times and take a rest.', 30, '1680520579_Arm Crosses.jpg', '1680520579_Arm Crosses.mp4', 1, '2023-04-03 22:16:19', '2023-04-03 22:16:19', NULL),
(337, 'Arm Lift From Behind', 'Stand straight on the floor. Lift arms straight above the head and join hands. Bend head to forward down slightly. Take the arms back down till the spinal cord while bending and hands joined. Move arms in up-down motion for a couple of breaths. Take rest afterward.', 30, '1680520666_Arm Lift From Behind.jpg', '1680520666_Arm Lift From Behind.mp4', 1, '2023-04-03 22:17:46', '2023-04-03 22:17:46', NULL),
(338, 'Arm Press', 'Stand at ease on the ground. Bend the arms towards the front upward. Your elbows should be at the level of chest and hands above the forehead. Now join lower arms from hands till elbows and press both. Stand still in this pose for a few seconds.', 30, '1680520741_Arm Press.jpg', '1680520741_Arm Press.mp4', 1, '2023-04-03 22:19:01', '2023-04-03 22:19:01', NULL),
(339, 'Arm Presses', 'Stand at ease on the ground. Bend the arms towards the front upward. Your elbows should be at the level of chest and hands above the forehead. Now join lower arms from hands till elbows and press both. Stand still in this pose for a few seconds.', 30, '1680520832_Arm Presses.jpg', '1680520832_Arm Presses.mp4', 1, '2023-04-03 22:20:32', '2023-04-03 22:20:32', NULL),
(340, 'Arm Rotation Angle Two', 'Stand on the floor. Lift both arms straight up parallel to each other and to the way of the chest. Bend hands by wrists upward. Start to rotate arms by making big circles a few times clockwise. Similarly, continue to rotate arms in an anti-clockwise motion. Breathe normally while performing this action.', 30, '1680520883_Arm Rotation Angle Two.jpg', '1680520883_Arm Rotation Angle Two.mp4', 1, '2023-04-03 22:21:23', '2023-04-03 22:21:23', NULL),
(341, 'Arm Rotations', 'Stand on the floor. Lift both arms straight up parallel to each other and to the way of the chest. Bend hands by wrists upward. Start to rotate arms by making big circles a few times clockwise. Similarly, continue to rotate arms in an anti-clockwise motion. Breathe normally while performing this action.', 30, '1680521100_Arm Rotation.jpg', '1680521100_Arm Rotation.mp4', 1, '2023-04-03 22:25:00', '2023-04-03 22:25:00', NULL),
(342, 'Arm Side Lift', 'Stand on the floor. Place arms down by your sides with hands open. Raise right arm in backward direction and from the back; bring the arm to the front-side down. At the same time as you bring the right arm down, raise a left arm in the backward direction and from the back, and bring the arm down to the front. Repeat this motion arm by arm for a couple of moments.', 30, '1680521161_Arm Side Lift.jpg', '1680521161_Arm Side Lift.mp4', 1, '2023-04-03 22:26:01', '2023-04-03 22:26:01', NULL);
INSERT INTO `exercises` (`id`, `ex_name`, `ex_description`, `ex_duration`, `ex_thumbnail_url`, `ex_video_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(343, 'Arm Staring', 'Stand on the floor with feet open and hands resting on either side of the waist. Resting right-hand on the right waist side, lift your left arm straight up and pass in front of your face till right shoulder. When passing the arm from the face twist the body a bit for ease and stand on toes during movement. Similarly, repeat the same process on the right arm. Breathe normally during a workout.', 30, '1680521222_Arm Stearing.jpg', '1680521222_Arm Stearing.mp4', 1, '2023-04-03 22:27:02', '2023-04-03 22:27:02', NULL),
(344, 'Boxing Style Running', 'Stand on the floor. Open your legs a bit. Lift arms straight halfway to chest in a bending pose and make punches. Now start to punch in the air while running on the place you standing. Keep on performing this movement a few times. Breathe normally while workout for stamina increasing.', 30, '1680521306_Boxing Style Running.jpg', '1680521306_Boxing Style Running.mp4', 1, '2023-04-03 22:28:26', '2023-04-03 22:28:26', NULL),
(345, 'Chain Lunges', 'Stand on the floor. Open your legs at a normal distance. Lift both arms straight above the head with hands open and pointing. By making punches of hands, drag both arms down in a backward direction. Take the right leg to the back and bend the left leg halfway in its place. Now switch the legs and repeat the same movement on the left leg the same was done on right one.', 30, '1680521456_Chain Lunges.jpg', '1680521456_Chain Lunges.mp4', 1, '2023-04-03 22:30:56', '2023-04-03 22:30:56', NULL),
(346, 'Cross Fingers - Arms Lifts', 'Stand at ease on the floor. Raise arms halfway to the way of the chest. Cross fingers of the right hand with the left hand by overlapping the right arm on the left arm and moving both arms in the same position up-down. Similarly, cross fingers of the left hand with the right hand by overlapping the left arm on the right arm and moving arms in an up-down motion. Continue this movement a few times and take a rest in between.', 30, '1680521514_Cross Fingers - Arms Lifts.jpg', '1680521514_Cross Fingers - Arms Lifts.mp4', 1, '2023-04-03 22:31:54', '2023-04-03 22:31:54', NULL),
(347, 'Flaying Pose Arm Cross', 'Stand on the floor straight. Bend down the upper body from the waist. Take arms up above the head. Lift right leg up back in the air straight, while bend whole body on left leg. Hold in this pose and then switch legs by bringing arms down and taking them up. Continue with the movement as described.', 30, '1680521568_Flaying Pose Arm Cross.jpg', '1680521568_Flaying Pose Arm Cross.mp4', 1, '2023-04-03 22:32:48', '2023-04-03 22:32:48', NULL),
(348, 'Grab The Chain From Below', 'Stand on the floor. Start to run politely on your toes. At the same time move arms from down to up above the head. By reaching hands up make punches of them and pull hands down with strength. Keep going on with this movement of hands and legs. Breathe in-out normally for relaxation.', 30, '1680521613_Grab The Chain From Below.jpg', '1680521613_Grab The Chain From Below.mp4', 1, '2023-04-03 22:33:33', '2023-04-03 22:33:33', NULL),
(349, 'Head Punches', 'Stand on the floor with legs open. Your arms should be bent upward halfway to the rib cage. Make punches of hands. Start to punch to the head height in a cross way like raise punch to the left-hand side up and bring it down to right-hand side rib cage. Similarly, repeat the same movement with the left hand the same way. Your speed of punching should be a little bit fast.', 30, '1680521655_Head Punches.jpg', '1680521655_Head Punches.mp4', 1, '2023-04-03 22:34:15', '2023-04-03 22:34:15', NULL),
(350, 'Lift Arm & Clap', 'Stand on the floor with legs open. Raise both arms straight above the head and clap. Take arms down at the back and clap. Again lift arms and above head clap with hands. Continue to perform this clapping movement of hands a few times. Perform this movement with full consistency.', 30, '1680521698_Lift Arm & Clap.jpg', '1680521698_Lift Arm & Clap.mp4', 1, '2023-04-03 22:34:58', '2023-04-03 22:34:58', NULL),
(351, 'Palm Side Press (Left)', 'Stand on the floor at ease. Bend both hands to the front of the chest and under the chin, while hands joined. Take hands to the left-hand side in the same pose and press the left hand with the right hand as much as possible.', 30, '1680521762_Palm Side Press (Left).jpg', '1680521762_Palm Side Press (Left).mp4', 1, '2023-04-03 22:36:02', '2023-04-03 22:36:02', NULL),
(352, 'Palm Side Press (Right)', 'Stand on the floor at ease. Bend both hands to the front of the chest and under the chin, while hands joined. Take hands to the right-hand side in the same pose and press the right hand with the left hand as much as possible.', 30, '1680521803_Palm Side Press (Right).jpg', '1680521803_Palm Side Press (Right).mp4', 1, '2023-04-03 22:36:43', '2023-04-03 22:36:43', NULL),
(353, 'Prayer Pose Stretch Arms', 'By standing on the floor, raise arms halfway to the chest straight. Your hand palms should be facing upward and from hands till elbows, arms should be joined. Now lift arms to the face-up and take them down to the way of the chest again. Perform this motion a few times.', 30, '1680592297_Prayer Pose Stretch Arms.jpg', '1680592297_Prayer Pose Stretch Arms.mp4', 1, '2023-04-04 18:11:37', '2023-04-04 18:11:37', NULL),
(354, 'Pull The Chain In Three Steps', 'Stand on the floor. There should be shoulder-width space between feet. Raise your arms straight to the way of your chest. Make punches of hands. Arms should be parallel to each other. Straighten up your neck and lift the chin a bit. Now start to move arms in an up-down motion and along with that do halfway sit-stand also. Repeat this movement a few times and take a rest.', 30, '1680592356_Pull The Chain In Three Steps.jpg', '1680592356_Pull The Chain In Three Steps.mp4', 1, '2023-04-04 18:12:36', '2023-04-04 18:12:36', NULL),
(355, 'Side To Side Cross Lunges (Left)', 'Stand on the floor at ease. Place your left leg back on the floor on your toe. Lift both arms straight up in a cross-section to the way and till the height of the nose. Now pull the arms back down in a bending pose and bend both legs halfway. Perform this action in the same pose for a few breaths.', 30, '1680592488_Side to Side Cross Lunges (Left).jpg', '1680592488_Side To Side Cross Lunges (Left).mp4', 1, '2023-04-04 18:14:48', '2023-04-04 18:14:48', NULL),
(356, 'Side To Side Cross Lunges (Right)', 'Stand on the floor at ease. Place your right leg back on the floor on your toe. Lift both arms straight up in a cross-section to the way and till the height of the nose. Now pull the arms back down in a bending pose and bend both legs halfway. Perform this action in the same pose for a few breaths.', 30, '1680592538_Side to Side Cross Lunges (Right).jpg', '1680592538_Side To Side Cross Lunges (Right).mp4', 1, '2023-04-04 18:15:38', '2023-04-04 18:15:38', NULL),
(357, 'Side To Side Hand Stretch', 'Stand on the floor. Open your legs widely apart. Spread arms aside like an airplane and bend right leg backward. Step down, bring arms in towards the chest, and step to the outer side of the left-hand side. Open arms like an airplane again and at the same time bend right leg back. Move to the right-hand side, spread arms aside, and bend the left leg back. Keep on performing these moves to steps accordingly.', 30, '1680592590_Side to Side Hand Stretch.jpg', '1680592590_Side To Side Hand Stretch.mp4', 1, '2023-04-04 18:16:30', '2023-04-04 18:16:30', NULL),
(358, 'Swimming In The Air', 'Stand on the floor at ease. Lift up arms straight to the way of the chest. Move hands from in to out in a cross-section by moving right hand over the left and left hand over the right. Your speed during the movement of hands should be normal and breathing normally helps to increase stamina. Keep on moving your hands like this for a few seconds and take a rest.', 30, '1680592652_Swimming In The Air.jpg', '1680592652_Swimming In The Air.mp4', 1, '2023-04-04 18:17:32', '2023-04-04 18:17:32', NULL),
(359, 'Three Step Cross Press', 'Stand straight on the floor with legs opened. Bend your arms and cross them to the way of the chest. Bend arms backward, bring them to the front, and take them to the neck height in cross-section bending pose this time. Bend arms backward and again in bending state move them to forehead height and make a cross thereof arms. Repeat this movement again few times.', 30, '1680592701_Three Step Cross Press.jpg', '1680592701_Three Step Cross Press.mp4', 1, '2023-04-04 18:18:21', '2023-04-04 18:18:21', NULL),
(360, 'Two Step Ball Catch', 'Stand on the floor with legs widely opened. Move both arms in the air to the way of chest straight. Bend right leg backward and then rest the leg down. Open both arms like an airplane now and bend your left leg this time. Rest down your leg and repeat the action the same way as performed initially.', 30, '1680592743_Two Step Ball Catch.jpg', '1680592743_Two Step Ball Catch.mp4', 1, '2023-04-04 18:19:03', '2023-04-04 18:19:03', NULL),
(361, 'Two Step Leg Lift (Left)', 'Stand on the floor. Open your legs to shoulders width space in between. Spread arms like an airplane. Now lift the left leg straight up to the right side and the right arm cross over the left leg. Twist your body slightly to the right-hand side for ease.', 30, '1680592791_Two Step Leg Lift (Left).jpg', '1680592791_Two Step Leg Lift (Left).mp4', 1, '2023-04-04 18:19:51', '2023-04-04 18:19:51', NULL),
(362, 'Two Step Leg Lift (Right)', 'Stand on the floor. Open your legs to shoulders width space in between. Spread arms like an airplane. Now lift the right leg straight up to the left side and the left arm cross over the right leg. Twist your body slightly to the left-hand side for ease.', 30, '1680592836_Two Step Leg Lift (Right).jpg', '1680592836_Two Step Leg Lift (Right).mp4', 1, '2023-04-04 18:20:36', '2023-04-04 18:20:36', NULL),
(363, 'Two Step Prayer Pose', 'Stand on the floor with legs open widely. Now bend your body waist slightly and legs by knees. As you bend your body, bring both the arms in towards the chest from below the belly and take hands above the head and join them. Bend the body again the same as before, bring the hands down, and by making outer half-circles of arms take hands up above the head and join them. Repeat this movement a few times.', 30, '1680592915_Two Step Prayer Pose.jpg', '1680592915_Two Step Prayer Pose.mp4', 1, '2023-04-04 18:21:55', '2023-04-04 18:21:55', NULL),
(364, 'Arm Back Squeeze', 'Stand at ease on the floor. Place hands at your lower back, while arms bent backwards. Now squeeze both elbows inward to the back tightly and loosen them up. Repeat the same action again and continue to do it for few seconds. Take rest in between. Breathe normally to increase stamina.', 30, '1680593529_Arm Back Squeeze.jpg', '1680593529_Arm Back Squeeze.mp4', 1, '2023-04-04 18:32:09', '2023-04-04 18:32:09', NULL),
(365, 'Arm Circles', 'Stand straight on the floor with your legs open. Lift up arms on either side like an airplane and hands pointing to the outer side. Now start to rotate arms in a clock wise motion. After few rotations, continue to rotate arms anti clock wise. After couple of movements take rest, and then carry on with the exercise.', 30, '1680593692_Arm Circles.jpg', '1680593692_Arm Circles.mp4', 1, '2023-04-04 18:34:52', '2023-04-04 18:34:52', NULL),
(366, 'Chest Press', 'Lay down on the floor with your legs bent by knees halfway. Open your feet to the shoulders width. Spread arms aside on the floor like an airplane. Make punches of hands. Raise your hands straight up to the way of your chest. Now bend down arms by the elbows and place elbows on the floor. Raise arms straight and bend them again the same way. Repeat the movement.', 30, '1680594210_Chest Press.jpg', '1680594210_Chest Press.mp4', 1, '2023-04-04 18:43:30', '2023-04-04 18:43:30', NULL),
(367, 'Chest Squeeze', 'Stand at ease on the floor with feet open. Join both hands in front of chest by bending both arms in toward the chest. By creating tension and stress in arm muscles, push hands toward each other with full power. Squeeze hands to the way of chest as hard as possible. Bring body to ease and repeat this act for few times.', 30, '1680594260_Chest Squeeze.jpg', '1680594260_Chest Squeeze.mp4', 1, '2023-04-04 18:44:20', '2023-04-04 18:44:20', NULL),
(368, 'Child Pose Front', 'Place your hands on the floor palm way down a bit ahead from the shoulders with shoulders width space between them. Your knees should be placed in the way of hands and they should be widely opened. While your lower legs rest on the floor by feet joined together. Your body from head to lower back should be straight and hips slightly lifted up.Now pull your body back down to the floor in a way that from hands till hips your body is aligned straight. In the same way bring body forward to its original position. By breathing normally continue to perform this exercise repeatedly.', 30, '1680594421_Child Pose.jpg', '1680594421_Child Pose.mp4', 1, '2023-04-04 18:47:01', '2023-04-04 18:47:01', NULL),
(369, 'Cross & Lift Arms', 'Stand on the floor at ease. Join both hands over the head straight. Bring hands down in the same pose to the way of the chest. Now pass a right hand over the left hand and then the left hand over the right hand. Raise your hands above the head in the same joining pose as before. Repeat the same workout again.', 30, '1680594469_Cross & Lift Arms.jpg', '1680594469_Cross & Lift Arms.mp4', 1, '2023-04-04 18:47:49', '2023-04-04 18:47:49', NULL),
(370, 'Cross Elbow Stretching (Left)', 'Stand on the floor. Bend left arm upward slightly in toward the chest. Your elbow should reach the height of the chest. Rest right arm straight on the left arm. Now lift bent arm upward for a few seconds.', 30, '1680594523_Cross Elbow Stretching (Left).jpg', '1680594523_Cross Elbow Stretching (Left).mp4', 1, '2023-04-04 18:48:43', '2023-04-04 18:48:43', NULL),
(371, 'Cross Elbow Stretching (Right)', 'Stand on the floor. Bend right arm upward slightly in toward the chest. Your elbow should reach the height of the chest. Rest left arm straight on the right arm. Now lift bent arm upward for a few seconds.', 30, '1680594559_Cross Elbow Stretching (Right).jpg', '1680594559_Cross Elbow Stretching (Right).mp4', 1, '2023-04-04 18:49:19', '2023-04-04 18:49:19', NULL),
(372, 'Cross Fingers Arms Lifts', 'Stand at ease on the floor. Raise arms halfway to the way of the chest. Cross fingers of the right hand with the left hand by overlapping the right arm on the left arm and moving both arms in the same position up-down. Similarly, cross fingers of the left hand with the right hand by overlapping the left arm on the right arm and moving arms in an up-down motion. Continue this movement a few times and take a rest in between.', 30, '1680594622_Cross Fingers - Arms Lifts.jpg', '1680594622_Cross Fingers - Arms Lifts.mp4', 1, '2023-04-04 18:50:22', '2023-04-04 18:50:22', NULL),
(373, 'Elbow Clap', 'Stand at easy position on the floor. Join hands in front of the face and a little space between elbows. Now tap the elbows once and take arms up in a bending position till face. Tap elbows again. Keep on tapping the elbows the same way from time to time while taking rest in between.', 30, '1680594675_Elbow Clap.jpg', '1680594675_Elbow Clap.mp4', 1, '2023-04-04 18:51:15', '2023-04-04 18:51:15', NULL),
(374, 'Elbow Crosses', 'Stand straight on the floor. Bend arms in toward the chest. Now at the same time, take right hand toward left shoulder and left hand toward the right shoulder. Keep these movements going on by under and over the passing of hands.', 30, '1680594718_Elbow Crosses.jpg', '1680594718_Elbow Crosses.mp4', 1, '2023-04-04 18:51:58', '2023-04-04 18:51:58', NULL),
(375, 'Elbow Squeeze Press', 'Stand on the floor with feet shoulder width open. Lift arms up above the head straight and make punch of hands. In the same pose bend arms half way by elbows. Bring elbows in towards the chest and take arms back on both side and then straight up. Repeat the movement again by taking rest in between.', 30, '1680594800_Elbow Squeeze Press.jpg', '1680594800_Elbow Squeeze Press.mp4', 1, '2023-04-04 18:53:20', '2023-04-04 18:53:20', NULL),
(376, 'Elbow Stretch', 'Take both hands at the back of your head and hold both hands at the back. Bend the head slightly down to the front. Now start to squeeze elbows in toward the chest as much as possible. Take arms back and repeat the movement as described.', 30, '1680594855_Elbow Stretch.jpg', '1680594855_Elbow Stretch.mp4', 1, '2023-04-04 18:54:15', '2023-04-04 18:54:15', NULL),
(377, 'Elbow Tap With Butterfly', 'Stand on the floor with normal space between the feet. Raise both arms halfway to chest height. Bend the arms backward. Tap both elbows with each other. Now take elbows to the shoulders side and bring hands open to their fingertips and lift arms up from elbows. Again bring the elbows closer and tap. Repeat the movement again and again.', 30, '1680599339_Elbow Tap With Butterfly.jpg', '1680599339_Elbow Tap With Butterfly.mp4', 1, '2023-04-04 20:08:59', '2023-04-04 20:08:59', NULL),
(378, 'Elbow Tap', 'Stand at ease position on the floor. Bend both arms toward the shoulders. Your elbows should be facing toward front of the chest and hands should reach shoulders. Now start to tap right elbow with the left and left elbow with the right. Keep on tapping elbows with full concentration; this will help to increase the speed of tapping. Take rest in between.', 30, '1680599440_Elbow Tap.jpg', '1680599440_Elbow Tap.mp4', 1, '2023-04-04 20:10:40', '2023-04-04 20:10:40', NULL),
(379, 'Jump & Spread Hands', 'Stand on the floor. There should be shoulder-width space between feet. Join both hands above the head straight. Now take a high jump and by landing on the floor, open arms aside like an aero-plane. Jump again and join hands. Bring the body to ease. Take a rest and repeat the movement again.', 30, '1680599529_Jump & Spread Hands.jpg', '1680599529_Jump & Spread Hands.mp4', 1, '2023-04-04 20:12:09', '2023-04-04 20:12:09', NULL),
(380, 'Jumping Jacks', 'Stand on the floor. Raise your arms straight above the head parallel to each other. Take a high jump and as you land on the floor, open your legs and make half-circles to the outer side of either arm. Jump again and by making outer half circles of arms join hands at a jump, while feet joined too. Repeat this motion a few times.', 30, '1680599567_Jumping Jacks.jpg', '1680599567_Jumping Jacks.mp4', 1, '2023-04-04 20:12:47', '2023-04-04 20:12:47', NULL),
(381, 'Lift The Hammer', 'Stand on the floor with legs open and arms joined down in front between the legs. The upper body should be slightly bent by the waist. By holding one hand with the other, move arms to the up-right side of the body and bring down arms in the same position from where you’ve started. Lift arms to the up-left side of the body straight up. And rest it down then. Continue to move for a couple of breaths.', 30, '1680599625_Lift The Hammer.jpg', '1680599625_Lift The Hammer.mp4', 1, '2023-04-04 20:13:45', '2023-04-04 20:13:45', NULL),
(382, 'Lifts Arm (Left)', 'Stand on the floor. Slightly bend forward your upper body by the waist. Place hands in front of your waistline. Place left hand over the right hand and palm way down. Now bend left arm by the elbow back upward to left shoulder side. Bring the hand down and repeat the movement.', 30, '1680599711_Lifts Arm (Left).jpg', '1680599711_Lifts Arm (Left).mp4', 1, '2023-04-04 20:15:11', '2023-04-04 20:15:11', NULL),
(383, 'Lifts Arm (Right)', 'Stand on the floor. Slightly bend forward your upper body by the waist. Place hands in front of your waistline. Place right hand over the left hand and palm way down. Now bend right arm by the elbow back upward to right shoulder side. Bring the hand down and repeat the movement.', 30, '1680599757_Lifts Arm (Right).jpg', '1680599757_Lifts Arm (Right).mp4', 1, '2023-04-04 20:15:57', '2023-04-04 20:15:57', NULL),
(384, 'Middle Punches With Start Jump', 'Stand on the floor with legs opened wide and arms bend halfway up to the chest and make punches out of hands. Draw the right hand toward the front in the air and kick with the right leg to the outer side. Similarly, drag back the right hand and draw the left hand to the front the same way, while kicking with right leg out to its side. Repeat this movement a few times.', 30, '1680599815_Middle Punches with Start Jump.jpg', '1680599815_Middle Punches With Start Jump.mp4', 1, '2023-04-04 20:16:55', '2023-04-04 20:16:55', NULL),
(385, 'Pull The Chain', 'Stand at ease position on the floor. Take arms up above the head slightly to the front. As you reach the top of the head make punches of your hands, the right hand should be over the left hand at this point. With full power drag arms back in a bending pose. Take arms up back again but this time right hand should be under the left hand. Repeat the movement, again and again, the same way as described.', 30, '1680599865_Pull The Chain.jpg', '1680599865_Pull The Chain.mp4', 1, '2023-04-04 20:17:45', '2023-04-04 20:17:45', NULL),
(386, 'Puppy Pose', 'Start by placing hands on the floor palm way down, arms straight and shoulders width space between them. Stand lower body straight on knees, while resting lower legs on the upper side of toes. From head to hip the body should be straight. Slightly move backward and slide hands forward straight, while bend body till chest completely. Stretch as much as possible. Bring body at ease.', 30, '1680599899_Puppy Pose.jpg', '1680599899_Puppy Pose.mp4', 1, '2023-04-04 20:18:19', '2023-04-04 20:18:19', NULL),
(387, 'Running Boxing', 'Stand on the floor straight with the legs widely open and arms bend inward to the way of chest and hands folded into the palms. Now punch by your hands to the front way of the body by running on the place where you are standing. Continue to punch while running.', 30, '1680599959_Running Boxing.jpg', '1680599959_Running Boxing.mp4', 1, '2023-04-04 20:19:19', '2023-04-04 20:19:19', NULL),
(388, 'Side Jump With Fly Hands', 'Stand on the floor straight with legs opened and arms bend inwards to the way of the chest. Now jump towards the right-hand side while opening the arms like an airplane. Similarly, jump into the starting position and bend arms inward again. Carry on with this movement a few times then take a rest in between.', 30, '1680600004_Side Jump With Fly Hands.jpg', '1680600004_Side Jump With Fly Hands.mp4', 1, '2023-04-04 20:20:04', '2023-04-04 20:20:04', NULL),
(389, 'Side Walk Upper Punches', 'Stand on the floor with legs open and bend arms up halfway, while making punches of hands. Now punch in the air straight under the chin and walk to the outer right side. Similarly, punch and move to the left-hand side. Continue to punch in and out in the air while walking to the outer side of the body.', 30, '1680600047_Side Walk Upper Punches.jpg', '1680600047_Side Walk Upper Punches.mp4', 1, '2023-04-04 20:20:47', '2023-04-04 20:20:47', NULL),
(390, 'Two Step Elbow Lift', 'Stand on the floor with legs opened and bend up backward. Your hands should be touching your shoulders and elbows facing to the front. Now lift elbows up to two-three times and then taps left elbow with the right and right elbow with the left. Repeat this movement and take a rest in between.', 30, '1680600085_Two Step Elbow Lift.jpg', '1680600085_Two Step Elbow Lift.mp4', 1, '2023-04-04 20:21:25', '2023-04-04 20:21:25', NULL),
(391, 'Two Step Side Butt Kickers', 'Stand on the floor with legs opened wide. Lift right arm straight up and move it to the left-hand side over the head, while bending right leg halfway by the knee. Similarly, bring the right arm down back with the leg and raise the left arm over the head as the right arm. Bend the left leg backward halfway. Make speed-up the motion of both hand sides and continue to perform this action as much as possible. Breathe normally to increase stamina.', 30, '1680600130_Two Step Side Butt Kickers.jpg', '1680600130_Two Step Side Butt Kickers.mp4', 1, '2023-04-04 20:22:10', '2023-04-04 20:22:10', NULL),
(392, 'Air Swipe Arms Lift', 'Lay down on the floor on your belly straight with arms up above the head on the floor and legs open to a shoulders width space between them. Lift your arms above the floor to shoulder height. Lift your head and chest too. Creating a good balance in this pose; bend arms halfway backward and move them ahead straight above the head. Repeat this movement.', 30, '1680603120_Air Swipe Arms Lift.jpg', '1680603120_Air Swipe Arms Lift.mp4', 1, '2023-04-04 21:12:00', '2023-04-04 21:12:00', NULL),
(393, 'Arm Lift', 'Stand straight on the floor. Lift both arms above the head parallel to each other. Bring the arms down and by bending the upper body slightly from the waist, take the hands back up halfway. Raise arms again and continue with this movement a few times. Take normal breaths in between the exercise.', 30, '1680603182_Arm Lifts.jpg', '1680603182_Arm Lifts.mp4', 1, '2023-04-04 21:13:02', '2023-04-04 21:13:02', NULL),
(394, 'Arm Scirrors', 'Stand straight on the floor. Raise arms to parallel to each other to the way of the chest. Your hands should be opened and palms facing the floor. Lift right arm shortly and the left arm down the same way. Similarly, lift the left arm and the right arm down. Speed up the movement of arms a little bit. Continue the action by breathing normally.', 30, '1680603235_Arm Scirrors.jpg', '1680603235_Arm Scirrors.mp4', 1, '2023-04-04 21:13:55', '2023-04-04 21:13:55', NULL),
(395, 'Arm Stretch Over Head', 'Sit on the floor with legs folded inwards to each other. Raise your arms and hold your hands over the head. Pull left arm toward the right-hand side and stretch; similarly, pull right hand toward left-hand side and stretch. Continue this movement for a few breaths and relax afterward.', 30, '1680603295_Arm Stretch Over Head.jpg', '1680603295_Arm Stretch Over Head.mp4', 1, '2023-04-04 21:14:55', '2023-04-04 21:14:55', NULL),
(396, 'Back Widdow', 'Lay down on the floor with your legs bent and closer to each other. From head to hip your body should be straight. Bend arms halfway up and rest elbows on the floor on either side of the body. Lift your head, neck, and shoulder blades above the ground without lifting elbows. Rest the body down and continue to perform the motion.', 30, '1680603487_Back Widdow.jpg', '1680603487_Back Widdow.mp4', 1, '2023-04-04 21:18:07', '2023-04-04 21:18:07', NULL),
(397, 'Back Side Stretch (Left)', 'Stand on the floor with legs open to normal space in between them. Hold a scarf or piece of cloth in your hands. Raise your arms and hold scarf/cloth from back of the head. Pull the scarf/cloth towards the left-hand side straight, while looking toward the left-hand side too. Ease your arms at the back of your head where you have started pulling.', 30, '1680603519_Back Side Stretch (Left).jpg', '1680603519_Back Side Stretch (Left).mp4', 1, '2023-04-04 21:18:39', '2023-04-04 21:18:39', NULL),
(398, 'Back Side Stretch (Right)', 'Stand on the floor with legs open to normal space in between them. Hold a scarf or piece of cloth in your hands. Raise your arms and hold scarf/cloth from back of the head. Pull the scarf/cloth towards the right-hand side straight, while looking toward the right-hand side too. Ease your arms at the back of your head where you have started pulling.', 30, '1680603562_Back Side Stretch (Right).jpg', '1680603562_Back Side Stretch (Right).mp4', 1, '2023-04-04 21:19:22', '2023-04-04 21:19:22', NULL),
(399, 'Double Knee To Chest', 'Lay down on the floor. Bend your legs to the chest completely together. Hug the legs by knees tightly and hold in this posture for some breaths. After some time rest the legs and arms down. Repeat the action again while breathing normally.', 30, '1680603609_Double Knee To Chest.jpg', '1680603609_Double Knee To Chest.mp4', 1, '2023-04-04 21:20:09', '2023-04-04 21:20:09', NULL),
(400, 'Bring Down The Chain', 'Stand on the floor at ease. Bend arms upwards. Your elbows should be at the height of your chest and your hands facing the forehead. Lift right arm straight up and make punch of hand while bringing it down. As you bring your right arm down lift your left arm and repeat the same process as done on the right arm. Carry on with the movement of arms a few times, and then take a rest.', 30, '1680603641_Bring Down The Chain.jpg', '1680603641_Bring Down The Chain.mp4', 1, '2023-04-04 21:20:41', '2023-04-04 21:20:41', NULL),
(401, 'Chest Back Hold', 'Stand straight on the floor with legs open to normal space in between them. Hold a piece of cloth/scarf from the back of your head, while your arms bent halfway. Pull the scarf from both ends of it and stretch the chest outward. Hold this pose for a few seconds.', 30, '1680603684_Chest Back Hold.jpg', '1680603684_Chest Back Hold.mp4', 1, '2023-04-04 21:21:24', '2023-04-04 21:21:24', NULL),
(402, 'Extension Stretch', 'Stand on the floor straight with your legs open to suitable space in between and arms bend back, while head resting on hand palms. Now tilt the head in a backward direction creating pressure on hands and stretching the body as much as possible', 30, '1680603709_Extension Stretch.jpg', '1680603709_Extension Stretch.mp4', 1, '2023-04-04 21:21:49', '2023-04-04 21:21:49', NULL),
(403, 'Chest Front Hold', 'Stand straight on the floor with legs open to normal space in between them. Hold a piece of cloth/scarf in your hands from both ends. Pull the cloth/scarf in opposite direction from both ends. Raise your arms now till chest height. Stretch your neck up and chest outward. Hold this pose. Breathe normally during the workout.', 30, '1680603737_Chest Front Hold.jpg', '1680603737_Chest Front Hold.mp4', 1, '2023-04-04 21:22:17', '2023-04-04 21:22:17', NULL),
(404, 'Chest Vertical Stretch (Left)', 'Stand in an easy position on the floor. Hold one end of cloth/scarf in the left hand. Raise your left arm and bend it halfway to forehead height. Your elbow should be facing out toward the left-hand side. Now hold the other end of the cloth/scarf with the right hand that is down. Bend right arm halfway also from down to up. Pull both ends of a cloth/scarf. Hold this position. ', 30, '1680603784_Chest Verticle Stratch (Left).jpg', '1680603784_Chest Verticle Stratch (Left).mp4', 1, '2023-04-04 21:23:04', '2023-04-04 21:23:04', NULL),
(405, 'Chest Vertical Stretch (Right)', 'Stand in an easy position on the floor. Hold one end of cloth/scarf in the right hand. Raise your right arm and bend it halfway to forehead height. Your elbow should be facing out toward the right-hand side. Now hold the other end of the cloth/scarf with a left hand that is down. Bend left arm halfway also from down to up. Pull both ends of a cloth/scarf. Hold this position.', 30, '1680603829_Chest Verticle Stratch (Right).jpg', '1680603829_Chest Verticle Stratch (Right).mp4', 1, '2023-04-04 21:23:49', '2023-04-04 21:23:49', NULL),
(406, 'Cross Arm Lifts', 'Sit on the floor on your lower legs. Your back should be straight. Hold weights in your hands. Raise your right arm and straight away take it toward your left shoulder. Take the arm down on its initial position. Similarly, raise your left arm and take it toward your right shoulder and then down to its original position. Repeat the action.', 30, '1680603871_Cross Arm Lifts.jpg', '1680603871_Cross Arm Lifts.mp4', 1, '2023-04-04 21:24:31', '2023-04-04 21:24:31', NULL),
(407, 'Fish Pose', 'Lay down straight on the floor. Place arms by your sides palm way down. From head to toe, the body should be straight. By breathing in lift the chest up from the floor and hold for a few moments. Rest the chest down and breathe out. Continue the movement the same way again.', 30, '1680603880_Fish Pose.jpg', '1680603880_Fish Pose.mp4', 1, '2023-04-04 21:24:40', '2023-04-04 21:24:40', NULL),
(408, 'Cross Hand Squeeze', 'Sit on the floor. Fold your legs lower legs in. Raise your arms and bend them inward to the mid of your chest. Place right lower arm over the left lower arm. In this pose stretch arms to either side and on bringing them in rest left lower arm over the other. Continue this in and out motion of hands by changing positions. ', 30, '1680603914_Cross hand Squeeze.jpg', '1680603914_Cross Hand Squeeze.mp4', 1, '2023-04-04 21:25:14', '2023-04-04 21:25:14', NULL),
(409, 'Diagonal Chest Stretch Pulse (Left)', 'Stand on the floor. Hold either end of a scarf with hands. In this pose take the left hand under the chin, while the right arm down on the right side. Now pull one end of a scarf with a left hand to the up left side above the shoulder. Similarly, pull the scarf’s other end that is down with the right hand toward the right side down. Continue to pull in this diagonal position.', 30, '1680603952_Diagonal Chest Stretch Pulse (Left).jpg', '1680603952_Diagonal Chest Stretch Pulse (Left).mp4', 1, '2023-04-04 21:25:52', '2023-04-04 21:25:52', NULL),
(410, 'Diagonal Chest Stretch Pulse (Right)', 'Stand on the floor. Hold either end of a scarf with hands. In this pose take the right hand under the chin, while the left-arm down on the left side. Now pull one end of a scarf with the right hand to the up right side above the shoulder. Similarly, pull the scarf’s other end that is down with the left hand toward the left side down. Continue to pull in this diagonal position.', 30, '1680603986_Diagonal Chest Stretch Pulse (Right).jpg', '1680603986_Diagonal Chest Stretch Pulse (Right).mp4', 1, '2023-04-04 21:26:26', '2023-04-04 21:26:26', NULL),
(411, 'Rolling Situp', 'Lay down on the floor. Lift arms straight up to the way of chest parallel to each other. Legs should be opened to a suitable space in between. Now lift your upper body above the floor and bend it towards the knees completely. Tap feet with your hands when you sit and rest down back on the floor at the initial position. Repeat the motion again.', 30, '1680604014_Rolling Situp.jpg', '1680604014_Rolling Situp.mp4', 1, '2023-04-04 21:26:54', '2023-04-04 21:26:54', NULL),
(412, 'Diamond Plank', 'Stand your body on the floor in a way that under your chin you hold your hands and elbows open to a shoulder-width space. Your lower body should be standing and balanced on toes that should be opened to normal space. Hold this pose for a few seconds and take a rest afterward.', 30, '1680604023_Diamond Plank.jpg', '1680604023_Diamond Plank.mp4', 1, '2023-04-04 21:27:03', '2023-04-04 21:27:03', NULL),
(413, 'Elbow Tap & Stretch', 'Stand straight on the floor. Spread your arms like an airplane. Now in the same place bend lower arms inward till shoulder joint. As your arms are bent, join the elbows in the middle of your chest and spread your arms again while your lower arms are bent the same way. Continue this motion.', 30, '1680604079_Elbow Tap & Stretch.jpg', '1680604079_Elbow Tap & Stretch.mp4', 1, '2023-04-04 21:27:59', '2023-04-04 21:27:59', NULL),
(414, 'Shoulder Bllade Fly', 'Lay down on the floor by your belly side down. Legs should be opened to a normal space in between them and arms placed upward in a half bending pose while hands palm way down. Breathe in and out and lift arms above the floor in the backward direction. Stretch as much as possible.', 30, '1680604104_Shoulder Bllade Fly.jpg', '1680604104_Shoulder Bllade Fly.mp4', 1, '2023-04-04 21:28:24', '2023-04-04 21:28:24', NULL),
(415, 'Full Chest Circles', 'Lay down on the floor on your back with legs open and hold weights in your hands. Starting from above the head, bring the hands down in outer circular motion and join hands under the belly button. As you reach the belly button and join your hands, raise your head and shoulder blades too at that point.', 30, '1680604127_Full Chest Circles.jpg', '1680604127_Full Chest Circles.mp4', 1, '2023-04-04 21:28:47', '2023-04-04 21:28:47', NULL),
(416, 'Grab The Snow', 'Stand on the floor with legs widely opened. Lift both arms from waist till over the head top in an outward curve motion on either side. Bring hands down in the same motion. During the movement of hands, bend the legs at the back of the thighs one by one. Continue to perform the steps as described.', 30, '1680604178_Grab the Snow.jpg', '1680604178_Grab The Snow.mp4', 1, '2023-04-04 21:29:38', '2023-04-04 21:29:38', NULL),
(417, 'Arms Alternate Movement', 'Stand on the floor. Bend up your lower arms halfway to the rib cage. Now on the spot start to walk in slow motion. Continue to move the body for a couple of breaths and breathe normally while the movement goes on.', 30, '1680604235_Hands Alternate Movement.jpg', '1680604235_Hands Alternate Movement.mp4', 1, '2023-04-04 21:30:35', '2023-04-04 21:30:35', NULL),
(418, 'Side Bend Left', 'Stand on the floor. Lift your arms straight up and parallel to each other pointing fingers upward. Feet should be joined together. Stand still in this pose and bend to the left-hand side. Now bring the body to the starting position and repeat the action.', 30, '1680604315_Side Bend (Left).jpg', '1680604315_Side Bend (Left).mp4', 1, '2023-04-04 21:31:55', '2023-04-04 21:31:55', NULL),
(419, 'Side Bend Right', 'Stand on the floor. Lift your arms straight up and parallel to each other pointing fingers upward. Feet should be joined together. Stand still in this pose and bend to the right-hand side. Now bring the body to the starting position and repeat the action.', 30, '1680604521_Side Bend (Right).jpg', '1680604521_Side Bend (Right).mp4', 1, '2023-04-04 21:35:21', '2023-04-04 21:35:21', NULL),
(420, 'T Spine Rotation Head Follows', 'Lay on the floor. Raise your arms straight up and hold both hands above the face. Bend legs by knees halfway with normal space between feet. Now bend right arm and take both arms to the right-hand side down keeping left arm straight. Bring the arm back up and bend your left arm down to the left-hand side taking both arms down and keeping your right arm straight.', 30, '1680604714_T Spine Rotation Head Follows.jpg', '1680604714_T Spine Rotation Head Follows.mp4', 1, '2023-04-04 21:38:34', '2023-04-04 21:38:34', NULL),
(421, 'Horizontal & Diagonal Stretch', 'Stand straight on the floor and bend your lower arms up to chest height. Place your right lower arm over the left lower arm. Stretch your arms backward and as you bring your arms back into the mid of the chest, rest your left lower arm over the right lower arm. Now slightly bend upper body toward right-hand side. Repeat the movement of arms the same way as done before. Bend body towards left-hand side slightly and repeat the hand movements the same way as described.', 30, '1680604746_Horizental & Diagonal Stretch.jpg', '1680604746_Horizental & Diagonal Stretc.mp4', 1, '2023-04-04 21:39:06', '2023-04-04 21:39:06', NULL),
(422, 'Horizontal Pull Circles', 'Stand straight on the floor. Hold a scarf from either end of it. Pull the scarf from both ends. Raise both arms till chest height straight. Now bend arms back toward chest and in halfway make a rotation toward the front. Complete the rotation and again repeat the movement as described.', 30, '1680604860_Horizental Pull Circles.jpg', '1680604860_Horizental Pull Circles.mp4', 1, '2023-04-04 21:41:00', '2023-04-04 21:41:00', NULL),
(423, 'Incline Pushups', 'Take a chair and place your hands on seat sides. Drag your legs backward and open to shoulder width space between them. Keep your back straight at this pose. Now by bending both arms move the body down and then straighten up arms. Repeat the movement the same way as described.', 30, '1680604906_Incline Pushups.jpg', '1680604906_Incline Pushups.mp4', 1, '2023-04-04 21:41:46', '2023-04-04 21:41:46', NULL),
(424, 'Back Extension', 'Lay down on the floor on your belly straight. Place your hands at the back of your head and arms in a bending pose. Creating a balance on the belly lift arms, head, chest, knees, and lower legs above the floor. Hold in this position. Rest down the body and lift up the body again as done before.', 30, '1680604906_Back Extention.jpg', '1680604906_Back Extention.mp4', 1, '2023-04-04 21:41:46', '2023-04-04 21:41:46', NULL),
(425, 'Cobra Wings', 'Lay down on the floor straight on your belly. Place arms by your sides and legs joined together. Now lift legs above the floor and take arms up in a circular motion above the head and lift chest and head up also. Bring the arms down in a circular motion and rest legs and upper body down on the floor. Repeat the movement again.', 30, '1680605112_Cobra Wings.jpg', '1680605112_Cobra Wings.mp4', 1, '2023-04-04 21:45:12', '2023-04-04 21:45:12', NULL),
(426, 'Half Spinal Twist (Left)', 'Sit on the floor. Place arms by your sides and drag legs straight and joined together. Bend left leg by passing it over the right leg. Rest left foot by the right knee. Now twist the body toward the left-hand side and place the right arm at the outer side of the left knee to make a lock. Stretch the body and repeat the movement.', 30, '1680605407_Half Spinal Twist (Left).jpg', '1680605407_Half Spinal Twist (Left).mp4', 1, '2023-04-04 21:50:07', '2023-04-04 21:50:07', NULL),
(427, 'Half Spinal Twist (Right)', 'Sit on the floor. Place arms by your sides and drag legs straight and joined together. Bend right leg by passing it over the left leg. Rest right foot by the left knee. Now twist the body toward the right-hand side and place the left arm at the outer side of the right knee to make a lock. Stretch the body and repeat the movement.', 30, '1680605541_Half Spinal Twist (Right).jpg', '1680605541_Half Spinal Twist (Right).mp4', 1, '2023-04-04 21:52:21', '2023-04-04 21:52:21', NULL),
(428, 'Reverse Snow Angle', 'Lay down on the floor on your belly. Lift your legs above the floor and at the same time lift your arms too. Rotate down arms into the hips. Take the arms up above the head and rest down both arms and legs. Repeat the movement again.', 30, '1680605689_Reverse Snwo Angle.jpg', '1680605689_Reverse Snwo Angle.mp4', 1, '2023-04-04 21:54:49', '2023-04-04 21:54:49', NULL),
(429, 'Knee Archer Position ', 'Stand on the floor by placing hands palm way down and widely opened, thighs rest on knees with normal space between them and lower legs crossed and lifted above the floor. Now by bending arms, move toward the left-hand side and at the same moment move toward the right-hand side. Continue to move like this for a couple of breaths and then bring the body to ease. Take a rest and start the workout again.', 30, '1680605694_Knee Archer Possition.jpg', '1680605694_Knee Archer Possition 2.mp4', 1, '2023-04-04 21:54:54', '2023-04-04 21:54:54', NULL),
(430, 'Roll Back 2', 'Sit on the floor. Bend your legs. The feet should be open apart. Place hands at the back of your head. Creating a good balance bend body backward slightly. Now with the help of hands and waist, move the head toward knees first and then take the head up. Bend backward again. Repeat the movement again.', 30, '1680605827_Roll Back 2.jpg', '1680605827_Roll Back 2.mp4', 1, '2023-04-04 21:57:07', '2023-04-04 21:57:07', NULL),
(431, 'Knee Arm Pushups', 'Place your hands and knees on the floor. Hands should be placed slightly ahead of the shoulders and there should be a shoulders width space between them. Your knees should be joined together and your lower legs crossed over each other. By bending arms down to the floor, move body backward, and then move to start position. Continue to move forward and backward for a few seconds continuously.', 30, '1680605840_Knee Arm pushups.jpg', '1680605840_Knee Arm Pushups(1).mp4', 1, '2023-04-04 21:57:20', '2023-04-04 21:57:20', NULL),
(432, 'Lower Chest Press', 'Lay down on the floor on your back and legs bent my knees halfway. Hold weights in your hands and raise your hand straight up to the height of your chest. Face palms towards each other and close. Now bend arms down and touch elbows to the floor. Take arms back up straight and repeat this up-down movement.', 30, '1680605922_Lower Chest Press.jpg', '1680605922_Lower Chest Press.mp4', 1, '2023-04-04 21:58:42', '2023-04-04 21:58:42', NULL),
(433, 'Roll Back (Left)', 'Sit on the floor. Bend your legs. Your feet should be opened. Raise your arms straight to the way of chest and parallel to each other. Bend the body backward slightly and bend the left arm halfway towards back. Straightened up the arm and sit straight. Repeat the movement again.', 30, '1680605959_Roll Back (Left).jpg', '1680605959_Roll Back (Left).mp4', 1, '2023-04-04 21:59:19', '2023-04-04 21:59:19', NULL),
(434, 'Two Step Full Pushups', 'Place your arms on the floor to a shoulders width space between them. Straighten up your legs and open to a shoulder-width space too. Now with help of hands move toward the right side and without moving the lower body, bend arms and move down the body. Push body back up. Move toward the left side and repeat the same movement.', 30, '1680605979_Two Step Full Pushups.jpg', '1680605979_Two Step Full Pushups.mp4', 1, '2023-04-04 21:59:39', '2023-04-04 21:59:39', NULL),
(435, 'Pike Pushups', 'Place your hands on the floor to a shoulder-width space between them. To a slight distance from hands place feet on the floor and open them as wide as you can and raise your hips as much high as possible. This will create an inverted “v, ^” of body. Bend your arms and move toward the floor a bit ahead. Do not touch the head with the floor. Now move back up and straighten up arms. Continue this up-down movement of the body at normal speed. ', 30, '1680606040_Pike Pushups.jpg', '1680606040_Pike Pushups.mp4', 1, '2023-04-04 22:00:40', '2023-04-04 22:00:40', NULL),
(436, 'Roll Back (Right)', 'Sit on the floor. Bend your legs. Your feet should be opened. Raise your arms straight to the way of chest and parallel to each other. Bend the body backward slightly and bend the right arm halfway towards back. Straightened up the arm and sit straight. Repeat the movement again.', 30, '1680606056_Roll Back (Right).jpg', '1680606056_Roll Back (Right).mp4', 1, '2023-04-04 22:00:56', '2023-04-04 22:00:56', NULL),
(437, 'Two Step Side Pushups  On Knees', 'Place your arms on the floor to a shoulders width space between them. Bend up your legs and rest right lower leg over the left lower leg. Straighten up your back. Now with help of hands move toward the right side and without moving the lower body, bend arms and move down the body. Push body back up. Move toward the left side and repeat the same movement.', 30, '1680606122_Two Step Side Pushups  On knees.jpg', '1680606122_Two Step Side Pushups On Knees.mp4', 1, '2023-04-04 22:02:02', '2023-04-04 22:02:02', NULL),
(438, 'Rolls', 'Sit on the floor on your lower legs. Bend forward to the floor completely and rest arms down. Now by putting pressure on the arms. Move body forward and align it straight from head to heel. Stretch the head in a backward direction and push lower back toward the floor. Bring the body to starting position and take a rest.', 30, '1680606160_Rolls.jpg', '1680606160_Rolls.mp4', 1, '2023-04-04 22:02:40', '2023-04-04 22:02:40', NULL),
(439, 'Two Way Chest Pull Ups', 'Stand straight on the floor. Hold scarf from either end of it. Raise your arms and bend halfway. While scarf should be held at the back of the head. Now bring the arms to the front and straight to the way of the chest. Take the scarf to the back of your head. Repeat the same movement.', 30, '1680606184_Two Way Chest Pull Ups.jpg', '1680606184_Two Step Full Pushups.mp4', 1, '2023-04-04 22:03:04', '2023-04-04 22:03:04', NULL),
(440, 'Scorpion (Right)', 'Lay down on the floor on your belly side down. Straighten up your legs and join them together. Spread arms like an airplane. Now pass down the right leg over the left leg in an upward bending pose. Bring the leg back to its original place and repeat the same process.', 30, '1680606283_Scorpion (Right).jpg', '1680606283_Scorpion (Right).mp4', 1, '2023-04-04 22:04:43', '2023-04-04 22:04:43', NULL),
(441, 'Verticle Bend Chest Press', 'Sit on the floor with legs fold in pose and back straight. Raise arms straight up. Now bend arms by the elbows, while the elbows reach the height of shoulders. Bring the arms inward and join lower arms and elbows. Open them up again and repeat the open-close movement.', 30, '1680606313_Verticle Bend Chest Press.jpg', '1680606313_Verticle Bend Chest Press.mp4', 1, '2023-04-04 22:05:13', '2023-04-04 22:05:13', NULL),
(442, 'Wide Side Chest Press', 'Lay down on the floor straight with legs open to a normal space in between. Hold weights in your hands and raise them straight up to the way of your chest. Join hands at this point. Now bend down arms by elbows. Touch elbows with the ground and raise arms again. Continue to perform this act the same way as performed before.', 30, '1680606389_Wide Side Chest Press.jpg', '1680606389_Wide Side Chest Press.mp4', 1, '2023-04-04 22:06:29', '2023-04-04 22:06:29', NULL),
(443, 'Scorpion (Left)', 'Lay down on the floor on your belly side down. Straighten up your legs and join them together. Spread arms like an airplane. Now pass down the left leg over the right leg in an upward bending pose. Bring the leg back to its original place and repeat the same process.\n\n', 30, '1680606423_Scorpion (Left).jpg', '1680606423_Scorpion (Left).mp4', 1, '2023-04-04 22:07:03', '2023-04-04 22:07:03', NULL),
(444, 'Seated Hamstring Stretch', 'Sit on the floor at ease by dragging your legs straight and joined together. Place hands on your thighs. Now bend forward to the way of legs and hold both feet. Stay in this pose for a few breaths and then be seated in your initial position.', 30, '1680606532_Seate Hamstring Stretch.jpg', '1680606532_Seate Hamstring Stretch.mp4', 1, '2023-04-04 22:08:52', '2023-04-04 22:08:52', NULL);
INSERT INTO `exercises` (`id`, `ex_name`, `ex_description`, `ex_duration`, `ex_thumbnail_url`, `ex_video_url`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(445, 'Swan Dive', 'Stand straight on the floor. Rest arms by your hips. Raise arms above your head and join them. Slightly bend back. Stand straight again and open arms like an airplane. Bend body by the waist completely and by the hands touch the floor. Stand at the initial position and repeat the movement again.', 30, '1680606604_Swan - Dive.jpg', '1680606604_Swan - Dive.mp4', 1, '2023-04-04 22:10:04', '2023-04-04 22:10:04', NULL),
(446, 'Tails', 'Stand on the floor in a dog pose. Lift your lower legs above the floor. Hold for some time and start to move lower legs from right to left and left to right. With the movement of legs slightly moves upper body too. Continue to do this movement for a few seconds.', 30, '1680606689_Tails.jpg', '1680606689_Tails.mp4', 1, '2023-04-04 22:11:29', '2023-04-04 22:11:29', NULL),
(447, 'Windshield Wipers', 'Lay down on the floor. Place arms down to the shoulders height. Bend legs by the knees upward and space there should be normal space between feet. Start to move bent legs from right to left and left to right. Continue this movement for a couple of seconds.', 30, '1680606860_Windshiled Wipers.jpg', '1680606860_Windshiled Wipers.mp4', 1, '2023-04-04 22:14:20', '2023-04-04 22:14:20', NULL),
(448, 'W-Superman', 'Lay down on the floor straight. Bend arms up halfway and rest the chin on the floor. Now lift arms and legs above the floor at the same time. Rest the body down and repeat the movement.', 30, '1680606974_W Superman.jpg', '1680606974_W Superman.mp4', 1, '2023-04-04 22:16:14', '2023-04-04 22:16:14', NULL),
(449, 'Bending Windmill Stretch (Left)', 'Stand on the floor with legs opened to shoulders width space between them. Spread your arms side to side like an airplane. Takedown your right arm to the left foot and tap it.  Stand back up and take a rest. Repeat the movement again.', 30, '1680607258_Bending - Windmill Stretch (Left).jpg', '1680607258_Bending - Windmill Stretch (Left).mp4', 1, '2023-04-04 22:20:58', '2023-04-04 22:20:58', NULL),
(450, 'Bending Windmill Stretch (Right)', 'Stand on the floor with legs opened to shoulders width space between them. Spread your arms side to side like an airplane. Takedown your left arm to the right foot and tap it.  Stand back up and take a rest. Repeat the movement again.', 30, '1680607396_Bending - Windmill Stretch (Right).jpg', '1680607396_Bending - Windmill Stretch (Right).mp4', 1, '2023-04-04 22:23:16', '2023-04-04 22:23:16', NULL),
(451, 'Double Leg Stretch', 'Lay on the floor straight. Rest arms above the head on the floor. Now lift both arms and legs above the floor while balancing the body on the back. Bend both legs to the belly and at the same moment take arms in an outer circular motion toward legs and hold thighs from beneath. Stay still in this position. Straightened up the body and repeat the movement again.', 30, '1680607508_Double Leg Stretch.jpg', '1680607508_Double Leg Stretch.mp4', 1, '2023-04-04 22:25:08', '2023-04-04 22:25:08', NULL),
(452, 'Fan Movement (Right)', 'Lay down on the floor at ease. Spread aside arms like an airplane. Breathe out. By twisting the body, take the right arm to the left-hand side and without moving the left arm, place the right hand on the left hand and then take the right hand back to its initial place. Repeat the movement again.', 30, '1680607637_Fan Movemnet (Right).jpg', '1680607637_Fan Movemnet (Right).mp4', 1, '2023-04-04 22:27:17', '2023-04-04 22:27:17', NULL),
(453, 'Fan Movement (Left)', 'Lay down on the floor at ease. Spread aside arms like an airplane. Breathe out. By twisting the body, take the left arm to the right-hand side and without moving the right arm, place the left hand on the right hand and then take the left hand back to its initial place. Repeat the movement again.', 30, '1680607821_Fan Movemnet (Left).jpg', '1680607821_Fan Movemnet (Left).mp4', 1, '2023-04-04 22:30:21', '2023-04-04 22:30:21', NULL),
(454, 'Good Morning', 'Stand on the floor straight. Join both feet together. Bend arms to the chest and palm way join the hands. Lift the chin up slightly and straighten up the neck. Bend the body halfway by the waist in the same position and look straight-forward. Hold in this posture for a few breaths and stand straight.', 30, '1680608030_Good Morning.jpg', '1680608030_Good Morning.mp4', 1, '2023-04-04 22:33:50', '2023-04-04 22:33:50', NULL),
(455, 'Head to Knee (Left)', 'Sit on the floor. Straighten up your whole back and rest your left leg down on the floor. Bend right leg in towards left leg thigh. Hold the right foot with both hands. Now bend upper body forward completely and hold the left foot with both hands. Hold this posture for a few seconds and then bring the body to ease.', 30, '1680608285_Head To Knee (Left).jpg', '1680608285_Head To Knee (Left).mp4', 1, '2023-04-04 22:38:05', '2023-04-04 22:38:05', NULL),
(456, 'Head to Knee (Right)', 'Sit on the floor. Straighten up your whole back and rest your right leg down on the floor. Bend left leg in towards right leg thigh. Hold left foot with both hands. Now bend upper body forward completely and hold the right foot with both hands. Hold this posture for a few seconds and then bring the body to ease.', 30, '1680608518_Head To Knee (Right).jpg', '1680608518_Head To Knee (Right).mp4', 1, '2023-04-04 22:41:58', '2023-04-04 22:41:58', NULL),
(457, 'Lower Back Stretch (Right)', 'Sit on the floor. Drag your legs straight. Place both arms at the back. Pass right leg over the left leg in a bending pose and place it by the left knee. Rest left arm on the right knee and twist the body towards the right. Hold in this pose for a few moments and repeat the same movement again.', 30, '1680608708_Lower Back Stretch (Right).jpg', '1680608708_Lower Back Stretch (Right).mp4', 1, '2023-04-04 22:45:08', '2023-04-04 22:45:08', NULL),
(458, 'Lower Back Stretch (Left)', 'Sit on the floor. Drag your legs straight. Place both arms at the back. Pass left leg over the right leg in a bending pose and place it by the right knee. Rest right arm on the left knee and twist the body towards the left. Hold in this pose for a few moments and repeat the same movement again.', 30, '1680608927_Lower Back Stretch (Left).jpg', '1680608927_Lower Back Stretch (Left).mp4', 1, '2023-04-04 22:48:47', '2023-04-04 22:48:47', NULL),
(459, 'Reverse Bridge', 'Sit on the floor. Bend legs, there should be a normal space between legs. Rest hands at the back palm way down and fingers facing towards hips side. Lift your hips up and from the head to knees, the body should be aligned straight. Rest the body down and repeat the movement again.', 30, '1680609060_Reverse Bridge.jpg', '1680609060_Reverse Bridge.mp4', 1, '2023-04-04 22:51:00', '2023-04-04 22:51:00', NULL),
(460, 'Reverse Bridge Hold', 'Sit on the floor. Bend legs, there should be a normal space between legs. Rest hands at the back palm way down and fingers facing towards hips side. Lift your hips up and from the head to knees, the body should be aligned straight. Hold in this pose for a few breaths. Rest the body down and repeat the movement again.', 30, '1680609164_Reverse Bridge Hold.jpg', '1680609164_Reverse Bridge Hold.mp4', 1, '2023-04-04 22:52:44', '2023-04-04 22:52:44', NULL),
(461, 'Rhomboid Stretch', 'Stand straight on the floor. Place arms on sides. Bend upper body slightly by the waist. At the same moment take arms to the way of the chest. Twist hands in a way that palms face the outer side and hands joined by crossing both hands finger. Now stretch the body and hold. Afterward, stand straight and relax.', 30, '1680609270_Rhomboid Stretch.jpg', '1680609270_Rhomboid Stretch.mp4', 1, '2023-04-04 22:54:30', '2023-04-04 22:54:30', NULL),
(462, 'Sawing Wood', 'Stand on the floor. Bend upper body slightly by the waist. Place left leg at the back of the right leg. Bend both arms up at the side of the rib cage. Make punch of hands. Now start to move the lower arm forward and backward. Continue this movement a few times.', 30, '1680609362_Sawing Wood.jpg', '1680609362_Sawing Wood.mp4', 1, '2023-04-04 22:56:02', '2023-04-04 22:56:02', NULL),
(463, 'Thoracolumbar Side Bend Stretch (Left)', 'Stand straight on the floor. Take the left arm at the back of the head in a bending position and hold the left elbow with the right hand. Now bend body toward left-hand side and stretch. Stand straight and repeat the action again.', 30, '1680609503_Thoracolumbar - Sidebend Stretch (Left).jpg', '1680609503_Thoracolumbar - Sidebend Stretch (Left).mp4', 1, '2023-04-04 22:58:23', '2023-04-04 22:58:23', NULL),
(464, 'Thoracolumbar Side Bend Stretch (Right)', 'Stand straight on the floor. Take the right arm at the back of the head in a bending position and hold the right elbow with the left hand. Now bend body toward right-hand side and stretch. Stand straight and repeat the action again.', 30, '1680609610_Thoracolumbar - Sidebend Stretch (Right).jpg', '1680609610_Thoracolumbar - Sidebend Stretch (Right).mp4', 1, '2023-04-04 23:00:10', '2023-04-04 23:00:10', NULL),
(465, 'Triangle Forward Bend Left', 'Stand on the floor by facing toward the left-hand side. Rest hands by your sides. Place left leg ahead of the right leg. Bend down by the waist and rest both hands palm way down on the floor. Hold in this state for a few seconds and stand straight.', 30, '1680609705_Triangle - Forward Bend (Left).jpg', '1680609705_Triangle - Forward Bend (Left).mp4', 1, '2023-04-04 23:01:45', '2023-04-04 23:01:45', NULL),
(466, 'Triangle Forward Bend Right', 'Stand on the floor by facing toward the right-hand side. Rest hands by your sides. Place right leg ahead of the left leg. Bend down by the waist and rest both hands palm way down on the floor. Hold in this state for a few seconds and stand straight.', 30, '1680609805_Triangle - Forward Bend (Right).jpg', '1680609805_Triangle - Forward Bend (Right).mp4', 1, '2023-04-04 23:03:25', '2023-04-04 23:03:25', NULL),
(467, 'Triangle Left', 'Stand on the floor with legs widely open and hands on the sides. Bend to the left-hand side and tap the left foot while raising the right arm straight up above the head. Hold in this pose for a few breaths and then stand straight.', 30, '1680609897_Triangle (Left).jpg', '1680609897_Triangle (Left).mp4', 1, '2023-04-04 23:04:57', '2023-04-04 23:04:57', NULL),
(468, 'Triangle Right', 'Stand on the floor with legs widely open and hands on the sides. Bend to the right-hand side and tap the right foot while raising the left arm straight up above the head. Hold in this pose for a few breaths and then stand straight.', 30, '1680609987_Triangle (Right).jpg', '1680609987_Triangle (Right).mp4', 1, '2023-04-04 23:06:27', '2023-04-04 23:06:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercise_relations`
--

CREATE TABLE `exercise_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ex_id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `sub_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_day` tinyint(4) DEFAULT NULL,
  `till_day` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise_relations`
--

INSERT INTO `exercise_relations` (`id`, `ex_id`, `cat_id`, `sub_cat_id`, `level_id`, `program_id`, `from_day`, `till_day`, `created_at`, `updated_at`) VALUES
(23, 15, 10, NULL, NULL, 3, NULL, NULL, '2023-03-13 21:42:42', '2023-03-13 21:42:42'),
(25, 17, 11, NULL, NULL, 7, NULL, NULL, '2023-03-13 21:47:11', '2023-03-13 21:47:11'),
(27, 19, 12, NULL, NULL, 1, NULL, NULL, '2023-03-14 20:45:31', '2023-03-14 20:45:31'),
(32, 24, 13, NULL, 1, NULL, 1, 24, '2023-03-15 21:31:13', '2023-03-15 21:31:13'),
(33, 25, 13, NULL, 1, NULL, 1, 24, '2023-03-15 21:34:17', '2023-03-15 21:34:17'),
(34, 26, 13, NULL, 1, NULL, 1, 24, '2023-03-15 21:52:57', '2023-03-15 21:52:57'),
(35, 27, 13, NULL, 1, NULL, 2, 24, '2023-03-15 21:55:32', '2023-03-15 21:55:32'),
(36, 28, 13, NULL, 1, NULL, 3, 24, '2023-03-15 21:58:14', '2023-03-15 22:39:51'),
(37, 29, 13, NULL, 1, NULL, 4, 24, '2023-03-15 21:59:56', '2023-03-15 22:40:07'),
(38, 30, 13, NULL, 1, NULL, 5, 24, '2023-03-15 22:04:43', '2023-03-15 22:41:10'),
(39, 31, 13, NULL, 1, NULL, 6, 24, '2023-03-15 22:07:51', '2023-03-15 22:41:41'),
(40, 32, 13, NULL, 1, NULL, 7, 24, '2023-03-15 22:09:32', '2023-03-15 22:42:43'),
(41, 33, 13, NULL, 1, NULL, 8, 24, '2023-03-15 22:11:36', '2023-03-15 22:42:54'),
(42, 34, 13, NULL, 1, NULL, 9, 24, '2023-03-15 22:15:20', '2023-03-15 22:43:22'),
(43, 35, 13, NULL, 1, NULL, 10, 24, '2023-03-15 22:16:47', '2023-03-15 22:43:57'),
(44, 36, 13, NULL, 1, NULL, 11, 24, '2023-03-15 22:22:20', '2023-03-15 22:44:26'),
(45, 37, 13, NULL, 1, NULL, 12, 24, '2023-03-15 22:25:17', '2023-03-15 22:45:25'),
(46, 38, 13, NULL, 1, NULL, 13, 24, '2023-03-15 22:26:37', '2023-03-15 22:45:44'),
(47, 39, 13, NULL, 1, NULL, 14, 24, '2023-03-15 22:28:09', '2023-03-20 17:03:32'),
(48, 40, 13, NULL, 1, NULL, 15, 24, '2023-03-15 22:49:09', '2023-03-15 22:49:09'),
(49, 41, 13, NULL, 1, NULL, 16, 24, '2023-03-15 22:50:35', '2023-03-15 22:50:35'),
(50, 42, 13, NULL, 1, NULL, 17, 24, '2023-03-15 22:51:42', '2023-03-15 22:51:42'),
(51, 43, 13, NULL, 1, NULL, 18, 24, '2023-03-15 22:53:40', '2023-03-15 22:53:40'),
(52, 44, 13, NULL, 1, NULL, 19, 24, '2023-03-15 22:57:12', '2023-03-15 22:57:12'),
(53, 45, 13, NULL, 1, NULL, 20, 24, '2023-03-15 23:01:06', '2023-03-15 23:01:06'),
(54, 46, 13, NULL, NULL, NULL, 21, 24, '2023-03-15 23:03:36', '2023-03-15 23:03:36'),
(55, 47, 13, NULL, 1, NULL, 22, 24, '2023-03-15 23:08:48', '2023-03-15 23:08:48'),
(56, 48, 13, NULL, 1, NULL, 23, 24, '2023-03-15 23:10:35', '2023-03-15 23:10:35'),
(57, 49, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:11:41', '2023-03-15 23:11:41'),
(58, 50, 13, NULL, 1, NULL, 1, 24, '2023-03-15 23:37:46', '2023-03-15 23:37:46'),
(59, 51, 13, NULL, 1, NULL, 1, 24, '2023-03-15 23:39:01', '2023-03-15 23:39:01'),
(60, 52, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:42:24', '2023-03-15 23:42:24'),
(61, 53, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:43:46', '2023-03-15 23:43:46'),
(62, 54, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:45:29', '2023-03-15 23:45:29'),
(63, 55, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:46:47', '2023-03-15 23:46:47'),
(64, 56, 13, NULL, 1, NULL, 24, 24, '2023-03-15 23:49:24', '2023-03-15 23:49:24'),
(65, 57, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:37:46', '2023-03-16 18:37:46'),
(66, 58, 10, NULL, NULL, 3, NULL, NULL, '2023-03-16 18:43:12', '2023-03-17 17:07:23'),
(67, 59, 10, NULL, NULL, 3, NULL, NULL, '2023-03-16 18:44:44', '2023-03-17 17:07:51'),
(68, 60, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:47:52', '2023-03-16 18:47:52'),
(69, 61, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:49:32', '2023-03-16 18:49:32'),
(70, 62, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:54:14', '2023-03-16 18:54:14'),
(71, 63, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:56:01', '2023-03-16 18:56:01'),
(72, 64, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:57:23', '2023-03-16 18:57:23'),
(73, 65, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 18:59:38', '2023-03-16 18:59:38'),
(74, 66, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:03:42', '2023-03-16 19:03:42'),
(75, 67, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 19:04:49', '2023-03-16 23:11:23'),
(76, 68, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:05:47', '2023-03-16 19:05:47'),
(77, 69, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:07:15', '2023-03-16 19:07:15'),
(78, 70, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:08:56', '2023-03-16 19:08:56'),
(79, 71, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:11:27', '2023-03-16 19:11:27'),
(80, 72, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:12:28', '2023-03-16 19:12:28'),
(81, 73, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 19:13:33', '2023-03-16 23:13:59'),
(82, 74, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:15:03', '2023-03-16 19:15:03'),
(83, 75, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:16:15', '2023-03-16 19:16:15'),
(84, 76, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 19:18:12', '2023-03-16 19:18:12'),
(85, 77, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:22:23', '2023-03-16 20:22:23'),
(86, 78, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:23:23', '2023-03-16 20:23:23'),
(87, 79, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:24:57', '2023-03-16 20:24:57'),
(88, 80, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:25:52', '2023-03-16 20:25:52'),
(89, 81, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:26:52', '2023-03-16 20:26:52'),
(90, 82, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:27:37', '2023-03-16 20:27:37'),
(91, 83, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:28:24', '2023-03-16 20:28:24'),
(92, 84, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:29:21', '2023-03-16 20:29:21'),
(93, 85, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:30:25', '2023-03-16 20:30:25'),
(94, 86, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:31:22', '2023-03-16 20:31:22'),
(95, 87, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:32:22', '2023-03-16 20:32:22'),
(96, 88, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:33:10', '2023-03-16 20:33:10'),
(97, 89, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:34:05', '2023-03-16 20:34:05'),
(98, 90, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:35:01', '2023-03-16 20:35:01'),
(99, 91, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:36:07', '2023-03-16 20:36:07'),
(100, 92, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:37:00', '2023-03-16 20:37:00'),
(101, 93, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:38:00', '2023-03-16 20:38:00'),
(102, 94, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:38:52', '2023-03-16 20:38:52'),
(103, 95, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:40:12', '2023-03-16 20:40:12'),
(104, 96, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:41:25', '2023-03-16 20:41:25'),
(105, 97, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 20:42:39', '2023-03-16 20:42:39'),
(106, 98, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 20:48:19', '2023-03-16 20:55:24'),
(107, 99, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 20:49:55', '2023-03-16 20:55:08'),
(108, 100, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 20:52:18', '2023-03-16 20:54:57'),
(109, 101, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 20:54:46', '2023-03-16 20:54:46'),
(110, 62, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:03:26', '2023-03-16 21:03:26'),
(111, 102, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:06:02', '2023-03-16 21:06:02'),
(112, 103, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:07:17', '2023-03-16 21:07:17'),
(113, 104, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:08:25', '2023-03-16 21:08:25'),
(114, 105, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:10:30', '2023-03-16 21:10:30'),
(115, 106, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:11:34', '2023-03-16 21:11:34'),
(116, 107, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:12:23', '2023-03-16 21:12:23'),
(117, 108, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:14:29', '2023-03-16 21:14:29'),
(118, 109, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:15:28', '2023-03-16 21:15:28'),
(119, 110, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:16:34', '2023-03-16 21:16:34'),
(120, 111, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:20:28', '2023-03-16 21:20:28'),
(121, 112, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:24:40', '2023-03-16 21:24:40'),
(122, 81, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:26:40', '2023-03-16 21:26:40'),
(123, 82, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:27:22', '2023-03-16 21:27:22'),
(124, 83, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:28:56', '2023-03-16 21:28:56'),
(125, 90, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:29:38', '2023-03-16 21:29:38'),
(126, 91, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:30:31', '2023-03-16 21:30:31'),
(127, 95, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:31:03', '2023-03-16 21:31:03'),
(128, 96, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 21:31:27', '2023-03-16 21:31:27'),
(129, 67, 10, NULL, NULL, 5, NULL, NULL, '2023-03-16 22:01:21', '2023-03-16 22:01:21'),
(130, 113, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:24:00', '2023-03-16 22:24:00'),
(131, 114, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:25:17', '2023-03-16 22:25:17'),
(132, 115, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:26:21', '2023-03-16 22:26:21'),
(133, 116, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:27:53', '2023-03-16 22:27:53'),
(134, 117, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:28:58', '2023-03-16 22:28:58'),
(135, 118, 13, NULL, 2, NULL, 1, 24, '2023-03-16 22:33:42', '2023-03-16 22:33:42'),
(136, 119, 13, NULL, 2, NULL, 2, 24, '2023-03-16 22:39:07', '2023-03-16 22:39:07'),
(137, 120, 13, NULL, 2, NULL, 2, 24, '2023-03-16 22:40:18', '2023-03-16 22:40:18'),
(138, 121, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:47:41', '2023-03-16 22:47:41'),
(139, 122, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:52:14', '2023-03-16 22:52:14'),
(140, 123, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:53:30', '2023-03-16 22:53:30'),
(141, 124, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:54:52', '2023-03-16 22:54:52'),
(142, 125, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:56:06', '2023-03-16 22:56:06'),
(143, 126, 10, NULL, NULL, 6, NULL, NULL, '2023-03-16 22:57:19', '2023-03-16 22:57:19'),
(144, 123, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:07:43', '2023-03-16 23:07:43'),
(145, 62, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:08:52', '2023-03-16 23:08:52'),
(146, 60, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:09:25', '2023-03-16 23:09:25'),
(147, 61, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:09:45', '2023-03-16 23:09:45'),
(148, 63, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:10:15', '2023-03-16 23:10:15'),
(149, 65, 12, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:10:39', '2023-03-16 23:10:39'),
(150, 66, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:11:01', '2023-03-16 23:11:01'),
(151, 68, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:11:45', '2023-03-16 23:11:45'),
(152, 69, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:12:14', '2023-03-16 23:12:14'),
(153, 70, 12, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:12:33', '2023-03-16 23:12:33'),
(154, 71, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:13:09', '2023-03-16 23:13:09'),
(155, 72, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:13:29', '2023-03-16 23:13:29'),
(156, 73, 12, NULL, NULL, 1, NULL, NULL, '2023-03-16 23:14:13', '2023-03-16 23:14:13'),
(157, 111, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:15:01', '2023-03-16 23:15:01'),
(158, 112, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:15:35', '2023-03-16 23:15:35'),
(159, 76, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:16:00', '2023-03-16 23:16:00'),
(160, 77, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:16:43', '2023-03-16 23:16:43'),
(161, 81, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:17:16', '2023-03-16 23:17:16'),
(162, 82, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:17:40', '2023-03-16 23:17:40'),
(163, 83, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:18:06', '2023-03-16 23:18:06'),
(164, 84, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:18:32', '2023-03-16 23:18:32'),
(165, 85, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:19:12', '2023-03-16 23:19:12'),
(166, 86, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:19:47', '2023-03-16 23:19:47'),
(167, 87, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:20:13', '2023-03-16 23:20:13'),
(168, 88, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:20:34', '2023-03-16 23:20:34'),
(169, 89, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:20:57', '2023-03-16 23:20:57'),
(170, 92, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:21:32', '2023-03-16 23:21:32'),
(171, 126, 12, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:21:52', '2023-03-16 23:21:52'),
(172, 97, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:22:26', '2023-03-16 23:22:26'),
(173, 127, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:24:21', '2023-03-16 23:24:21'),
(174, 128, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:26:51', '2023-03-16 23:26:51'),
(175, 129, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:29:19', '2023-03-16 23:29:19'),
(176, 130, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:40:38', '2023-03-16 23:40:38'),
(177, 131, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:49:14', '2023-03-16 23:49:14'),
(178, 132, 10, NULL, NULL, 4, NULL, NULL, '2023-03-16 23:55:34', '2023-03-16 23:55:34'),
(179, 133, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:00:25', '2023-03-17 00:00:25'),
(180, 134, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:01:49', '2023-03-17 00:01:49'),
(181, 135, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:02:45', '2023-03-17 00:02:45'),
(182, 136, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:03:52', '2023-03-17 00:03:52'),
(183, 137, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:06:29', '2023-03-17 00:06:29'),
(184, 138, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:07:26', '2023-03-17 00:07:26'),
(185, 139, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:08:29', '2023-03-17 00:08:29'),
(186, 140, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:09:29', '2023-03-17 00:09:29'),
(187, 141, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:10:29', '2023-03-17 00:10:29'),
(188, 142, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:11:28', '2023-03-17 00:11:28'),
(189, 143, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:12:37', '2023-03-17 00:12:37'),
(190, 144, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:13:32', '2023-03-17 00:13:32'),
(191, 145, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:14:22', '2023-03-17 00:14:22'),
(192, 146, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:15:07', '2023-03-17 00:15:07'),
(193, 147, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:16:14', '2023-03-17 00:16:14'),
(194, 148, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:17:03', '2023-03-17 00:17:03'),
(195, 149, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:17:49', '2023-03-17 00:17:49'),
(196, 150, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:18:34', '2023-03-17 00:18:34'),
(197, 151, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:19:19', '2023-03-17 00:19:19'),
(198, 152, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:20:07', '2023-03-17 00:20:07'),
(199, 153, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:21:59', '2023-03-17 00:21:59'),
(200, 154, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:23:07', '2023-03-17 00:23:07'),
(201, 155, 12, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:24:01', '2023-03-17 00:24:01'),
(202, 156, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:24:51', '2023-03-17 00:24:51'),
(203, 157, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:25:35', '2023-03-17 00:25:35'),
(204, 158, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:26:27', '2023-03-17 00:26:27'),
(205, 159, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:27:20', '2023-03-17 00:27:20'),
(206, 160, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:29:15', '2023-03-17 00:29:15'),
(207, 161, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:30:16', '2023-03-17 00:30:16'),
(208, 162, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:32:04', '2023-03-17 00:32:04'),
(209, 163, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:33:36', '2023-03-17 00:33:36'),
(210, 164, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:34:46', '2023-03-17 00:34:46'),
(211, 165, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:35:58', '2023-03-17 00:35:58'),
(212, 166, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:37:14', '2023-03-17 00:37:14'),
(213, 167, 11, NULL, NULL, 2, NULL, NULL, '2023-03-17 00:38:18', '2023-03-17 00:38:18'),
(214, 57, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:03:41', '2023-03-17 17:03:41'),
(215, 168, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:10:21', '2023-03-17 17:10:21'),
(216, 169, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:35:42', '2023-03-17 17:35:42'),
(217, 170, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:43:05', '2023-03-17 17:43:05'),
(218, 171, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:44:08', '2023-03-17 17:44:08'),
(219, 62, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:45:55', '2023-03-17 17:45:55'),
(220, 64, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:46:49', '2023-03-17 17:46:49'),
(221, 172, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:47:45', '2023-03-17 17:47:45'),
(222, 173, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:48:34', '2023-03-17 17:48:34'),
(223, 174, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:49:27', '2023-03-17 17:49:27'),
(224, 175, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:51:29', '2023-03-17 17:51:29'),
(225, 176, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:54:43', '2023-03-17 17:54:43'),
(226, 107, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:56:01', '2023-03-17 17:56:01'),
(227, 108, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:56:36', '2023-03-17 17:56:36'),
(228, 109, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:57:07', '2023-03-17 17:57:07'),
(229, 78, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 17:58:37', '2023-03-17 17:58:37'),
(230, 78, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 20:57:58', '2023-03-17 20:57:58'),
(231, 79, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 20:58:38', '2023-03-17 20:58:38'),
(232, 80, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 20:59:04', '2023-03-17 20:59:04'),
(233, 177, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:00:35', '2023-03-17 21:00:35'),
(234, 178, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:01:18', '2023-03-17 21:01:18'),
(235, 179, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:02:09', '2023-03-17 21:02:09'),
(236, 180, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:03:02', '2023-03-17 21:03:02'),
(237, 84, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:03:31', '2023-03-17 21:03:31'),
(238, 129, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:03:53', '2023-03-17 21:03:53'),
(239, 130, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:04:17', '2023-03-17 21:04:17'),
(240, 181, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:05:05', '2023-03-17 21:05:05'),
(241, 182, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:06:02', '2023-03-17 21:06:02'),
(242, 183, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:08:51', '2023-03-17 21:08:51'),
(243, 184, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:09:48', '2023-03-17 21:09:48'),
(244, 185, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:10:29', '2023-03-17 21:10:29'),
(245, 186, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:11:10', '2023-03-17 21:11:10'),
(246, 187, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:12:08', '2023-03-17 21:12:08'),
(247, 91, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:12:30', '2023-03-17 21:12:30'),
(248, 91, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:12:52', '2023-03-17 21:12:52'),
(249, 90, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:13:15', '2023-03-17 21:13:15'),
(250, 132, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:13:59', '2023-03-17 21:13:59'),
(251, 188, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:14:55', '2023-03-17 21:14:55'),
(252, 94, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:15:59', '2023-03-17 21:15:59'),
(253, 95, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:16:22', '2023-03-17 21:16:22'),
(254, 96, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:16:47', '2023-03-17 21:16:47'),
(255, 126, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:17:10', '2023-03-17 21:17:10'),
(256, 189, 10, NULL, NULL, 3, NULL, NULL, '2023-03-17 21:17:51', '2023-03-17 21:17:51'),
(257, 190, 13, NULL, 2, NULL, 3, 24, '2023-03-17 22:12:00', '2023-03-17 22:12:00'),
(258, 191, 13, NULL, 2, NULL, 3, 24, '2023-03-17 22:13:17', '2023-03-17 22:13:17'),
(259, 192, 13, NULL, 2, NULL, 4, 24, '2023-03-17 22:18:08', '2023-03-17 22:18:08'),
(260, 193, 13, NULL, 2, NULL, 4, 24, '2023-03-17 22:19:31', '2023-03-17 22:19:31'),
(261, 194, 13, NULL, 2, NULL, 5, 24, '2023-03-17 22:21:03', '2023-03-17 22:21:03'),
(262, 195, 13, NULL, 2, NULL, 5, 24, '2023-03-17 22:22:03', '2023-03-17 22:22:03'),
(263, 196, 13, NULL, 2, NULL, 6, 24, '2023-03-17 22:23:03', '2023-03-17 22:23:03'),
(264, 197, 13, NULL, 2, NULL, 6, 24, '2023-03-17 22:24:14', '2023-03-17 22:24:14'),
(265, 198, 13, NULL, 2, NULL, 7, 24, '2023-03-17 22:27:50', '2023-03-17 22:27:50'),
(266, 199, 13, NULL, 2, NULL, 7, 24, '2023-03-17 22:29:14', '2023-03-17 22:29:14'),
(267, 34, 13, NULL, 2, NULL, 8, 24, '2023-03-17 22:30:10', '2023-03-17 22:30:10'),
(268, 35, 13, NULL, 2, NULL, 8, 24, '2023-03-17 22:30:41', '2023-03-17 22:30:41'),
(269, 36, 13, NULL, 2, NULL, 10, 24, '2023-03-17 22:31:21', '2023-03-17 22:31:21'),
(270, 200, 13, NULL, 2, NULL, 11, 24, '2023-03-17 22:32:18', '2023-03-17 22:32:18'),
(271, 201, 13, NULL, 2, NULL, 12, 24, '2023-03-17 22:33:02', '2023-03-17 22:33:02'),
(272, 202, 13, NULL, 2, NULL, 13, 24, '2023-03-17 22:34:45', '2023-03-17 22:34:45'),
(273, 203, 13, NULL, 2, NULL, 13, 24, '2023-03-17 22:37:21', '2023-03-17 22:37:21'),
(274, 45, 13, NULL, 2, NULL, 14, 24, '2023-03-17 22:38:00', '2023-03-17 22:38:00'),
(275, 46, 13, NULL, 2, NULL, 14, 24, '2023-03-17 22:38:26', '2023-03-17 22:38:26'),
(276, 47, 13, NULL, 2, NULL, 15, 24, '2023-03-17 23:11:41', '2023-03-17 23:11:41'),
(277, 204, 13, NULL, 2, NULL, 16, 24, '2023-03-17 23:12:49', '2023-03-17 23:12:49'),
(278, 205, 13, NULL, 2, NULL, 17, 24, '2023-03-17 23:14:50', '2023-03-17 23:14:50'),
(279, 206, 13, NULL, 2, NULL, 17, 24, '2023-03-17 23:16:35', '2023-03-17 23:16:35'),
(280, 54, 13, NULL, 2, NULL, 18, 24, '2023-03-17 23:17:27', '2023-03-17 23:17:27'),
(281, 55, 13, NULL, 2, NULL, 18, 24, '2023-03-17 23:18:09', '2023-03-17 23:18:09'),
(282, 56, 13, NULL, 2, NULL, 19, 24, '2023-03-17 23:18:33', '2023-03-17 23:18:33'),
(283, 207, 13, NULL, 3, NULL, 1, 24, '2023-03-17 23:32:50', '2023-03-17 23:32:50'),
(284, 24, 13, NULL, 3, NULL, 2, 24, '2023-03-17 23:33:24', '2023-03-17 23:33:24'),
(285, 25, 13, NULL, 3, NULL, 2, 24, '2023-03-17 23:33:52', '2023-03-17 23:33:52'),
(286, 208, 13, NULL, 3, NULL, 3, 24, '2023-03-17 23:36:55', '2023-03-17 23:36:55'),
(287, 209, 13, NULL, 3, NULL, 3, 24, '2023-03-17 23:38:14', '2023-03-17 23:38:14'),
(288, 210, 13, NULL, 3, NULL, 4, 24, '2023-03-17 23:40:38', '2023-03-17 23:40:38'),
(289, 211, 13, NULL, 3, NULL, 4, 24, '2023-03-17 23:41:33', '2023-03-17 23:41:33'),
(290, 212, 13, NULL, 3, NULL, 5, 24, '2023-03-17 23:43:03', '2023-03-17 23:43:03'),
(291, 213, 13, NULL, 3, NULL, 5, 24, '2023-03-17 23:44:13', '2023-03-17 23:44:13'),
(292, 214, 13, NULL, 3, NULL, 6, 24, '2023-03-17 23:45:34', '2023-03-17 23:45:34'),
(293, 215, 13, NULL, 3, NULL, 6, 24, '2023-03-17 23:46:17', '2023-03-17 23:46:17'),
(294, 26, 13, NULL, 3, NULL, 7, 24, '2023-03-17 23:46:47', '2023-03-17 23:46:47'),
(295, 196, 13, NULL, 3, NULL, 8, 24, '2023-03-17 23:47:33', '2023-03-17 23:47:33'),
(296, 197, 13, NULL, 3, NULL, 8, NULL, '2023-03-18 00:00:39', '2023-03-18 00:00:39'),
(297, 27, 13, NULL, 3, NULL, 9, 24, '2023-03-18 00:01:12', '2023-03-18 00:01:12'),
(298, 216, 13, NULL, 3, NULL, 10, 24, '2023-03-20 16:30:05', '2023-03-20 16:30:05'),
(299, 217, 13, NULL, 3, NULL, 10, 24, '2023-03-20 16:30:50', '2023-03-20 16:30:50'),
(300, 218, 13, NULL, 3, NULL, 12, 24, '2023-03-20 16:59:41', '2023-03-20 16:59:41'),
(301, 39, 13, NULL, 3, NULL, 13, 24, '2023-03-20 17:02:33', '2023-03-20 17:02:33'),
(302, 40, 13, NULL, 3, NULL, 13, 24, '2023-03-20 17:03:13', '2023-03-20 17:03:13'),
(303, 44, 13, NULL, 3, NULL, 14, 24, '2023-03-20 17:04:08', '2023-03-20 17:04:08'),
(304, 219, 13, NULL, 3, NULL, 15, 24, '2023-03-20 17:09:48', '2023-03-20 17:09:48'),
(305, 48, 13, NULL, 3, NULL, 16, 24, '2023-03-20 17:10:23', '2023-03-20 17:10:23'),
(306, 49, 13, NULL, 3, NULL, 16, 24, '2023-03-20 17:10:53', '2023-03-20 17:10:53'),
(307, 50, 13, NULL, 3, NULL, 17, 24, '2023-03-20 17:11:25', '2023-03-20 17:11:25'),
(308, 51, 13, NULL, 3, NULL, 17, 24, '2023-03-20 17:12:00', '2023-03-20 17:12:00'),
(309, 204, 13, NULL, 3, NULL, 18, 24, '2023-03-20 17:12:28', '2023-03-20 17:12:28'),
(310, 220, 13, NULL, 3, NULL, 19, 24, '2023-03-20 17:13:34', '2023-03-20 17:13:34'),
(311, 221, 13, NULL, 3, NULL, 20, 24, '2023-03-20 17:27:01', '2023-03-20 17:27:01'),
(312, 222, 13, NULL, 3, NULL, 11, 24, '2023-03-20 18:02:48', '2023-03-20 18:02:48'),
(313, 223, 13, NULL, 3, NULL, 11, 24, '2023-03-20 18:05:04', '2023-03-20 18:05:04'),
(328, 231, 14, NULL, NULL, NULL, 1, 2, '2023-03-22 18:31:23', '2023-03-25 18:01:55'),
(329, 232, 14, NULL, NULL, NULL, 1, 1, '2023-03-22 18:32:24', '2023-03-25 18:05:50'),
(330, 233, 14, NULL, NULL, NULL, 1, 1, '2023-03-22 18:33:12', '2023-03-25 18:09:47'),
(331, 234, 14, NULL, NULL, NULL, 1, 2, '2023-03-22 18:35:52', '2023-03-25 18:18:44'),
(332, 235, 14, NULL, NULL, NULL, 1, 1, '2023-03-22 18:36:42', '2023-03-25 18:21:18'),
(333, 236, 14, NULL, NULL, NULL, 1, 1, '2023-03-22 18:37:56', '2023-03-25 18:24:48'),
(334, 237, 14, NULL, NULL, NULL, 2, 2, '2023-03-22 18:40:06', '2023-03-25 18:33:36'),
(335, 238, 14, NULL, NULL, NULL, 2, 2, '2023-03-22 18:41:12', '2023-03-25 18:37:16'),
(336, 239, 14, NULL, NULL, NULL, 2, 2, '2023-03-22 18:42:16', '2023-03-25 18:41:07'),
(337, 240, 14, NULL, NULL, NULL, 3, 3, '2023-03-22 18:46:03', '2023-03-25 18:43:48'),
(338, 241, 14, NULL, NULL, NULL, 3, 3, '2023-03-22 18:48:25', '2023-03-25 18:47:59'),
(339, 242, 14, NULL, NULL, NULL, 2, 2, '2023-03-22 18:50:02', '2023-03-25 18:52:03'),
(340, 243, 14, NULL, NULL, NULL, 4, 4, '2023-03-22 18:51:06', '2023-03-25 18:55:19'),
(341, 244, 14, NULL, NULL, NULL, 4, 4, '2023-03-22 18:52:49', '2023-03-25 18:58:47'),
(342, 245, 14, NULL, NULL, NULL, 4, 4, '2023-03-22 18:53:37', '2023-03-25 19:05:08'),
(343, 246, 14, NULL, NULL, NULL, 9, 9, '2023-03-22 18:55:13', '2023-03-25 19:07:48'),
(344, 247, 14, NULL, NULL, NULL, 9, 9, '2023-03-22 18:56:09', '2023-03-25 19:10:06'),
(345, 248, 14, NULL, NULL, NULL, 10, 10, '2023-03-22 18:57:07', '2023-03-25 19:11:57'),
(346, 249, 14, NULL, NULL, NULL, 10, 10, '2023-03-22 18:58:08', '2023-03-25 19:14:35'),
(347, 250, 14, NULL, NULL, NULL, 13, 14, '2023-03-22 18:59:00', '2023-03-25 19:53:30'),
(348, 251, 14, NULL, NULL, NULL, 9, 9, '2023-03-22 18:59:44', '2023-03-25 19:54:09'),
(349, 252, 14, NULL, NULL, NULL, 13, 13, '2023-03-22 19:01:30', '2023-03-25 19:58:10'),
(350, 253, 14, NULL, NULL, NULL, 13, 13, '2023-03-22 19:02:08', '2023-03-25 19:59:30'),
(351, 254, 14, NULL, NULL, NULL, 15, 15, '2023-03-22 19:03:01', '2023-03-25 20:01:02'),
(352, 255, 14, NULL, NULL, NULL, 19, 19, '2023-03-22 19:03:49', '2023-03-25 20:02:16'),
(353, 256, 14, NULL, NULL, NULL, 19, 19, '2023-03-22 19:05:36', '2023-03-25 20:06:46'),
(354, 232, 14, NULL, NULL, NULL, 3, 3, '2023-03-22 19:06:38', '2023-03-25 18:05:54'),
(355, 234, 14, NULL, NULL, NULL, 4, 4, '2023-03-22 19:08:59', '2023-03-25 18:18:47'),
(356, 257, 14, NULL, NULL, NULL, 19, 19, '2023-03-22 19:11:14', '2023-03-25 20:18:07'),
(357, 258, 14, NULL, NULL, NULL, 19, 20, '2023-03-22 19:12:08', '2023-03-25 20:18:58'),
(358, 231, 14, NULL, NULL, NULL, 4, 4, '2023-03-25 18:01:59', '2023-03-25 18:01:59'),
(359, 231, 14, NULL, NULL, NULL, 6, 6, '2023-03-25 18:02:02', '2023-03-25 18:02:02'),
(360, 231, 14, NULL, NULL, NULL, 9, 9, '2023-03-25 18:02:04', '2023-03-25 18:02:04'),
(361, 231, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:02:07', '2023-03-25 18:02:07'),
(362, 231, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:02:09', '2023-03-25 18:02:09'),
(363, 231, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:02:12', '2023-03-25 18:02:12'),
(364, 231, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 18:02:14', '2023-03-25 18:02:14'),
(365, 231, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:02:18', '2023-03-25 18:02:18'),
(366, 232, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:05:56', '2023-03-25 18:05:56'),
(367, 232, 14, NULL, NULL, NULL, 8, 8, '2023-03-25 18:05:58', '2023-03-25 18:05:58'),
(368, 232, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:06:01', '2023-03-25 18:06:01'),
(369, 232, 14, NULL, NULL, NULL, 12, 12, '2023-03-25 18:06:04', '2023-03-25 18:06:04'),
(370, 232, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:06:06', '2023-03-25 18:06:06'),
(371, 232, 14, NULL, NULL, NULL, 19, 20, '2023-03-25 18:06:09', '2023-03-25 20:11:07'),
(372, 232, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:06:11', '2023-03-25 20:11:11'),
(373, 233, 14, NULL, NULL, NULL, 3, 3, '2023-03-25 18:09:51', '2023-03-25 18:09:51'),
(374, 233, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:09:53', '2023-03-25 18:09:53'),
(375, 233, 14, NULL, NULL, NULL, 8, 8, '2023-03-25 18:09:55', '2023-03-25 18:09:55'),
(376, 233, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:09:57', '2023-03-25 18:09:57'),
(377, 233, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 18:10:00', '2023-03-25 18:10:00'),
(378, 233, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 18:10:02', '2023-03-25 18:10:02'),
(379, 234, 14, NULL, NULL, NULL, 6, 6, '2023-03-25 18:18:50', '2023-03-25 18:18:50'),
(380, 234, 14, NULL, NULL, NULL, 8, 8, '2023-03-25 18:18:52', '2023-03-25 18:18:52'),
(381, 234, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:18:55', '2023-03-25 18:18:55'),
(382, 234, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:18:56', '2023-03-25 18:18:56'),
(383, 234, 14, NULL, NULL, NULL, 12, 12, '2023-03-25 18:18:58', '2023-03-25 18:18:58'),
(384, 234, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:19:01', '2023-03-25 18:19:01'),
(385, 234, 14, NULL, NULL, NULL, 18, 19, '2023-03-25 18:19:03', '2023-03-25 18:28:55'),
(386, 235, 14, NULL, NULL, NULL, 3, 3, '2023-03-25 18:21:21', '2023-03-25 18:21:21'),
(387, 235, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:21:23', '2023-03-25 18:21:23'),
(388, 235, 14, NULL, NULL, NULL, 8, 8, '2023-03-25 18:21:26', '2023-03-25 18:21:26'),
(389, 235, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:21:28', '2023-03-25 18:21:28'),
(390, 236, 14, NULL, NULL, NULL, 3, 3, '2023-03-25 18:24:51', '2023-03-25 18:24:51'),
(391, 236, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:24:53', '2023-03-25 18:24:53'),
(392, 236, 14, NULL, NULL, NULL, 7, 7, '2023-03-25 18:24:56', '2023-03-25 18:24:56'),
(393, 236, 14, NULL, NULL, NULL, 9, 9, '2023-03-25 18:24:58', '2023-03-25 18:24:58'),
(394, 236, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:25:00', '2023-03-25 18:25:00'),
(395, 236, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 18:25:02', '2023-03-25 18:25:02'),
(396, 236, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:25:05', '2023-03-25 18:25:05'),
(397, 234, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 18:28:59', '2023-03-25 18:28:59'),
(398, 234, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 18:29:01', '2023-03-25 18:29:01'),
(399, 237, 14, NULL, NULL, NULL, 4, 4, '2023-03-25 18:33:40', '2023-03-25 18:33:40'),
(400, 237, 14, NULL, NULL, NULL, 6, 8, '2023-03-25 18:33:42', '2023-03-25 18:33:42'),
(401, 237, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:33:44', '2023-03-25 18:33:44'),
(402, 237, 14, NULL, NULL, NULL, 12, 12, '2023-03-25 18:33:47', '2023-03-25 18:33:47'),
(403, 237, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 18:33:49', '2023-03-25 18:33:49'),
(404, 237, 14, NULL, NULL, NULL, 20, 20, '2023-03-25 18:33:51', '2023-03-25 18:33:51'),
(405, 237, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 18:33:53', '2023-03-25 18:33:53'),
(406, 238, 14, NULL, NULL, NULL, 7, 7, '2023-03-25 18:37:20', '2023-03-25 18:37:20'),
(407, 238, 14, NULL, NULL, NULL, 9, 9, '2023-03-25 18:37:22', '2023-03-25 18:37:22'),
(408, 238, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:37:24', '2023-03-25 18:37:24'),
(409, 238, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:37:27', '2023-03-25 18:37:27'),
(410, 238, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:37:29', '2023-03-25 18:37:29'),
(411, 238, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 18:37:31', '2023-03-25 18:37:31'),
(412, 238, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 18:37:33', '2023-03-25 18:37:33'),
(413, 239, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:41:11', '2023-03-25 18:41:11'),
(414, 239, 14, NULL, NULL, NULL, 7, 7, '2023-03-25 18:41:13', '2023-03-25 18:41:13'),
(415, 239, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:41:15', '2023-03-25 18:41:15'),
(416, 239, 14, NULL, NULL, NULL, 12, 12, '2023-03-25 18:41:17', '2023-03-25 18:41:17'),
(417, 239, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 18:41:20', '2023-03-25 18:41:20'),
(418, 239, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:41:22', '2023-03-25 18:41:22'),
(419, 239, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 18:41:24', '2023-03-25 18:41:24'),
(420, 240, 14, NULL, NULL, NULL, 5, 5, '2023-03-25 18:43:52', '2023-03-25 18:43:52'),
(421, 240, 14, NULL, NULL, NULL, 7, 7, '2023-03-25 18:43:54', '2023-03-25 18:43:54'),
(422, 240, 14, NULL, NULL, NULL, 9, 9, '2023-03-25 18:43:56', '2023-03-25 18:43:56'),
(423, 240, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:44:03', '2023-03-25 18:44:03'),
(424, 240, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:44:05', '2023-03-25 18:44:05'),
(425, 240, 14, NULL, NULL, NULL, 18, 19, '2023-03-25 18:44:07', '2023-03-25 20:15:35'),
(426, 240, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 18:44:10', '2023-03-25 20:15:32'),
(427, 241, 14, NULL, NULL, NULL, 6, 7, '2023-03-25 18:48:04', '2023-03-25 18:48:04'),
(428, 241, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:48:07', '2023-03-25 18:48:07'),
(429, 241, 14, NULL, NULL, NULL, 12, 12, '2023-03-25 18:48:11', '2023-03-25 18:48:11'),
(430, 241, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 18:48:17', '2023-03-25 18:48:17'),
(431, 241, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:48:23', '2023-03-25 18:48:23'),
(432, 241, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 18:48:26', '2023-03-25 18:48:26'),
(433, 242, 14, NULL, NULL, NULL, 7, 8, '2023-03-25 18:52:06', '2023-03-25 18:52:06'),
(434, 242, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:52:09', '2023-03-25 18:52:09'),
(435, 242, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:52:11', '2023-03-25 18:52:11'),
(436, 242, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:52:14', '2023-03-25 18:52:14'),
(437, 242, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 18:52:17', '2023-03-25 18:52:17'),
(438, 242, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 18:52:19', '2023-03-25 18:52:19'),
(439, 243, 14, NULL, NULL, NULL, 7, 7, '2023-03-25 18:55:22', '2023-03-25 18:55:22'),
(440, 243, 14, NULL, NULL, NULL, 9, 9, '2023-03-25 18:55:24', '2023-03-25 18:55:24'),
(441, 243, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 18:55:27', '2023-03-25 18:55:27'),
(442, 243, 14, NULL, NULL, NULL, 14, 14, '2023-03-25 18:55:29', '2023-03-25 18:55:29'),
(443, 243, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 18:55:31', '2023-03-25 18:55:31'),
(444, 243, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 18:55:33', '2023-03-25 18:55:33'),
(445, 243, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 18:55:38', '2023-03-25 18:55:38'),
(446, 244, 14, NULL, NULL, NULL, 6, 6, '2023-03-25 18:58:51', '2023-03-25 18:58:51'),
(447, 244, 14, NULL, NULL, NULL, 8, 8, '2023-03-25 18:58:53', '2023-03-25 18:58:53'),
(448, 244, 14, NULL, NULL, NULL, 10, 10, '2023-03-25 18:58:55', '2023-03-25 18:58:55'),
(449, 244, 14, NULL, NULL, NULL, 12, 14, '2023-03-25 18:58:57', '2023-03-25 18:58:57'),
(450, 244, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 18:58:59', '2023-03-25 18:58:59'),
(451, 244, 14, NULL, NULL, NULL, 18, 20, '2023-03-25 18:59:02', '2023-03-25 20:04:27'),
(452, 244, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 18:59:04', '2023-03-25 20:04:31'),
(453, 244, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 18:59:06', '2023-03-25 20:04:33'),
(454, 245, 14, NULL, NULL, NULL, 6, 6, '2023-03-25 19:05:12', '2023-03-25 19:05:12'),
(455, 245, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 19:05:15', '2023-03-25 19:05:15'),
(456, 245, 14, NULL, NULL, NULL, 13, 13, '2023-03-25 19:05:20', '2023-03-25 19:05:20'),
(457, 245, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:05:22', '2023-03-25 19:05:22'),
(458, 245, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 19:05:24', '2023-03-25 19:05:24'),
(459, 245, 14, NULL, NULL, NULL, 20, 20, '2023-03-25 19:05:27', '2023-03-25 19:05:27'),
(460, 245, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 19:05:29', '2023-03-25 19:05:29'),
(461, 246, 14, NULL, NULL, NULL, 11, 11, '2023-03-25 19:07:51', '2023-03-25 19:07:51'),
(462, 246, 14, NULL, NULL, NULL, 13, 14, '2023-03-25 19:07:53', '2023-03-25 19:07:53'),
(463, 246, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 19:07:56', '2023-03-25 19:07:56'),
(464, 246, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 19:07:58', '2023-03-25 19:07:58'),
(465, 246, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 19:08:01', '2023-03-25 19:08:01'),
(466, 246, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 19:08:03', '2023-03-25 19:08:03'),
(467, 247, 14, NULL, NULL, NULL, 13, 13, '2023-03-25 19:10:10', '2023-03-25 19:10:10'),
(468, 247, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:10:13', '2023-03-25 19:10:13'),
(469, 247, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 19:10:15', '2023-03-25 19:10:15'),
(470, 247, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 19:10:18', '2023-03-25 19:10:18'),
(471, 247, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 19:10:20', '2023-03-25 19:10:20'),
(472, 248, 14, NULL, NULL, NULL, 12, 14, '2023-03-25 19:12:00', '2023-03-25 19:12:00'),
(473, 248, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 19:12:03', '2023-03-25 19:12:03'),
(474, 248, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 19:12:08', '2023-03-25 19:12:08'),
(475, 249, 14, NULL, NULL, NULL, 12, 13, '2023-03-25 19:14:39', '2023-03-25 19:14:39'),
(476, 249, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:14:41', '2023-03-25 19:14:41'),
(477, 249, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 19:14:43', '2023-03-25 19:14:43'),
(478, 249, 14, NULL, NULL, NULL, 19, 19, '2023-03-25 19:14:46', '2023-03-25 19:14:46'),
(479, 249, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 19:14:48', '2023-03-25 19:14:48'),
(480, 249, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 19:14:50', '2023-03-25 19:14:50'),
(481, 250, 14, NULL, NULL, NULL, 16, 16, '2023-03-25 19:53:33', '2023-03-25 19:53:33'),
(482, 250, 14, NULL, NULL, NULL, 18, 20, '2023-03-25 19:53:35', '2023-03-25 19:53:35'),
(483, 250, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 19:53:38', '2023-03-25 19:53:38'),
(484, 250, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 19:53:40', '2023-03-25 19:53:40'),
(485, 251, 14, NULL, NULL, NULL, 13, 13, '2023-03-25 19:55:46', '2023-03-25 19:55:46'),
(486, 251, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:55:48', '2023-03-25 19:55:48'),
(487, 251, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 19:55:50', '2023-03-25 19:55:50'),
(488, 251, 14, NULL, NULL, NULL, 19, 19, '2023-03-25 19:55:52', '2023-03-25 19:55:52'),
(489, 251, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 19:55:54', '2023-03-25 19:55:54'),
(490, 251, 14, NULL, NULL, NULL, 23, 24, '2023-03-25 19:55:57', '2023-03-25 20:25:09'),
(491, 252, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:58:13', '2023-03-25 19:58:13'),
(492, 252, 14, NULL, NULL, NULL, 17, 17, '2023-03-25 19:58:15', '2023-03-25 19:58:15'),
(493, 252, 14, NULL, NULL, NULL, 20, 20, '2023-03-25 19:58:18', '2023-03-25 19:58:18'),
(494, 252, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 19:58:20', '2023-03-25 19:58:20'),
(495, 252, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 19:58:22', '2023-03-25 19:58:22'),
(496, 253, 14, NULL, NULL, NULL, 15, 15, '2023-03-25 19:59:34', '2023-03-25 19:59:34'),
(497, 253, 14, NULL, NULL, NULL, 18, 18, '2023-03-25 19:59:36', '2023-03-25 19:59:36'),
(498, 253, 14, NULL, NULL, NULL, 20, 20, '2023-03-25 19:59:38', '2023-03-25 19:59:38'),
(499, 253, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 19:59:41', '2023-03-25 19:59:41'),
(500, 254, 14, NULL, NULL, NULL, 19, 20, '2023-03-25 20:01:05', '2023-03-25 20:01:05'),
(501, 254, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 20:01:08', '2023-03-25 20:01:08'),
(502, 254, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 20:01:10', '2023-03-25 20:01:10'),
(503, 255, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 20:02:19', '2023-03-25 20:02:19'),
(504, 255, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:02:22', '2023-03-25 20:02:22'),
(505, 256, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 20:06:49', '2023-03-25 20:06:49'),
(506, 256, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:06:51', '2023-03-25 20:06:51'),
(507, 232, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 20:11:14', '2023-03-25 20:11:14'),
(508, 240, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:15:28', '2023-03-25 20:15:28'),
(509, 248, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:16:14', '2023-03-25 20:16:14'),
(510, 257, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 20:18:04', '2023-03-25 20:18:04'),
(511, 257, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:18:10', '2023-03-25 20:18:10'),
(512, 258, 14, NULL, NULL, NULL, 22, 22, '2023-03-25 20:19:01', '2023-03-25 20:19:01'),
(513, 258, 14, NULL, NULL, NULL, 24, 24, '2023-03-25 20:19:03', '2023-03-25 20:19:03'),
(514, 259, 14, NULL, NULL, NULL, 19, 19, '2023-03-25 20:24:32', '2023-03-25 20:24:32'),
(515, 259, 14, NULL, NULL, NULL, 21, 21, '2023-03-25 20:24:32', '2023-03-25 20:24:32'),
(516, 259, 14, NULL, NULL, NULL, 23, 23, '2023-03-25 20:24:32', '2023-03-25 20:24:32'),
(517, 260, 9, NULL, 1, NULL, 1, 24, '2023-03-30 17:17:44', '2023-03-30 17:17:44'),
(518, 261, 9, NULL, 1, NULL, 1, 24, '2023-03-30 17:18:46', '2023-03-30 17:18:46'),
(520, 263, 9, NULL, NULL, NULL, NULL, NULL, '2023-04-01 20:01:37', '2023-04-01 20:01:37'),
(521, 264, 9, NULL, 1, NULL, 1, 24, '2023-04-01 20:58:43', '2023-04-01 20:58:43'),
(522, 265, 9, NULL, 1, NULL, 1, 24, '2023-04-01 20:59:30', '2023-04-01 20:59:30'),
(523, 266, 9, NULL, 1, NULL, 2, 24, '2023-04-01 21:00:45', '2023-04-01 21:00:45'),
(524, 267, 9, NULL, 1, NULL, 3, 24, '2023-04-01 21:03:09', '2023-04-01 21:03:09'),
(525, 268, 9, NULL, 1, NULL, 4, 24, '2023-04-01 21:05:49', '2023-04-01 21:05:49'),
(526, 269, 9, NULL, 1, NULL, 4, 24, '2023-04-01 21:20:42', '2023-04-01 21:20:42'),
(527, 270, 9, NULL, 1, NULL, 5, 24, '2023-04-02 18:28:05', '2023-04-02 18:28:05'),
(528, 271, 9, NULL, 1, NULL, 5, 24, '2023-04-02 18:28:57', '2023-04-02 18:28:57'),
(529, 272, 9, NULL, 1, NULL, 6, 24, '2023-04-02 18:30:14', '2023-04-02 18:30:14'),
(530, 273, 9, NULL, 1, NULL, 7, 24, '2023-04-02 18:31:04', '2023-04-02 18:31:04'),
(531, 274, 9, NULL, 1, NULL, 8, 24, '2023-04-02 18:31:57', '2023-04-02 18:31:57'),
(532, 275, 9, NULL, 1, NULL, 9, 24, '2023-04-02 18:32:55', '2023-04-02 18:32:55'),
(533, 276, 9, NULL, 1, NULL, 10, 24, '2023-04-02 18:33:55', '2023-04-02 18:33:55'),
(534, 277, 9, NULL, 1, NULL, 11, 24, '2023-04-02 18:35:02', '2023-04-02 18:35:02'),
(535, 278, 9, NULL, 1, NULL, 11, 24, '2023-04-02 18:35:41', '2023-04-02 18:35:41'),
(536, 279, 9, NULL, 1, NULL, 12, 24, '2023-04-02 18:37:09', '2023-04-02 18:37:09'),
(537, 280, 9, NULL, 1, NULL, 12, 24, '2023-04-02 18:51:32', '2023-04-02 18:51:32'),
(538, 281, 9, NULL, 1, NULL, 13, 24, '2023-04-02 18:52:36', '2023-04-02 18:52:36'),
(539, 282, 9, NULL, 1, NULL, 13, 24, '2023-04-02 18:53:30', '2023-04-02 18:53:30'),
(540, 283, 9, NULL, 1, NULL, 14, 24, '2023-04-02 18:58:32', '2023-04-02 18:58:32'),
(541, 284, 9, NULL, 1, NULL, 14, 24, '2023-04-02 18:59:53', '2023-04-02 18:59:53'),
(542, 219, 9, NULL, 1, NULL, 15, 24, '2023-04-02 19:01:12', '2023-04-02 19:01:12'),
(543, 285, 9, NULL, 1, NULL, 16, 24, '2023-04-02 19:02:11', '2023-04-02 19:02:11'),
(544, 286, 9, NULL, 1, NULL, 16, 24, '2023-04-02 19:03:09', '2023-04-02 19:03:09'),
(545, 287, 9, NULL, 1, NULL, 17, 24, '2023-04-02 19:04:11', '2023-04-02 19:04:11'),
(546, 260, 9, NULL, 2, NULL, 1, 24, '2023-04-02 20:08:02', '2023-04-02 20:08:02'),
(547, 261, 9, NULL, 2, NULL, 1, 24, '2023-04-02 20:08:28', '2023-04-02 20:08:28'),
(548, 265, 9, NULL, 2, NULL, 2, 24, '2023-04-02 20:08:58', '2023-04-02 20:08:58'),
(549, 267, 9, NULL, 2, NULL, 3, 24, '2023-04-02 20:09:35', '2023-04-02 20:09:35'),
(550, 268, 9, NULL, 2, NULL, 4, 24, '2023-04-02 20:10:29', '2023-04-02 20:10:29'),
(551, 269, 9, NULL, 2, NULL, 4, 24, '2023-04-02 20:10:58', '2023-04-02 20:10:58'),
(552, 270, 9, NULL, 2, NULL, 5, 24, '2023-04-02 20:11:29', '2023-04-02 20:11:29'),
(553, 271, 9, NULL, 2, NULL, 5, 24, '2023-04-02 20:12:03', '2023-04-02 20:12:03'),
(554, 273, 9, NULL, 2, NULL, 6, 24, '2023-04-02 20:12:57', '2023-04-02 20:12:57'),
(555, 277, 9, NULL, 2, NULL, 7, 24, '2023-04-02 20:13:34', '2023-04-02 20:13:34'),
(556, 278, 9, NULL, 2, NULL, 7, 24, '2023-04-02 20:14:18', '2023-04-02 20:14:18'),
(557, 281, 9, NULL, 2, NULL, 8, 24, '2023-04-02 20:15:06', '2023-04-02 20:15:06'),
(558, 282, 9, NULL, 2, NULL, 8, 24, '2023-04-02 20:16:01', '2023-04-02 20:16:01'),
(559, 283, 9, NULL, 2, NULL, 9, 24, '2023-04-02 20:16:42', '2023-04-02 20:16:42'),
(560, 284, 9, NULL, 2, NULL, 9, 24, '2023-04-02 20:17:22', '2023-04-02 20:17:22'),
(561, 285, 9, NULL, 2, NULL, 10, 24, '2023-04-02 20:17:52', '2023-04-02 20:17:52'),
(562, 286, 9, NULL, 2, NULL, 10, 24, '2023-04-02 20:18:44', '2023-04-02 20:18:44'),
(563, 288, 9, NULL, 2, NULL, 11, 24, '2023-04-02 20:20:54', '2023-04-02 20:20:54'),
(564, 289, 9, NULL, 2, NULL, 11, 24, '2023-04-02 20:21:37', '2023-04-02 20:21:37'),
(565, 290, 9, NULL, 2, NULL, 12, 24, '2023-04-02 20:22:50', '2023-04-02 20:22:50'),
(566, 291, 9, NULL, 2, NULL, 12, 24, '2023-04-02 20:23:36', '2023-04-02 20:24:20'),
(567, 292, 9, NULL, 2, NULL, 13, 24, '2023-04-02 20:25:06', '2023-04-02 20:25:06'),
(568, 293, 9, NULL, 2, NULL, 13, 24, '2023-04-02 20:25:49', '2023-04-02 20:25:49'),
(569, 294, 9, NULL, 2, NULL, 14, 24, '2023-04-02 20:26:32', '2023-04-02 20:26:32'),
(570, 295, 9, NULL, 2, NULL, 14, 24, '2023-04-02 20:28:10', '2023-04-02 20:28:33'),
(571, 296, 9, NULL, 2, NULL, 15, 24, '2023-04-02 20:29:49', '2023-04-02 20:29:49'),
(572, 297, 9, NULL, 2, NULL, 15, 24, '2023-04-02 20:30:39', '2023-04-02 20:30:39'),
(573, 298, 9, NULL, 2, NULL, 16, 24, '2023-04-02 20:31:47', '2023-04-02 20:31:47'),
(574, 299, 9, NULL, 2, NULL, 17, 24, '2023-04-02 20:32:30', '2023-04-02 20:32:30'),
(575, 300, 9, NULL, 3, NULL, 1, 24, '2023-04-02 21:17:53', '2023-04-02 21:17:53'),
(576, 301, 9, NULL, 3, NULL, 1, 24, '2023-04-02 21:20:20', '2023-04-02 21:20:20'),
(577, 302, 9, NULL, 3, NULL, 1, 24, '2023-04-02 21:21:10', '2023-04-02 21:21:10'),
(578, 303, 9, NULL, 3, NULL, 2, 24, '2023-04-02 21:22:30', '2023-04-02 21:22:30'),
(579, 304, 9, NULL, 3, NULL, 2, 24, '2023-04-02 21:31:54', '2023-04-02 21:31:54'),
(580, 305, 9, NULL, 3, NULL, 3, 24, '2023-04-02 21:32:41', '2023-04-02 21:32:41'),
(581, 306, 9, NULL, 3, NULL, 3, 24, '2023-04-02 21:34:32', '2023-04-02 21:34:32'),
(582, 307, 9, NULL, 3, NULL, 4, 24, '2023-04-02 21:39:39', '2023-04-02 21:39:39'),
(583, 308, 9, NULL, 3, NULL, 5, 24, '2023-04-02 21:40:24', '2023-04-02 21:40:24'),
(584, 309, 9, NULL, 3, NULL, 5, 24, '2023-04-02 21:41:14', '2023-04-02 21:41:14'),
(585, 310, 9, NULL, 3, NULL, 6, 24, '2023-04-02 21:42:53', '2023-04-02 21:42:53'),
(586, 274, 9, NULL, 3, NULL, 7, 24, '2023-04-02 21:43:33', '2023-04-02 21:43:33'),
(587, 311, 9, NULL, 3, NULL, 7, 24, '2023-04-02 21:44:34', '2023-04-02 21:44:34'),
(588, 312, 9, NULL, 3, NULL, 8, 24, '2023-04-02 21:47:58', '2023-04-02 21:47:58'),
(589, 313, 9, NULL, 2, NULL, 9, 24, '2023-04-02 21:49:17', '2023-04-02 21:49:17'),
(590, 314, 9, NULL, 3, NULL, 10, 24, '2023-04-02 21:50:04', '2023-04-02 21:50:04'),
(591, 315, 9, NULL, 3, NULL, 10, 24, '2023-04-02 21:51:01', '2023-04-02 21:51:01'),
(592, 316, 9, NULL, 3, NULL, 11, 24, '2023-04-02 21:53:13', '2023-04-02 21:53:13'),
(593, 317, 9, NULL, 3, NULL, 12, 24, '2023-04-02 21:53:56', '2023-04-02 21:53:56'),
(594, 318, 9, NULL, 3, NULL, 12, 24, '2023-04-02 21:55:07', '2023-04-02 21:55:07'),
(595, 319, 9, NULL, 3, NULL, 12, 24, '2023-04-02 21:55:45', '2023-04-02 21:55:45'),
(596, 320, 9, NULL, 3, NULL, 13, 24, '2023-04-02 21:56:57', '2023-04-02 21:56:57'),
(597, 321, 9, NULL, 3, NULL, 13, 24, '2023-04-02 21:57:32', '2023-04-02 21:57:32'),
(598, 322, 9, NULL, 3, NULL, 14, 24, '2023-04-02 21:59:15', '2023-04-02 21:59:15'),
(599, 323, 9, NULL, 3, NULL, 14, 24, '2023-04-02 22:06:53', '2023-04-02 22:06:53'),
(600, 324, 9, NULL, 3, NULL, 14, 24, '2023-04-02 22:20:29', '2023-04-02 22:20:29'),
(601, 325, 9, NULL, 3, NULL, 14, 24, '2023-04-02 22:21:06', '2023-04-02 22:21:06'),
(602, 326, 9, NULL, 3, NULL, 15, 24, '2023-04-02 22:21:42', '2023-04-02 22:21:42'),
(603, 327, 9, NULL, 3, NULL, 15, 24, '2023-04-02 22:22:19', '2023-04-02 22:22:19'),
(604, 328, 9, NULL, 3, NULL, 16, 24, '2023-04-02 22:23:22', '2023-04-02 22:23:22'),
(605, 329, 9, NULL, 3, NULL, 16, 24, '2023-04-02 22:24:33', '2023-04-02 22:24:33'),
(606, 330, 9, NULL, 3, NULL, 17, 24, '2023-04-02 22:25:47', '2023-04-02 22:25:47'),
(607, 331, 9, NULL, 3, NULL, 18, 24, '2023-04-02 22:26:38', '2023-04-02 22:26:38'),
(608, 332, 9, NULL, 3, NULL, 19, 24, '2023-04-02 22:27:46', '2023-04-02 22:27:46'),
(609, 333, 16, NULL, 1, NULL, 1, 24, '2023-04-03 22:11:12', '2023-04-03 22:11:12'),
(610, 334, 16, NULL, 1, NULL, 1, 24, '2023-04-03 22:14:23', '2023-04-03 22:14:23'),
(611, 335, 16, NULL, 1, NULL, 1, 24, '2023-04-03 22:15:16', '2023-04-03 22:15:16'),
(612, 336, 16, NULL, 1, NULL, 1, 24, '2023-04-03 22:16:19', '2023-04-03 22:16:19'),
(613, 337, 16, NULL, 1, NULL, 2, 24, '2023-04-03 22:17:46', '2023-04-03 22:17:46'),
(614, 338, 16, NULL, 2, NULL, 4, 24, '2023-04-03 22:19:01', '2023-04-04 18:38:22'),
(615, 339, 16, NULL, 1, NULL, 4, 24, '2023-04-03 22:20:32', '2023-04-03 22:20:32'),
(616, 340, 16, NULL, 1, NULL, 5, 24, '2023-04-03 22:21:23', '2023-04-03 22:21:23'),
(617, 341, 16, NULL, 1, NULL, 5, 24, '2023-04-03 22:25:00', '2023-04-03 22:25:00'),
(618, 342, 16, NULL, 1, NULL, 6, 24, '2023-04-03 22:26:01', '2023-04-03 22:26:01'),
(619, 343, 16, NULL, 1, NULL, 6, 24, '2023-04-03 22:27:02', '2023-04-03 22:27:02'),
(620, 344, 16, NULL, 1, NULL, 7, 24, '2023-04-03 22:28:26', '2023-04-03 22:28:26'),
(621, 345, 16, NULL, 1, NULL, 8, 24, '2023-04-03 22:30:56', '2023-04-03 22:30:56'),
(622, 346, 16, NULL, 1, NULL, 9, 24, '2023-04-03 22:31:54', '2023-04-03 22:31:54'),
(623, 347, 16, NULL, 1, NULL, 10, 24, '2023-04-03 22:32:48', '2023-04-03 22:32:48'),
(624, 348, 16, NULL, 1, NULL, 11, 24, '2023-04-03 22:33:33', '2023-04-03 22:33:33'),
(625, 349, 16, NULL, 1, NULL, 11, 24, '2023-04-03 22:34:15', '2023-04-03 22:34:15'),
(626, 350, 16, NULL, 1, NULL, 12, 24, '2023-04-03 22:34:58', '2023-04-03 22:34:58'),
(627, 351, 16, NULL, 1, NULL, 13, 24, '2023-04-03 22:36:02', '2023-04-03 22:36:02'),
(628, 352, 16, NULL, 1, NULL, 13, 24, '2023-04-03 22:36:43', '2023-04-03 22:36:43'),
(629, 353, 16, NULL, 1, NULL, 15, 24, '2023-04-04 18:11:37', '2023-04-04 18:14:00'),
(630, 354, 16, NULL, 1, NULL, 15, 24, '2023-04-04 18:12:36', '2023-04-04 18:12:36'),
(631, 355, 16, NULL, 1, NULL, 16, 24, '2023-04-04 18:14:48', '2023-04-04 18:14:48'),
(632, 356, 16, NULL, 1, NULL, 16, 24, '2023-04-04 18:15:38', '2023-04-04 18:15:38'),
(633, 357, 16, NULL, 1, NULL, 17, 24, '2023-04-04 18:16:30', '2023-04-04 18:16:30');
INSERT INTO `exercise_relations` (`id`, `ex_id`, `cat_id`, `sub_cat_id`, `level_id`, `program_id`, `from_day`, `till_day`, `created_at`, `updated_at`) VALUES
(634, 358, 16, NULL, 1, NULL, 18, 24, '2023-04-04 18:17:32', '2023-04-04 18:17:32'),
(635, 359, 16, NULL, 1, NULL, 19, 24, '2023-04-04 18:18:21', '2023-04-04 18:18:21'),
(636, 360, 16, NULL, 1, NULL, 20, 24, '2023-04-04 18:19:03', '2023-04-04 18:19:03'),
(637, 361, 16, NULL, 1, NULL, 20, 24, '2023-04-04 18:19:51', '2023-04-04 18:19:51'),
(638, 362, 16, NULL, 1, NULL, 20, 24, '2023-04-04 18:20:36', '2023-04-04 18:20:36'),
(639, 363, 16, NULL, 1, NULL, 21, NULL, '2023-04-04 18:21:55', '2023-04-04 18:21:55'),
(640, 364, 16, NULL, 2, NULL, 1, 24, '2023-04-04 18:32:09', '2023-04-04 18:37:26'),
(641, 365, 16, NULL, 2, NULL, 2, 24, '2023-04-04 18:34:52', '2023-04-04 18:36:44'),
(642, 337, 16, NULL, 2, NULL, 3, 24, '2023-04-04 18:36:17', '2023-04-04 18:36:17'),
(643, 338, 16, NULL, 1, NULL, 3, 24, '2023-04-04 18:39:15', '2023-04-04 18:39:15'),
(644, 339, 16, NULL, 2, NULL, 5, 24, '2023-04-04 18:39:47', '2023-04-04 18:39:47'),
(645, 340, 16, NULL, 2, NULL, 6, 24, '2023-04-04 18:40:23', '2023-04-04 18:40:23'),
(646, 341, 16, NULL, 2, NULL, 7, 24, '2023-04-04 18:40:56', '2023-04-04 18:40:56'),
(647, 342, 16, NULL, 2, NULL, 8, 24, '2023-04-04 18:41:25', '2023-04-04 18:41:25'),
(648, 366, 16, NULL, 2, NULL, 9, 24, '2023-04-04 18:43:30', '2023-04-04 18:43:30'),
(649, 367, 16, NULL, 2, NULL, 10, 24, '2023-04-04 18:44:20', '2023-04-04 18:44:20'),
(650, 368, 16, NULL, 2, NULL, 11, 24, '2023-04-04 18:47:01', '2023-04-04 18:47:01'),
(651, 369, 16, NULL, 2, NULL, 12, 24, '2023-04-04 18:47:49', '2023-04-04 18:47:49'),
(652, 370, 16, NULL, 2, NULL, 12, 24, '2023-04-04 18:48:43', '2023-04-04 18:48:43'),
(653, 371, 16, NULL, 2, NULL, 13, 24, '2023-04-04 18:49:19', '2023-04-04 18:49:19'),
(654, 372, 16, NULL, 2, NULL, 14, 24, '2023-04-04 18:50:22', '2023-04-04 18:50:22'),
(655, 373, 16, NULL, 2, NULL, 15, 24, '2023-04-04 18:51:15', '2023-04-04 18:51:15'),
(656, 374, 16, NULL, 2, NULL, 16, 24, '2023-04-04 18:51:58', '2023-04-04 18:51:58'),
(657, 375, 16, NULL, 2, NULL, 17, 24, '2023-04-04 18:53:20', '2023-04-04 18:53:20'),
(658, 376, 16, NULL, 2, NULL, 18, 24, '2023-04-04 18:54:15', '2023-04-04 18:54:15'),
(659, 377, 16, NULL, 2, NULL, 19, 24, '2023-04-04 20:08:59', '2023-04-04 20:08:59'),
(660, 378, 16, NULL, 2, NULL, 20, 24, '2023-04-04 20:10:40', '2023-04-04 20:10:40'),
(661, 379, 16, NULL, 2, NULL, 21, 24, '2023-04-04 20:12:09', '2023-04-04 20:12:09'),
(662, 380, 16, NULL, 2, NULL, 22, 24, '2023-04-04 20:12:47', '2023-04-04 20:12:47'),
(663, 381, 16, NULL, 2, NULL, 22, 24, '2023-04-04 20:13:45', '2023-04-04 20:13:45'),
(664, 382, 16, NULL, 2, NULL, 23, 24, '2023-04-04 20:15:11', '2023-04-04 20:15:11'),
(665, 383, 16, NULL, 2, NULL, 22, 24, '2023-04-04 20:15:57', '2023-04-04 20:15:57'),
(666, 384, 16, NULL, 2, NULL, 23, 24, '2023-04-04 20:16:55', '2023-04-04 20:16:55'),
(667, 385, 16, NULL, 2, NULL, 23, 24, '2023-04-04 20:17:45', '2023-04-04 20:17:45'),
(668, 386, 16, NULL, 2, NULL, 24, 24, '2023-04-04 20:18:19', '2023-04-04 20:18:19'),
(669, 387, 16, NULL, 2, NULL, 1, 24, '2023-04-04 20:19:19', '2023-04-04 20:19:19'),
(670, 388, 16, NULL, 2, NULL, 1, 24, '2023-04-04 20:20:04', '2023-04-04 20:20:04'),
(671, 389, 16, NULL, 2, NULL, 1, 24, '2023-04-04 20:20:47', '2023-04-04 20:20:47'),
(672, 390, 16, NULL, 2, NULL, 2, 24, '2023-04-04 20:21:25', '2023-04-04 20:21:25'),
(673, 391, 16, NULL, 2, NULL, 3, 24, '2023-04-04 20:22:10', '2023-04-04 20:22:10'),
(674, 392, 16, NULL, 3, NULL, 1, 24, '2023-04-04 21:12:00', '2023-04-04 21:12:00'),
(675, 393, 16, NULL, 3, NULL, 1, 24, '2023-04-04 21:13:02', '2023-04-04 21:13:02'),
(676, 394, 16, NULL, 3, NULL, 1, 24, '2023-04-04 21:13:55', '2023-04-04 21:13:55'),
(677, 395, 16, NULL, 3, NULL, 1, 24, '2023-04-04 21:14:55', '2023-04-04 21:14:55'),
(678, 396, 17, NULL, NULL, NULL, 1, 1, '2023-04-04 21:18:07', '2023-04-04 21:18:07'),
(679, 396, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 21:18:07', '2023-04-04 21:18:07'),
(680, 396, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 21:18:07', '2023-04-04 21:18:07'),
(681, 396, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 21:18:07', '2023-04-04 21:18:07'),
(682, 396, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:18:07', '2023-04-04 21:18:07'),
(683, 397, 16, NULL, 3, NULL, 2, 24, '2023-04-04 21:18:39', '2023-04-04 21:18:39'),
(684, 398, 16, NULL, 3, NULL, 2, 24, '2023-04-04 21:19:22', '2023-04-04 21:19:22'),
(685, 399, 17, NULL, NULL, NULL, 1, 1, '2023-04-04 21:20:09', '2023-04-04 21:20:09'),
(686, 399, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 21:20:09', '2023-04-04 21:20:09'),
(687, 399, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 21:20:09', '2023-04-04 21:20:09'),
(688, 399, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 21:20:09', '2023-04-04 21:20:09'),
(689, 399, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:20:09', '2023-04-04 21:20:09'),
(690, 400, 16, NULL, 3, NULL, 3, 24, '2023-04-04 21:20:41', '2023-04-04 21:20:41'),
(691, 401, 16, NULL, 3, NULL, 4, 24, '2023-04-04 21:21:24', '2023-04-04 21:21:24'),
(692, 402, 17, NULL, NULL, NULL, 1, 1, '2023-04-04 21:21:49', '2023-04-04 21:21:49'),
(693, 402, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 21:21:49', '2023-04-04 21:21:49'),
(694, 402, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 21:21:49', '2023-04-04 21:21:49'),
(695, 402, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:21:49', '2023-04-04 21:21:49'),
(696, 403, 16, NULL, 3, NULL, 5, 24, '2023-04-04 21:22:17', '2023-04-04 21:22:17'),
(697, 404, 16, NULL, 3, NULL, 6, 24, '2023-04-04 21:23:04', '2023-04-04 21:23:04'),
(698, 405, 16, NULL, 3, NULL, 6, 24, '2023-04-04 21:23:49', '2023-04-04 21:23:49'),
(699, 406, 16, NULL, 3, NULL, 7, 24, '2023-04-04 21:24:31', '2023-04-04 21:24:31'),
(700, 407, 17, NULL, NULL, NULL, 1, 2, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(701, 407, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(702, 407, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(703, 407, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(704, 407, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(705, 407, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 21:24:40', '2023-04-04 21:24:40'),
(706, 408, 16, NULL, 3, NULL, 8, 24, '2023-04-04 21:25:14', '2023-04-04 21:25:14'),
(707, 409, 16, NULL, 3, NULL, 9, 24, '2023-04-04 21:25:52', '2023-04-04 21:25:52'),
(708, 410, 16, NULL, 3, NULL, 9, 24, '2023-04-04 21:26:26', '2023-04-04 21:26:26'),
(709, 411, 17, NULL, NULL, NULL, 1, 2, '2023-04-04 21:26:54', '2023-04-04 21:26:54'),
(710, 411, 17, NULL, NULL, NULL, 5, 5, '2023-04-04 21:26:54', '2023-04-04 21:26:54'),
(711, 411, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 21:26:54', '2023-04-04 21:26:54'),
(712, 411, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 21:26:54', '2023-04-04 21:26:54'),
(713, 411, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 21:26:54', '2023-04-04 21:26:54'),
(714, 412, 16, NULL, 3, NULL, 10, 24, '2023-04-04 21:27:03', '2023-04-04 21:27:03'),
(715, 413, 16, NULL, 3, NULL, 11, 24, '2023-04-04 21:27:59', '2023-04-04 21:27:59'),
(716, 414, 17, NULL, NULL, NULL, 1, 2, '2023-04-04 21:28:24', '2023-04-04 21:28:24'),
(717, 414, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 21:28:24', '2023-04-04 21:28:24'),
(718, 414, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 21:28:24', '2023-04-04 21:28:24'),
(719, 415, 16, NULL, 3, NULL, 12, 24, '2023-04-04 21:28:47', '2023-04-04 21:28:47'),
(720, 416, 16, NULL, 3, NULL, 13, 24, '2023-04-04 21:29:38', '2023-04-04 21:29:38'),
(721, 417, 16, NULL, 3, NULL, 14, 24, '2023-04-04 21:30:35', '2023-04-04 21:30:35'),
(722, 418, 17, NULL, NULL, NULL, 2, 2, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(723, 418, 17, NULL, NULL, NULL, 4, 4, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(724, 418, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(725, 418, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(726, 418, 17, NULL, NULL, NULL, 14, 15, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(727, 418, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 21:31:55', '2023-04-04 21:31:55'),
(728, 419, 17, NULL, NULL, NULL, 2, 2, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(729, 419, 17, NULL, NULL, NULL, 4, 4, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(730, 419, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(731, 419, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(732, 419, 17, NULL, NULL, NULL, 14, 15, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(733, 419, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 21:35:21', '2023-04-04 21:35:21'),
(734, 420, 17, NULL, NULL, NULL, 2, 2, '2023-04-04 21:38:34', '2023-04-04 21:38:34'),
(735, 420, 17, NULL, NULL, NULL, 5, 5, '2023-04-04 21:38:34', '2023-04-04 21:38:34'),
(736, 420, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 21:38:34', '2023-04-04 21:38:34'),
(737, 420, 17, NULL, NULL, NULL, 18, 18, '2023-04-04 21:38:34', '2023-04-04 21:38:34'),
(738, 420, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 21:38:34', '2023-04-04 21:38:34'),
(739, 421, 16, NULL, 3, NULL, 16, 24, '2023-04-04 21:39:06', '2023-04-04 21:39:06'),
(740, 422, 16, NULL, 3, NULL, 15, 24, '2023-04-04 21:41:00', '2023-04-04 21:41:00'),
(741, 423, 16, NULL, 3, NULL, 17, 24, '2023-04-04 21:41:46', '2023-04-04 21:41:46'),
(742, 424, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:41:46', '2023-04-04 21:41:46'),
(743, 424, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 21:41:46', '2023-04-04 21:41:46'),
(744, 424, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 21:41:46', '2023-04-04 21:41:46'),
(745, 425, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:45:12', '2023-04-04 21:45:12'),
(746, 425, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 21:45:12', '2023-04-04 21:45:12'),
(747, 425, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 21:45:12', '2023-04-04 21:45:12'),
(748, 426, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:50:07', '2023-04-04 21:50:07'),
(749, 426, 17, NULL, NULL, NULL, 12, 13, '2023-04-04 21:50:07', '2023-04-04 21:50:07'),
(750, 426, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 21:50:07', '2023-04-04 21:50:07'),
(751, 427, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 21:52:21', '2023-04-04 21:52:21'),
(752, 427, 17, NULL, NULL, NULL, 12, 13, '2023-04-04 21:52:21', '2023-04-04 21:52:21'),
(753, 427, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 21:52:21', '2023-04-04 21:52:21'),
(754, 428, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 21:54:49', '2023-04-04 21:54:49'),
(755, 428, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:54:49', '2023-04-04 21:54:49'),
(756, 428, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 21:54:49', '2023-04-04 21:54:49'),
(757, 429, 16, NULL, 3, NULL, 18, 24, '2023-04-04 21:54:54', '2023-04-04 21:54:54'),
(758, 430, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 21:57:07', '2023-04-04 21:57:07'),
(759, 430, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:57:07', '2023-04-04 21:57:07'),
(760, 430, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 21:57:07', '2023-04-04 21:57:07'),
(761, 431, 16, NULL, 3, NULL, 18, 24, '2023-04-04 21:57:20', '2023-04-04 21:57:20'),
(762, 432, 16, NULL, 3, NULL, 19, 24, '2023-04-04 21:58:42', '2023-04-04 21:58:42'),
(763, 433, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 21:59:19', '2023-04-04 21:59:19'),
(764, 433, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 21:59:19', '2023-04-04 21:59:19'),
(765, 433, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 21:59:19', '2023-04-04 21:59:19'),
(766, 434, 16, NULL, 3, NULL, 20, 24, '2023-04-04 21:59:39', '2023-04-04 21:59:39'),
(767, 435, 16, NULL, 3, NULL, 21, 24, '2023-04-04 22:00:40', '2023-04-04 22:00:40'),
(768, 436, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 22:00:56', '2023-04-04 22:00:56'),
(769, 436, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:00:56', '2023-04-04 22:00:56'),
(770, 436, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:00:56', '2023-04-04 22:00:56'),
(771, 437, 16, NULL, 3, NULL, 22, 24, '2023-04-04 22:02:02', '2023-04-04 22:02:02'),
(772, 438, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 22:02:40', '2023-04-04 22:02:40'),
(773, 438, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:02:40', '2023-04-04 22:02:40'),
(774, 438, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:02:40', '2023-04-04 22:02:40'),
(775, 439, 16, NULL, 3, NULL, 22, 24, '2023-04-04 22:03:04', '2023-04-04 22:03:04'),
(776, 440, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:04:43', '2023-04-04 22:04:43'),
(777, 440, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 22:04:43', '2023-04-04 22:04:43'),
(778, 440, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:04:43', '2023-04-04 22:04:43'),
(779, 441, 16, NULL, 3, NULL, 23, 24, '2023-04-04 22:05:13', '2023-04-04 22:05:13'),
(780, 442, 16, NULL, 3, NULL, 24, 24, '2023-04-04 22:06:29', '2023-04-04 22:06:29'),
(781, 443, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:07:03', '2023-04-04 22:07:03'),
(782, 443, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 22:07:03', '2023-04-04 22:07:03'),
(783, 443, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:07:03', '2023-04-04 22:07:03'),
(784, 443, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:07:03', '2023-04-04 22:07:03'),
(785, 444, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 22:08:52', '2023-04-04 22:08:52'),
(786, 444, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:08:52', '2023-04-04 22:08:52'),
(787, 444, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:08:52', '2023-04-04 22:08:52'),
(788, 445, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 22:10:04', '2023-04-04 22:10:04'),
(789, 445, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 22:10:04', '2023-04-04 22:10:04'),
(790, 446, 17, NULL, NULL, NULL, 19, 20, '2023-04-04 22:11:29', '2023-04-04 22:11:29'),
(791, 446, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 22:11:29', '2023-04-04 22:11:29'),
(792, 447, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 22:14:20', '2023-04-04 22:14:20'),
(793, 447, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:14:20', '2023-04-04 22:14:20'),
(794, 447, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:14:20', '2023-04-04 22:14:20'),
(795, 448, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 22:16:14', '2023-04-04 22:16:14'),
(796, 448, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 22:16:14', '2023-04-04 22:16:14'),
(797, 448, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:16:14', '2023-04-04 22:16:14'),
(798, 449, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 22:20:58', '2023-04-04 22:20:58'),
(799, 449, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:20:58', '2023-04-04 22:20:58'),
(800, 449, 17, NULL, NULL, NULL, 12, 13, '2023-04-04 22:20:58', '2023-04-04 22:20:58'),
(801, 449, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 22:20:58', '2023-04-04 22:20:58'),
(802, 449, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:20:58', '2023-04-04 22:20:58'),
(803, 450, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 22:23:16', '2023-04-04 22:23:16'),
(804, 450, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:23:16', '2023-04-04 22:23:16'),
(805, 450, 17, NULL, NULL, NULL, 12, 13, '2023-04-04 22:23:16', '2023-04-04 22:23:16'),
(806, 450, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:23:16', '2023-04-04 22:23:16'),
(807, 450, 17, NULL, NULL, NULL, 23, 23, '2023-04-04 22:23:16', '2023-04-04 22:23:16'),
(808, 451, 17, NULL, NULL, NULL, 4, 4, '2023-04-04 22:25:08', '2023-04-04 22:25:08'),
(809, 451, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:25:08', '2023-04-04 22:25:08'),
(810, 451, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 22:25:08', '2023-04-04 22:25:08'),
(811, 451, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:25:08', '2023-04-04 22:25:08'),
(812, 452, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 22:27:17', '2023-04-04 22:27:17'),
(813, 452, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:27:17', '2023-04-04 22:27:17'),
(814, 452, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:27:17', '2023-04-04 22:27:17'),
(815, 452, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:27:17', '2023-04-04 22:27:17'),
(816, 452, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 22:27:17', '2023-04-04 22:27:17'),
(817, 453, 17, NULL, NULL, NULL, 3, 3, '2023-04-04 22:30:21', '2023-04-04 22:30:21'),
(818, 453, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:30:21', '2023-04-04 22:30:21'),
(819, 453, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:30:21', '2023-04-04 22:30:21'),
(820, 453, 17, NULL, NULL, NULL, 22, 23, '2023-04-04 22:30:21', '2023-04-04 22:30:21'),
(821, 453, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:30:21', '2023-04-04 22:30:21'),
(822, 454, 17, NULL, NULL, NULL, 4, 4, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(823, 454, 17, NULL, NULL, NULL, 7, 7, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(824, 454, 17, NULL, NULL, NULL, 13, 13, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(825, 454, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(826, 454, 17, NULL, NULL, NULL, 18, 19, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(827, 454, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 22:33:50', '2023-04-04 22:33:50'),
(828, 455, 17, NULL, NULL, NULL, 4, 5, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(829, 455, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(830, 455, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(831, 455, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(832, 455, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(833, 455, 17, NULL, NULL, NULL, 18, 18, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(834, 455, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(835, 455, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:38:05', '2023-04-04 22:38:05'),
(836, 456, 17, NULL, NULL, NULL, 4, 5, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(837, 456, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(838, 456, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(839, 456, 17, NULL, NULL, NULL, 14, 14, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(840, 456, 17, NULL, NULL, NULL, 16, 16, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(841, 456, 17, NULL, NULL, NULL, 18, 18, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(842, 456, 17, NULL, NULL, NULL, 22, 22, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(843, 456, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 22:41:58', '2023-04-04 22:41:58'),
(844, 457, 17, NULL, NULL, NULL, 5, 5, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(845, 457, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(846, 457, 17, NULL, NULL, NULL, 12, 12, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(847, 457, 17, NULL, NULL, NULL, 15, 16, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(848, 457, 17, NULL, NULL, NULL, 18, 18, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(849, 457, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:45:08', '2023-04-04 22:45:08'),
(850, 458, 17, NULL, NULL, NULL, 5, 5, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(851, 458, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(852, 458, 17, NULL, NULL, NULL, 12, 12, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(853, 458, 17, NULL, NULL, NULL, 15, 16, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(854, 458, 17, NULL, NULL, NULL, 18, 18, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(855, 458, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:48:47', '2023-04-04 22:48:47'),
(856, 459, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 22:51:00', '2023-04-04 22:51:00'),
(857, 459, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:51:00', '2023-04-04 22:51:00'),
(858, 459, 17, NULL, NULL, NULL, 15, 15, '2023-04-04 22:51:00', '2023-04-04 22:51:00'),
(859, 459, 17, NULL, NULL, NULL, 17, 18, '2023-04-04 22:51:00', '2023-04-04 22:51:00'),
(860, 459, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:51:00', '2023-04-04 22:51:00'),
(861, 460, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 22:52:44', '2023-04-04 22:52:44'),
(862, 460, 17, NULL, NULL, NULL, 8, 8, '2023-04-04 22:52:44', '2023-04-04 22:52:44'),
(863, 460, 17, NULL, NULL, NULL, 17, 18, '2023-04-04 22:52:44', '2023-04-04 22:52:44'),
(864, 460, 17, NULL, NULL, NULL, 21, 21, '2023-04-04 22:52:44', '2023-04-04 22:52:44'),
(865, 461, 17, NULL, NULL, NULL, 6, 6, '2023-04-04 22:54:30', '2023-04-04 22:54:30'),
(866, 461, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 22:54:30', '2023-04-04 22:54:30'),
(867, 461, 17, NULL, NULL, NULL, 17, 18, '2023-04-04 22:54:30', '2023-04-04 22:54:30'),
(868, 461, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:54:30', '2023-04-04 22:54:30'),
(869, 462, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 22:56:02', '2023-04-04 22:56:02'),
(870, 462, 17, NULL, NULL, NULL, 17, 18, '2023-04-04 22:56:02', '2023-04-04 22:56:02'),
(871, 462, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:56:02', '2023-04-04 22:56:02'),
(872, 463, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 22:58:23', '2023-04-04 22:58:23'),
(873, 463, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 22:58:23', '2023-04-04 22:58:23'),
(874, 463, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 22:58:23', '2023-04-04 22:58:23'),
(875, 463, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 22:58:23', '2023-04-04 22:58:23'),
(876, 464, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 23:00:10', '2023-04-04 23:00:10'),
(877, 464, 17, NULL, NULL, NULL, 11, 11, '2023-04-04 23:00:10', '2023-04-04 23:00:10'),
(878, 464, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 23:00:10', '2023-04-04 23:00:10'),
(879, 464, 17, NULL, NULL, NULL, 20, 20, '2023-04-04 23:00:10', '2023-04-04 23:00:10'),
(880, 465, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 23:01:45', '2023-04-04 23:01:45'),
(881, 465, 17, NULL, NULL, NULL, 12, 12, '2023-04-04 23:01:45', '2023-04-04 23:01:45'),
(882, 465, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 23:01:45', '2023-04-04 23:01:45'),
(883, 465, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 23:01:45', '2023-04-04 23:01:45'),
(884, 466, 17, NULL, NULL, NULL, 10, 10, '2023-04-04 23:03:25', '2023-04-04 23:03:25'),
(885, 466, 17, NULL, NULL, NULL, 12, 12, '2023-04-04 23:03:25', '2023-04-04 23:03:25'),
(886, 466, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 23:03:25', '2023-04-04 23:03:25'),
(887, 466, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 23:03:25', '2023-04-04 23:03:25'),
(888, 467, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 23:04:57', '2023-04-04 23:04:57'),
(889, 467, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 23:04:57', '2023-04-04 23:04:57'),
(890, 467, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 23:04:57', '2023-04-04 23:04:57'),
(891, 467, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 23:04:57', '2023-04-04 23:04:57'),
(892, 468, 17, NULL, NULL, NULL, 9, 9, '2023-04-04 23:06:27', '2023-04-04 23:06:27'),
(893, 468, 17, NULL, NULL, NULL, 17, 17, '2023-04-04 23:06:27', '2023-04-04 23:06:27'),
(894, 468, 17, NULL, NULL, NULL, 19, 19, '2023-04-04 23:06:27', '2023-04-04 23:06:27'),
(895, 468, 17, NULL, NULL, NULL, 24, 24, '2023-04-04 23:06:27', '2023-04-04 23:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Begginer', '2023-03-08 20:01:13', '2023-03-08 20:01:13'),
(2, 'Intermediate', '2023-03-08 20:01:36', '2023-03-08 20:01:36'),
(3, 'Expert', '2023-03-08 20:01:43', '2023-03-08 20:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_01_044515_create_categories_table', 1),
(6, '2022_03_01_110417_create_levels_table', 1),
(7, '2022_03_01_123432_create_exercises_table', 1),
(8, '2023_02_17_105103_create_users_categories_table', 1),
(9, '2023_02_17_111859_create_programs_table', 1),
(10, '2023_02_17_112158_create_exercise_relations_table', 1),
(11, '2023_03_01_051119_create_cache_table', 1),
(12, '2023_03_21_103351_add_softdeletes_into_users', 2),
(13, '2023_03_30_150929_create_sub_categories_table', 3),
(14, '2023_04_02_160923_add_sub_cat_id_into_exercise_relations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gracetechnologies.com', '$2y$10$XcnfA2alxRUrk5dTurugm.6kHtzpJWF.pZl/R8oKEwt5UrTDSDuTW', '2023-03-23 00:31:20'),
('mirza@gmail.com', '$2y$10$tgxQOh8JgmVCEm1dNS3IvOUi03Qjg5XQ32hVuM7fM.KOhi3TfJ4/y', '2023-03-23 00:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Correct Head Posture Workout', '2023-03-13 21:32:43', '2023-03-16 18:31:36'),
(2, 'Make Your Beauty Bones Perfect', '2023-03-13 21:32:52', '2023-03-13 21:32:52'),
(3, 'Neck Strengthen Exercise', '2023-03-13 21:33:02', '2023-03-13 21:33:02'),
(4, 'Relief Neck Pain', '2023-03-13 21:33:09', '2023-03-13 21:33:09'),
(5, 'Neck Massage', '2023-03-13 21:33:16', '2023-03-13 21:33:16'),
(6, 'Neck Warm Up Exercises', '2023-03-13 21:33:23', '2023-03-13 21:33:23'),
(7, 'Collar Bone Warm Up Exercises ', '2023-03-13 21:46:22', '2023-03-13 21:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` enum('admin','emp') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'emp',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Misbah Waseem', 'misbah@gmail.com', '$2y$10$NXAZCJukHBy3UtDzO9CAyO4ICIUBER5yGKqlHiQWY8corqdge116u', 'emp', '2023-03-22 21:56:15', 'X4UapO7F9rPDc9EmtDYlItPqV8JOX4kFrQ7cK00De0jLOG9bzK62ytez2FL1', '2023-03-08 19:57:34', '2023-03-22 21:56:15', NULL),
(2, 'Muhammad Abdullah Mirza', 'mirza@gmail.com', '$2y$10$UHozGfzkXwhGmBPgHbzfsujzeQZYBgILyBKNQ7Z5jH9AKvSsyWSBm', 'emp', '2023-03-25 04:59:05', '0siU7JDQu8bUvA4Aw5WdnaiR5F3azOu0r1p9ppvx3fHtytxe4J0JQHEyBVI2', '2023-03-08 20:15:39', '2023-03-25 04:59:05', NULL),
(3, 'Dummy1', 'dummy@gmail.com', '$2y$10$wjMOM4lC9Dzt7x6WAPPuUuQS7MLt/570TInCzxdxgp72HZjIBj20q', 'emp', NULL, NULL, '2023-03-11 00:30:57', '2023-03-22 22:00:10', '2023-03-22 22:00:10'),
(4, 'Junaid QA', 'junaid@gmail.com', '$2y$10$ET.qaFjORPEh4o.Y66yf7epJn46IrXFqz5AFsaW3WaIef3.T7p4KG', 'emp', '2023-03-22 22:23:48', 'KWWFK1VSatlXKV0INI1mG1ZFvafIQ79AyZ5XCxlZ7as6oQG4oc1e4rPkcpfN', '2023-03-15 20:28:28', '2023-03-22 22:23:48', NULL),
(5, 'Shahid Khan', 'shahid@gmail.com', '$2y$10$CHqsbmsaRGocpqWBeZxvcuxPPC/MjoaCgBb6JeWMZYVKl/ymtCHSy', 'emp', '2023-03-22 22:00:35', NULL, '2023-03-22 15:41:41', '2023-03-22 22:00:35', NULL),
(6, 'Ansar Abbas Khan', 'admin@gracetechnologies.com', '$2y$10$zXUj97Qjn8yh2agRKGhxkeeftkSLXE9ooqwIf5Rd6.VDqnVcxi2cO', 'admin', NULL, 'p9GaFdgDDmmgH3N3XxprCXQO1zOR2SekwYP1j2JB6oNGQN1yt0zyT86gDi9z', '2023-03-22 21:50:57', '2023-03-22 21:50:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_categories`
--

CREATE TABLE `users_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_relations`
--
ALTER TABLE `exercise_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_relations_ex_id_foreign` (`ex_id`),
  ADD KEY `exercise_relations_cat_id_foreign` (`cat_id`),
  ADD KEY `exercise_relations_level_id_foreign` (`level_id`),
  ADD KEY `exercise_relations_program_id_foreign` (`program_id`),
  ADD KEY `exercise_relations_sub_cat_id_foreign` (`sub_cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_categories`
--
ALTER TABLE `users_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_categories_user_id_foreign` (`user_id`),
  ADD KEY `users_categories_cat_id_foreign` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `exercise_relations`
--
ALTER TABLE `exercise_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_categories`
--
ALTER TABLE `users_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exercise_relations`
--
ALTER TABLE `exercise_relations`
  ADD CONSTRAINT `exercise_relations_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercise_relations_ex_id_foreign` FOREIGN KEY (`ex_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercise_relations_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercise_relations_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercise_relations_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_categories`
--
ALTER TABLE `users_categories`
  ADD CONSTRAINT `users_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
