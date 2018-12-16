INSERT INTO gatekeeper.AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount) VALUES ('5b158109-1276-41b8-a91c-abef1734e7f2', 'admin@example.com', 'ADMIN@EXAMPLE.COM', 'admin@example.com', 'ADMIN@EXAMPLE.COM', false, 'AQAAAAEAACcQAAAAEJVyN/MeRToZSk8y4P9kK7biHNFfaMybXGUUQKbmZynXcYyVrczHYRiOrAoHRoCGfw==', 'ZE43GGXA5VJYTCWXYBNPUBNTRS5XFDR4', '0ec85cae-5442-46a1-8ba1-1c64a03cd71d', null, false, false, null, true, 0);
INSERT INTO gatekeeper.AspNetUserClaims (Id, UserId, ClaimType, ClaimValue) VALUES (1, '5b158109-1276-41b8-a91c-abef1734e7f2', 'user_type', 'administrator');
CREATE SCHEMA `glados` ;
CREATE SCHEMA `fitbit-ingest-service` ;

INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (1, 'Dashboard', '/dashboard', 0, 'line-chart', 100);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (2, 'Gatekeeper', '/gatekeeper', 2, 'key', 9000);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (3, 'Bookings', '/booking-facilities', 0, 'calendar', 200);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (7, 'CMS', '/layout-service', 2, 'link', 8000);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (8, 'Challenges', '/challenges', 0, 'trophy', 300);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (9, 'Health Data', '/health-data-repository', 2, 'medkit', 7000);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (11, 'Service Status', '/glados/status.xhtml', 0, 'rocket', 10000);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (12, 'Groups', '/user-groups', 0, 'group', 500);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (13, 'Audit Data', '/glados/userDataLookup.xhtml', 0, 'book', 9500);
INSERT INTO `layout-service`.AppLink (Id, DisplayName, Uri, AccessLevel, IconName, Priority) VALUES (14, 'Ladders', '/ladders', 0, 'signal', 350);

INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (2, 'Sports', '/booking-facilities/Sports', 2, 3, 'soccer-ball-o', 5000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (3, 'Venues', '/booking-facilities/Venues', 2, 3, 'building-o', 6000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (4, 'Facilities', '/booking-facilities/Facilities', 2, 3, 'bath', 7000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (5, 'Home', '/booking-facilities', 0, 3, 'home', 100);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (7, 'Home', '/dashboard', 0, 1, 'home', 100);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (10, 'Goals', '/dashboard/home/goals', 0, 1, 'star', 200);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (11, 'Input Data	', '/dashboard/home/input', 0, 1, 'wpforms	', 400);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (12, 'Remove Data', '/dashboard/home/removedata', 0, 1, 'trash', 9000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (13, 'Rankings', '/dashboard/home/rankings', 0, 1, 'trophy', 300);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (15, 'Group Challenges', '/challenges/challengesManage', 0, 8, 'group', 200);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (16, 'User Challenges', '/challenges', 0, 8, 'user', 100);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (17, 'Activities', '/challenges/activities', 1, 8, 'futbol-o', 5000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (18, 'Users', '/gatekeeper/UserManagement', 2, 2, 'user', 1000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (19, 'Clients', '/gatekeeper/ClientManagement', 2, 2, 'lock', 3000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (20, 'API Resources', '/gatekeeper/ApiResources', 2, 2, 'database', 2000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (21, 'Goal Metrics', '/challenges/goalmetrics', 1, 8, 'wrench', 6000);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (27, 'Home', '/ladders', 0, 14, 'signal', 100);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (28, 'Challenges', '/ladders/challenges', 0, 14, 'trophy', 200);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (29, 'Profile', '/ladders/profile', 0, 14, 'user', 300);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (30, 'Activity Types', '/health-data-repository', 2, 9, 'futbol-o', 100);
INSERT INTO `layout-service`.AppSubLink (Id, DisplayName, Uri, AccessLevel, AppLinkId, IconName, Priority) VALUES (31, 'Administration', '/health-data-repository/ActivitiesManagement', 2, 9, 'wrench', 200);

ALTER TABLE `layout-service`.`AppLink` AUTO_INCREMENT=15;
ALTER TABLE `layout-service`.`AppSubLink` AUTO_INCREMENT=32;
ALTER TABLE `gatekeeper`.`AspNetUserClaims` AUTO_INCREMENT=2;

INSERT INTO `healthdatarepository`.`ActivityType` VALUES (1,'Steps');
INSERT INTO `healthdatarepository`.`ActivityMapping` VALUES (1,'Fitbit','HOURLYSTEPS',1);

ALTER TABLE `healthdatarepository`.`ActivityType` AUTO_INCREMENT=2;
ALTER TABLE `healthdatarepository`.`ActivityMapping` AUTO_INCREMENT=2;


INSERT INTO `challenges`.`GoalMetric` VALUES (1,'Steps Taken','stepsTaken');
ALTER TABLE `challenges`.`GoalMetric` AUTO_INCREMENT=2;
