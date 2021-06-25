function [w_imu,a_imu,w_imu_jac,a_imu_jac] = Calibration_OMC_IMU_cost_imu(in1,t,dt,t_bias,dt_bias)
%CALIBRATION_OMC_IMU_COST_IMU
%    [W_IMU,A_IMU,W_IMU_JAC,A_IMU_JAC] = CALIBRATION_OMC_IMU_COST_IMU(IN1,T,DT,T_BIAS,DT_BIAS)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    10-Jun-2021 13:02:14

Ta1_1 = in1(:,58);
Ta1_2 = in1(:,61);
Ta1_3 = in1(:,64);
Ta2_1 = in1(:,59);
Ta2_2 = in1(:,62);
Ta2_3 = in1(:,65);
Ta3_1 = in1(:,60);
Ta3_2 = in1(:,63);
Ta3_3 = in1(:,66);
Tw1_1 = in1(:,49);
Tw1_2 = in1(:,52);
Tw1_3 = in1(:,55);
Tw2_1 = in1(:,50);
Tw2_2 = in1(:,53);
Tw2_3 = in1(:,56);
Tw3_1 = in1(:,51);
Tw3_2 = in1(:,54);
Tw3_3 = in1(:,57);
cabias1_1 = in1(:,40);
cabias1_2 = in1(:,43);
cabias1_3 = in1(:,46);
cabias2_1 = in1(:,41);
cabias2_2 = in1(:,44);
cabias2_3 = in1(:,47);
cabias3_1 = in1(:,42);
cabias3_2 = in1(:,45);
cabias3_3 = in1(:,48);
cq1_1 = in1(:,1);
cq1_2 = in1(:,6);
cq1_3 = in1(:,11);
cq2_1 = in1(:,2);
cq2_2 = in1(:,7);
cq2_3 = in1(:,12);
cq3_1 = in1(:,3);
cq3_2 = in1(:,8);
cq3_3 = in1(:,13);
cq4_1 = in1(:,4);
cq4_2 = in1(:,9);
cq4_3 = in1(:,14);
cq5_1 = in1(:,5);
cq5_2 = in1(:,10);
cq5_3 = in1(:,15);
cs1_1 = in1(:,16);
cs1_2 = in1(:,21);
cs1_3 = in1(:,26);
cs2_1 = in1(:,17);
cs2_2 = in1(:,22);
cs2_3 = in1(:,27);
cs3_1 = in1(:,18);
cs3_2 = in1(:,23);
cs3_3 = in1(:,28);
cs4_1 = in1(:,19);
cs4_2 = in1(:,24);
cs4_3 = in1(:,29);
cs5_1 = in1(:,20);
cs5_2 = in1(:,25);
cs5_3 = in1(:,30);
cwbias1_1 = in1(:,31);
cwbias1_2 = in1(:,34);
cwbias1_3 = in1(:,37);
cwbias2_1 = in1(:,32);
cwbias2_2 = in1(:,35);
cwbias2_3 = in1(:,38);
cwbias3_1 = in1(:,33);
cwbias3_2 = in1(:,36);
cwbias3_3 = in1(:,39);
g1 = in1(:,70);
g2 = in1(:,71);
t2 = g1.^2;
t3 = g2.^2;
t4 = t.*3.0;
t5 = t.^2;
t6 = t.^3;
t8 = t_bias.^2;
t9 = 1.0./dt;
t11 = -t;
t13 = -t_bias;
t16 = t./2.0;
t17 = t./6.0;
t7 = t5.^2;
t10 = t9.^2;
t12 = -t4;
t14 = t5.*2.0;
t15 = t.*t4;
t19 = -t6;
t20 = t5.*-3.0;
t21 = -t8;
t22 = -t17;
t23 = t5./2.0;
t24 = t6./2.0;
t25 = t5./4.0;
t26 = t5.*(3.0./2.0);
t27 = t6.*(2.0./3.0);
t29 = t6./6.0;
t31 = t8./2.0;
t114 = t2+t3+9.606665784960002e+1;
t18 = -t14;
t28 = t7./4.0;
t30 = t7./6.0;
t32 = -t23;
t33 = -t24;
t34 = -t26;
t35 = -t25;
t36 = -t27;
t37 = -t29;
t39 = t7./2.4e+1;
t40 = cq5_1.*t29;
t41 = cq5_2.*t29;
t42 = cq5_3.*t29;
t43 = cs5_1.*t23;
t44 = cs5_2.*t23;
t45 = cs5_3.*t23;
t50 = t21+t_bias+1.0./2.0;
t51 = t12+t14+1.0./2.0;
t52 = t4+t20+1.0./2.0;
t62 = t11+t23+1.0./2.0;
t63 = t13+t31+1.0./2.0;
t73 = t16+t19+t26-1.0./2.0;
t115 = sqrt(t114);
t38 = -t30;
t46 = cq5_1.*t39;
t47 = cq5_2.*t39;
t48 = cq5_3.*t39;
t49 = t+t18+1.0./2.0;
t56 = cs2_1.*t51;
t57 = cs2_2.*t51;
t58 = cs2_3.*t51;
t59 = cs3_1.*t52;
t60 = cs3_2.*t52;
t61 = cs3_3.*t52;
t64 = cs1_1.*t62;
t65 = cs1_2.*t62;
t66 = cs1_3.*t62;
t74 = t16+t27+t34+1.0./2.0;
t75 = t16+t23+t36+1.0./6.0;
t76 = cq3_1.*t73;
t77 = cq3_2.*t73;
t78 = cq3_3.*t73;
t79 = t16+t29+t32-1.0./6.0;
t99 = t16+t28+t33+t35+1.1e+1./2.4e+1;
t100 = t16+t25+t30+t33-1.1e+1./2.4e+1;
t101 = t22+t25+t37+t39+1.0./2.4e+1;
t116 = 1.0./t115;
t53 = cs4_1.*t49;
t54 = cs4_2.*t49;
t55 = cs4_3.*t49;
t67 = -t56;
t68 = -t57;
t69 = -t58;
t70 = -t59;
t71 = -t60;
t72 = -t61;
t80 = cq2_1.*t74;
t81 = cq2_2.*t74;
t82 = cq2_3.*t74;
t83 = cq4_1.*t75;
t84 = cq4_2.*t75;
t85 = cq4_3.*t75;
t86 = cq1_1.*t79;
t87 = cq1_2.*t79;
t88 = cq1_3.*t79;
t89 = -t76;
t90 = -t77;
t91 = -t78;
t95 = t17+t25+t29+t38+1.0./2.4e+1;
t102 = cq2_1.*t100;
t103 = cq2_2.*t100;
t104 = cq2_3.*t100;
t105 = cq1_1.*t101;
t106 = cq1_2.*t101;
t107 = cq1_3.*t101;
t108 = cq3_1.*t99;
t109 = cq3_2.*t99;
t110 = cq3_3.*t99;
t92 = -t80;
t93 = -t81;
t94 = -t82;
t96 = cq4_1.*t95;
t97 = cq4_2.*t95;
t98 = cq4_3.*t95;
t111 = -t102;
t112 = -t103;
t113 = -t104;
t117 = t43+t53+t64+t67+t70;
t118 = t44+t54+t65+t68+t71;
t119 = t45+t55+t66+t69+t72;
t120 = t10.*t117;
t121 = t10.*t118;
t122 = t10.*t119;
t127 = t40+t83+t86+t89+t92;
t128 = t41+t84+t87+t90+t93;
t129 = t42+t85+t88+t91+t94;
t132 = t46+t96+t105+t108+t111;
t133 = t47+t97+t106+t109+t112;
t134 = t48+t98+t107+t110+t113;
t123 = -t120;
t124 = -t122;
t130 = t115+t121;
t131 = t9.*t128;
t135 = cos(t132);
t136 = cos(t133);
t137 = cos(t134);
t138 = sin(t132);
t139 = sin(t133);
t140 = sin(t134);
t125 = g1+t123;
t126 = g2+t124;
t141 = t139.^2;
t142 = t140.^2;
t143 = Ta1_1.*t140;
t144 = Ta2_1.*t140;
t145 = Ta3_1.*t140;
t146 = t136.^2;
t147 = t137.^2;
t148 = t9.*t29.*t136;
t149 = t9.*t29.*t139;
t150 = t9.*t29.*t140;
t152 = t9.*t73.*t136;
t153 = t9.*t73.*t139;
t154 = t9.*t73.*t140;
t155 = t9.*t74.*t136;
t156 = t9.*t75.*t136;
t157 = t9.*t74.*t139;
t158 = t9.*t75.*t139;
t159 = t9.*t74.*t140;
t160 = t9.*t75.*t140;
t161 = t9.*t79.*t136;
t162 = t9.*t79.*t139;
t163 = t9.*t79.*t140;
t168 = t9.*t129.*t136;
t169 = t9.*t127.*t140;
t170 = t9.*t129.*t139;
t171 = t130.*t140;
t176 = t135.*t136;
t177 = t135.*t139;
t178 = t136.*t138;
t179 = t138.*t139;
t186 = Ta1_2.*t135.*t137;
t187 = Ta1_1.*t136.*t137;
t188 = Ta2_2.*t135.*t137;
t189 = Ta2_1.*t136.*t137;
t190 = Ta3_2.*t135.*t137;
t191 = Ta3_1.*t136.*t137;
t192 = Ta1_3.*t137.*t138;
t193 = Ta1_1.*t137.*t139;
t194 = Ta2_3.*t137.*t138;
t195 = Ta2_1.*t137.*t139;
t196 = Ta3_3.*t137.*t138;
t197 = Ta3_1.*t137.*t139;
t208 = t9.*t29.*t135.*t137;
t209 = t9.*t29.*t137.*t138;
t212 = t9.*t73.*t135.*t137;
t213 = t9.*t73.*t137.*t138;
t214 = t9.*t74.*t135.*t137;
t215 = t9.*t75.*t135.*t137;
t216 = t9.*t74.*t137.*t138;
t217 = t9.*t75.*t137.*t138;
t218 = t9.*t79.*t135.*t137;
t219 = t9.*t79.*t137.*t138;
t248 = t9.*t127.*t136.*t137;
t249 = t9.*t127.*t137.*t139;
t250 = t130.*t135.*t137;
t251 = t130.*t137.*t138;
t151 = t9.*t29.*t142;
t164 = t9.*t73.*t142;
t165 = t9.*t74.*t142;
t166 = t9.*t75.*t142;
t167 = t9.*t79.*t142;
t172 = t39.*t168;
t173 = t39.*t170;
t174 = t95.*t168;
t175 = t95.*t170;
t180 = t99.*t168;
t181 = t100.*t168;
t182 = t101.*t168;
t183 = t99.*t170;
t184 = t100.*t170;
t185 = t101.*t170;
t198 = -t192;
t199 = -t193;
t200 = -t194;
t201 = -t195;
t202 = -t196;
t203 = -t197;
t204 = t39.*t176;
t205 = t39.*t177;
t206 = t39.*t178;
t207 = t39.*t179;
t210 = t9.*t29.*t146.*t147;
t211 = t9.*t29.*t141.*t147;
t220 = t9.*t73.*t146.*t147;
t221 = t9.*t73.*t141.*t147;
t222 = t95.*t176;
t223 = t95.*t177;
t224 = t95.*t178;
t225 = t95.*t179;
t226 = t9.*t74.*t146.*t147;
t227 = t9.*t75.*t146.*t147;
t228 = t9.*t74.*t141.*t147;
t229 = t9.*t75.*t141.*t147;
t230 = t9.*t79.*t146.*t147;
t231 = t9.*t79.*t141.*t147;
t232 = t99.*t176;
t233 = t100.*t176;
t234 = t101.*t176;
t235 = t99.*t177;
t236 = t99.*t178;
t237 = t100.*t177;
t238 = t100.*t178;
t239 = t101.*t177;
t240 = t101.*t178;
t241 = t99.*t179;
t242 = t100.*t179;
t243 = t101.*t179;
t244 = t125.*t136.*t137;
t245 = t126.*t137.*t139;
t247 = t131+t169;
t252 = -t249;
t253 = -t251;
t254 = t39.*t248;
t255 = t39.*t136.*t169;
t256 = t39.*t249;
t257 = t39.*t137.*t169;
t258 = t39.*t139.*t169;
t259 = t7.*t136.*t169.*(-1.0./2.4e+1);
t260 = t7.*t249.*(-1.0./2.4e+1);
t261 = t9.*t39.*t127.*t135.*t147;
t262 = t9.*t39.*t127.*t138.*t147;
t263 = t7.*t9.*t127.*t138.*t147.*(-1.0./2.4e+1);
t264 = t95.*t248;
t265 = t95.*t136.*t169;
t266 = t95.*t249;
t267 = t95.*t137.*t169;
t268 = t95.*t139.*t169;
t269 = t140.*t176;
t270 = t140.*t177;
t271 = t140.*t178;
t272 = t140.*t179;
t273 = t99.*t248;
t274 = t100.*t248;
t275 = t101.*t248;
t276 = t99.*t136.*t169;
t277 = t99.*t249;
t280 = t100.*t136.*t169;
t281 = t100.*t249;
t282 = t99.*t137.*t169;
t283 = t100.*t137.*t169;
t284 = t101.*t136.*t169;
t285 = t101.*t249;
t286 = t101.*t137.*t169;
t287 = t99.*t139.*t169;
t288 = t100.*t139.*t169;
t289 = t101.*t139.*t169;
t290 = t9.*t95.*t127.*t135.*t147;
t291 = t9.*t95.*t127.*t138.*t147;
t300 = t9.*t99.*t127.*t135.*t147;
t301 = t9.*t100.*t127.*t135.*t147;
t302 = t9.*t101.*t127.*t135.*t147;
t303 = t9.*t99.*t127.*t138.*t147;
t305 = t9.*t100.*t127.*t138.*t147;
t306 = t9.*t101.*t127.*t138.*t147;
t316 = t135.*t137.*t150;
t317 = t137.*t138.*t150;
t318 = t135.*t137.*t154;
t319 = t137.*t138.*t154;
t320 = t135.*t137.*t159;
t321 = t135.*t137.*t160;
t322 = t137.*t138.*t159;
t323 = t137.*t138.*t160;
t325 = t135.*t137.*t163;
t327 = t137.*t138.*t163;
t368 = t170+t248;
t246 = -t244;
t278 = -t265;
t279 = t95.*t252;
t292 = -t269;
t293 = -t272;
t294 = t99.*t252;
t295 = -t280;
t296 = t100.*t252;
t297 = -t284;
t298 = t101.*t252;
t299 = -t287;
t304 = -t291;
t307 = -t300;
t308 = -t305;
t309 = -t306;
t310 = t140.*t205;
t311 = t140.*t206;
t312 = t140.*t207;
t313 = t140.*t204;
t314 = t7.*t272.*(-1.0./2.4e+1);
t315 = t7.*t269.*(-1.0./2.4e+1);
t324 = -t318;
t326 = -t319;
t328 = t140.*t223;
t329 = t140.*t224;
t330 = t140.*t225;
t331 = t140.*t222;
t332 = t140.*t235;
t333 = t140.*t236;
t334 = t140.*t237;
t335 = t140.*t238;
t336 = t140.*t239;
t337 = t140.*t240;
t338 = t140.*t241;
t340 = t140.*t242;
t341 = t140.*t243;
t342 = t140.*t232;
t344 = t140.*t233;
t345 = t140.*t234;
t352 = t140.*t247;
t353 = t39.*t137.*t247;
t354 = t95.*t137.*t247;
t355 = t99.*t137.*t247;
t356 = t100.*t137.*t247;
t357 = t101.*t137.*t247;
t358 = t148+t258;
t359 = t149+t259;
t360 = t156+t268;
t361 = t153+t276;
t362 = t155+t288;
t365 = t161+t289;
t369 = t135.*t137.*t247;
t370 = t137.*t138.*t247;
t371 = t168+t252;
t379 = t173+t254;
t380 = t172+t260;
t405 = t175+t264;
t407 = t177+t271;
t408 = t178+t270;
t409 = t183+t273;
t410 = t184+t274;
t411 = t185+t275;
t429 = t143+t186+t198;
t430 = t144+t188+t200;
t431 = t145+t190+t202;
t436 = t151+t210+t211;
t461 = t164+t220+t221;
t462 = t165+t226+t228;
t463 = t166+t227+t229;
t464 = t167+t230+t231;
t480 = t136.*t137.*t368;
t483 = t39.*t136.*t140.*t368;
t484 = t39.*t137.*t139.*t368;
t485 = t7.*t136.*t140.*t368.*(-1.0./2.4e+1);
t486 = t7.*t137.*t139.*t368.*(-1.0./2.4e+1);
t492 = t95.*t136.*t140.*t368;
t493 = t95.*t137.*t139.*t368;
t495 = t99.*t136.*t140.*t368;
t496 = t99.*t137.*t139.*t368;
t499 = t100.*t136.*t140.*t368;
t500 = t100.*t137.*t139.*t368;
t501 = t101.*t136.*t140.*t368;
t502 = t101.*t137.*t139.*t368;
t559 = t137.*t204.*t368;
t560 = t137.*t206.*t368;
t561 = t7.*t137.*t176.*t368.*(-1.0./2.4e+1);
t565 = t137.*t222.*t368;
t566 = t137.*t224.*t368;
t567 = t137.*t232.*t368;
t569 = t137.*t233.*t368;
t570 = t137.*t234.*t368;
t571 = t137.*t236.*t368;
t573 = t137.*t238.*t368;
t574 = t137.*t240.*t368;
t339 = -t330;
t343 = -t331;
t346 = -t338;
t347 = -t340;
t348 = -t341;
t349 = -t342;
t350 = -t344;
t351 = -t345;
t363 = t158+t278;
t364 = t152+t299;
t366 = t157+t295;
t367 = t162+t297;
t372 = -t370;
t373 = t135.*t353;
t374 = t39.*t135.*t352;
t375 = t138.*t353;
t376 = t39.*t138.*t352;
t377 = t7.*t135.*t352.*(-1.0./2.4e+1);
t378 = t7.*t370.*(-1.0./2.4e+1);
t381 = t135.*t354;
t382 = t95.*t135.*t352;
t383 = t138.*t354;
t384 = t95.*t138.*t352;
t385 = t135.*t355;
t386 = t135.*t356;
t387 = t135.*t357;
t388 = t99.*t135.*t352;
t389 = t138.*t355;
t392 = t100.*t135.*t352;
t393 = t138.*t356;
t394 = t101.*t135.*t352;
t395 = t138.*t357;
t396 = t99.*t138.*t352;
t397 = t100.*t138.*t352;
t398 = t101.*t138.*t352;
t406 = t174+t279;
t412 = t176+t293;
t413 = t179+t292;
t414 = t180+t294;
t415 = t181+t296;
t416 = t182+t298;
t417 = Ta1_2.*t408;
t418 = Ta1_3.*t407;
t419 = Ta2_2.*t408;
t420 = Ta2_3.*t407;
t421 = Ta3_2.*t408;
t422 = Ta3_3.*t407;
t432 = t205+t311;
t433 = t206+t310;
t434 = t204+t314;
t435 = t207+t315;
t437 = t223+t329;
t438 = t224+t328;
t441 = t235+t333;
t442 = t236+t332;
t443 = t237+t335;
t444 = t238+t334;
t445 = t239+t337;
t446 = t240+t336;
t453 = t125.*t407;
t454 = t126.*t408;
t465 = t137.*t139.*t358;
t466 = t136.*t137.*t359;
t468 = t137.*t139.*t360;
t469 = t136.*t137.*t361;
t471 = t137.*t139.*t362;
t475 = t137.*t139.*t365;
t481 = t137.*t139.*t371;
t487 = t39.*t136.*t137.*t371;
t488 = t39.*t139.*t140.*t371;
t489 = t7.*t136.*t137.*t371.*(-1.0./2.4e+1);
t490 = t137.*t139.*t379;
t491 = t136.*t137.*t380;
t494 = t95.*t136.*t137.*t371;
t497 = -t492;
t498 = -t493;
t503 = t95.*t139.*t140.*t371;
t504 = t99.*t136.*t137.*t371;
t506 = t100.*t136.*t137.*t371;
t507 = t101.*t136.*t137.*t371;
t508 = -t495;
t509 = -t499;
t510 = -t500;
t511 = -t501;
t512 = -t502;
t513 = t99.*t139.*t140.*t371;
t514 = t100.*t139.*t140.*t371;
t515 = t101.*t139.*t140.*t371;
t518 = t171+t245+t246;
t519 = t137.*t139.*t405;
t521 = t137.*t139.*t409;
t522 = t137.*t139.*t410;
t523 = t137.*t139.*t411;
t529 = t137.*t148.*t407;
t530 = t137.*t149.*t408;
t531 = t6.*t9.*t136.*t137.*t407.*(-1.0./6.0);
t532 = t6.*t9.*t137.*t139.*t408.*(-1.0./6.0);
t535 = t137.*t152.*t407;
t536 = t137.*t153.*t408;
t537 = t137.*t155.*t407;
t538 = t137.*t156.*t407;
t539 = t137.*t157.*t408;
t540 = t137.*t158.*t408;
t542 = t137.*t161.*t407;
t544 = t137.*t162.*t408;
t562 = t137.*t205.*t371;
t563 = t137.*t207.*t371;
t564 = t7.*t137.*t179.*t371.*(-1.0./2.4e+1);
t568 = -t565;
t572 = t137.*t223.*t371;
t575 = t137.*t225.*t371;
t576 = -t569;
t577 = -t570;
t578 = t137.*t235.*t371;
t579 = -t571;
t580 = t137.*t237.*t371;
t581 = t137.*t239.*t371;
t582 = t137.*t241.*t371;
t584 = t137.*t242.*t371;
t585 = t137.*t243.*t371;
t589 = t358.*t408;
t590 = t359.*t407;
t593 = t360.*t408;
t594 = t361.*t407;
t595 = t362.*t408;
t600 = t365.*t408;
t609 = t368.*t407;
t610 = t371.*t408;
t613 = t379.*t408;
t616 = t380.*t407;
t629 = t405.*t408;
t639 = t408.*t409;
t647 = t408.*t410;
t650 = t408.*t411;
t390 = -t382;
t391 = -t383;
t399 = -t389;
t400 = -t392;
t401 = -t393;
t402 = -t394;
t403 = -t395;
t404 = -t396;
t423 = Ta1_2.*t413;
t424 = Ta1_3.*t412;
t425 = Ta2_2.*t413;
t426 = Ta2_3.*t412;
t427 = Ta3_2.*t413;
t428 = Ta3_3.*t412;
t439 = t222+t339;
t440 = t225+t343;
t447 = t232+t346;
t448 = t241+t349;
t449 = t233+t347;
t450 = t242+t350;
t451 = t234+t348;
t452 = t243+t351;
t455 = t125.*t413;
t456 = -t453;
t457 = t126.*t412;
t458 = -t454;
t467 = -t465;
t470 = t136.*t137.*t363;
t472 = -t468;
t473 = -t469;
t474 = t137.*t139.*t364;
t476 = t136.*t137.*t366;
t477 = -t471;
t478 = t136.*t137.*t367;
t479 = -t475;
t482 = -t481;
t505 = -t494;
t516 = -t506;
t517 = -t507;
t520 = t136.*t137.*t406;
t524 = t136.*t137.*t414;
t525 = t136.*t137.*t415;
t526 = t136.*t137.*t416;
t527 = -t521;
t533 = t137.*t148.*t413;
t534 = t137.*t149.*t412;
t541 = t137.*t152.*t413;
t543 = t137.*t153.*t412;
t545 = t137.*t155.*t413;
t546 = -t537;
t547 = t137.*t156.*t413;
t548 = -t538;
t549 = t137.*t157.*t412;
t550 = -t539;
t551 = t137.*t158.*t412;
t552 = -t540;
t554 = t137.*t161.*t413;
t555 = -t542;
t557 = t137.*t162.*t412;
t558 = -t544;
t583 = -t575;
t586 = -t578;
t587 = -t584;
t588 = -t585;
t591 = t358.*t412;
t592 = t359.*t413;
t596 = t363.*t407;
t597 = t360.*t412;
t598 = t364.*t408;
t599 = t361.*t413;
t601 = t366.*t407;
t602 = t362.*t412;
t603 = t363.*t413;
t604 = t364.*t412;
t605 = t367.*t407;
t606 = t365.*t412;
t607 = t366.*t413;
t608 = t367.*t413;
t611 = t368.*t413;
t612 = t371.*t412;
t614 = t368.*t432;
t615 = t368.*t433;
t617 = t368.*t434;
t618 = t368.*t435;
t619 = t379.*t412;
t620 = t371.*t432;
t621 = t371.*t433;
t622 = -t613;
t623 = t380.*t413;
t624 = t371.*t434;
t625 = t371.*t435;
t626 = -t616;
t630 = t368.*t437;
t631 = t368.*t438;
t632 = t406.*t407;
t633 = t405.*t412;
t636 = t371.*t437;
t637 = t371.*t438;
t638 = -t629;
t640 = t368.*t441;
t641 = t368.*t442;
t642 = t406.*t413;
t648 = t368.*t443;
t649 = t368.*t444;
t651 = t368.*t445;
t652 = t368.*t446;
t653 = t407.*t414;
t654 = t409.*t412;
t657 = t371.*t441;
t658 = t371.*t442;
t661 = t407.*t415;
t662 = t410.*t412;
t665 = t371.*t443;
t666 = t371.*t444;
t667 = -t647;
t668 = t407.*t416;
t669 = t411.*t412;
t672 = t371.*t445;
t673 = t371.*t446;
t674 = -t650;
t675 = t413.*t414;
t680 = t413.*t415;
t685 = t413.*t416;
t704 = t150+t486+t489+t490+t491;
t459 = -t455;
t460 = -t457;
t528 = -t524;
t553 = -t541;
t556 = -t543;
t627 = -t617;
t628 = -t625;
t634 = t368.*t439;
t635 = t368.*t440;
t643 = t371.*t439;
t644 = t371.*t440;
t645 = -t632;
t655 = t368.*t447;
t656 = t368.*t448;
t659 = -t641;
t663 = t368.*t449;
t664 = t368.*t450;
t670 = t368.*t451;
t671 = t368.*t452;
t676 = t371.*t447;
t677 = t371.*t448;
t678 = -t654;
t679 = -t657;
t681 = t371.*t449;
t682 = t371.*t450;
t683 = -t661;
t686 = t371.*t451;
t687 = t371.*t452;
t688 = -t668;
t690 = -t675;
t693 = t187+t418+t423;
t694 = t189+t420+t425;
t695 = t191+t422+t427;
t696 = t199+t417+t424;
t697 = t201+t419+t426;
t698 = t203+t421+t428;
t701 = t352+t480+t482;
t702 = t369+t610+t611;
t703 = t372+t609+t612;
w_imu = [Tw1_1.*t701+Tw1_2.*t702+Tw1_3.*t703+cwbias3_1.*t31+cwbias2_1.*t50+cwbias1_1.*t63;Tw2_1.*t701+Tw2_2.*t702+Tw2_3.*t703+cwbias3_2.*t31+cwbias2_2.*t50+cwbias1_2.*t63;Tw3_1.*t701+Tw3_2.*t702+Tw3_3.*t703+cwbias3_3.*t31+cwbias2_3.*t50+cwbias1_3.*t63];
if nargout > 1
    a_imu = [cabias3_1.*t31+cabias2_1.*t50+cabias1_1.*t63+t130.*t429-t125.*t693-t126.*t696;cabias3_2.*t31+cabias2_2.*t50+cabias1_2.*t63+t130.*t430-t125.*t694-t126.*t697;cabias3_3.*t31+cabias2_3.*t50+cabias1_3.*t63+t130.*t431-t125.*t695-t126.*t698];
end
if nargout > 2
    t705 = t160+t498+t505+t519+t520;
    t707 = t159+t510+t516+t522+t525;
    t708 = t163+t512+t517+t523+t526;
    t709 = t257+t353+t466+t467+t485+t488;
    t710 = t267+t354+t470+t472+t497+t503;
    t711 = t282+t355+t473+t474+t508+t513;
    t712 = t283+t356+t476+t477+t509+t514;
    t713 = t286+t357+t478+t479+t511+t515;
    t714 = t261+t377+t561+t562+t589+t592;
    t715 = t263+t376+t560+t564+t590+t591;
    t718 = t317+t373+t531+t534+t618+t621;
    t719 = t316+t378+t532+t533+t614+t624;
    t720 = t290+t390+t568+t572+t593+t603;
    t721 = t304+t384+t566+t583+t596+t597;
    t722 = t307+t388+t567+t586+t598+t599;
    t723 = t303+t404+t579+t582+t594+t604;
    t724 = t301+t400+t576+t580+t595+t607;
    t725 = t308+t397+t573+t587+t601+t602;
    t726 = t302+t402+t577+t581+t600+t608;
    t727 = t309+t398+t574+t588+t605+t606;
    t646 = -t634;
    t660 = -t644;
    t684 = -t663;
    t689 = -t670;
    t691 = -t682;
    t692 = -t687;
    t699 = t250+t458+t459;
    t700 = t253+t456+t460;
    t706 = t154+t496+t504+t527+t528;
    t716 = t208+t615+t622+t623+t628;
    t717 = t209+t619+t620+t626+t627;
    t730 = t212+t639+t659+t677+t690;
    t731 = t213+t653+t655+t678+t679;
    t736 = t323+t381+t548+t551+t635+t637;
    t737 = t321+t391+t547+t552+t630+t643;
    t738 = t326+t385+t535+t556+t656+t658;
    t739 = t322+t386+t546+t549+t664+t666;
    t740 = t324+t399+t536+t553+t640+t676;
    t741 = t320+t401+t545+t550+t648+t681;
    t742 = t327+t387+t555+t557+t671+t673;
    t743 = t325+t403+t554+t558+t651+t686;
    t728 = t215+t631+t638+t642+t660;
    t729 = t217+t633+t636+t645+t646;
    t732 = t214+t649+t667+t680+t691;
    t733 = t216+t662+t665+t683+t684;
    t734 = t218+t652+t674+t685+t692;
    t735 = t219+t669+t672+t688+t689;
    w_imu_jac = reshape([Tw1_1.*t464+Tw1_2.*t743-Tw1_3.*t742,Tw2_1.*t464+Tw2_2.*t743-Tw2_3.*t742,Tw3_1.*t464+Tw3_2.*t743-Tw3_3.*t742,-Tw1_1.*t462+Tw1_3.*t739-Tw1_2.*t741,-Tw2_1.*t462+Tw2_3.*t739-Tw2_2.*t741,-Tw3_1.*t462+Tw3_3.*t739-Tw3_2.*t741,-Tw1_1.*t461-Tw1_3.*t738-Tw1_2.*(t318+t389-t536+t541-t640-t676),-Tw2_1.*t461-Tw2_3.*t738-Tw2_2.*(t318+t389-t536+t541-t640-t676),-Tw3_1.*t461-Tw3_3.*t738-Tw3_2.*(t318+t389-t536+t541-t640-t676),Tw1_1.*t463+Tw1_2.*t737-Tw1_3.*t736,Tw2_1.*t463+Tw2_2.*t737-Tw2_3.*t736,Tw3_1.*t463+Tw3_2.*t737-Tw3_3.*t736,Tw1_1.*t436+Tw1_2.*t719-Tw1_3.*t718,Tw2_1.*t436+Tw2_2.*t719-Tw2_3.*t718,Tw3_1.*t436+Tw3_2.*t719-Tw3_3.*t718,Tw1_1.*t708+Tw1_2.*t734-Tw1_3.*t735,Tw2_1.*t708+Tw2_2.*t734-Tw2_3.*t735,Tw3_1.*t708+Tw3_2.*t734-Tw3_3.*t735,-Tw1_1.*t707-Tw1_2.*t732+Tw1_3.*t733,-Tw2_1.*t707-Tw2_2.*t732+Tw2_3.*t733,-Tw3_1.*t707-Tw3_2.*t732+Tw3_3.*t733,-Tw1_1.*t706-Tw1_2.*t730+Tw1_3.*t731,-Tw2_1.*t706-Tw2_2.*t730+Tw2_3.*t731,-Tw3_1.*t706-Tw3_2.*t730+Tw3_3.*t731,Tw1_1.*t705+Tw1_2.*t728-Tw1_3.*t729,Tw2_1.*t705+Tw2_2.*t728-Tw2_3.*t729,Tw3_1.*t705+Tw3_2.*t728-Tw3_3.*t729,Tw1_1.*t704+Tw1_2.*t716-Tw1_3.*t717,Tw2_1.*t704+Tw2_2.*t716-Tw2_3.*t717,Tw3_1.*t704+Tw3_2.*t716-Tw3_3.*t717,Tw1_1.*t713+Tw1_2.*t726+Tw1_3.*t727,Tw2_1.*t713+Tw2_2.*t726+Tw2_3.*t727,Tw3_1.*t713+Tw3_2.*t726+Tw3_3.*t727,-Tw1_1.*t712-Tw1_2.*t724-Tw1_3.*t725,-Tw2_1.*t712-Tw2_2.*t724-Tw2_3.*t725,-Tw3_1.*t712-Tw3_2.*t724-Tw3_3.*t725,Tw1_1.*t711-Tw1_2.*t722-Tw1_3.*t723,Tw2_1.*t711-Tw2_2.*t722-Tw2_3.*t723,Tw3_1.*t711-Tw3_2.*t722-Tw3_3.*t723,Tw1_1.*t710+Tw1_2.*t720+Tw1_3.*t721,Tw2_1.*t710+Tw2_2.*t720+Tw2_3.*t721,Tw3_1.*t710+Tw3_2.*t720+Tw3_3.*t721,Tw1_1.*t709+Tw1_2.*t714+Tw1_3.*t715,Tw2_1.*t709+Tw2_2.*t714+Tw2_3.*t715,Tw3_1.*t709+Tw3_2.*t714+Tw3_3.*t715,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t701,0.0,0.0,0.0,t701,0.0,0.0,0.0,t701,t702,0.0,0.0,0.0,t702,0.0,0.0,0.0,t702,t703,0.0,0.0,0.0,t703,0.0,0.0,0.0,t703,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[3,71]);
end
if nargout > 3
    a_imu_jac = reshape([-t130.*(Ta1_3.*t101.*t135.*t137+Ta1_2.*t101.*t137.*t138)-t125.*(Ta1_2.*t445-Ta1_3.*t452)+t126.*(Ta1_3.*t446-Ta1_2.*t451),-t130.*(Ta2_3.*t101.*t135.*t137+Ta2_2.*t101.*t137.*t138)-t125.*(Ta2_2.*t445-Ta2_3.*t452)+t126.*(Ta2_3.*t446-Ta2_2.*t451),-t130.*(Ta3_3.*t101.*t135.*t137+Ta3_2.*t101.*t137.*t138)-t125.*(Ta3_2.*t445-Ta3_3.*t452)+t126.*(Ta3_3.*t446-Ta3_2.*t451),t130.*(Ta1_3.*t100.*t135.*t137+Ta1_2.*t100.*t137.*t138)+t125.*(Ta1_2.*t443-Ta1_3.*t450)-t126.*(Ta1_3.*t444-Ta1_2.*t449),t130.*(Ta2_3.*t100.*t135.*t137+Ta2_2.*t100.*t137.*t138)+t125.*(Ta2_2.*t443-Ta2_3.*t450)-t126.*(Ta2_3.*t444-Ta2_2.*t449),t130.*(Ta3_3.*t100.*t135.*t137+Ta3_2.*t100.*t137.*t138)+t125.*(Ta3_2.*t443-Ta3_3.*t450)-t126.*(Ta3_3.*t444-Ta3_2.*t449),-t130.*(Ta1_3.*t99.*t135.*t137+Ta1_2.*t99.*t137.*t138)-t125.*(Ta1_2.*t441-Ta1_3.*t448)+t126.*(Ta1_3.*t442-Ta1_2.*t447),-t130.*(Ta2_3.*t99.*t135.*t137+Ta2_2.*t99.*t137.*t138)-t125.*(Ta2_2.*t441-Ta2_3.*t448)+t126.*(Ta2_3.*t442-Ta2_2.*t447),-t130.*(Ta3_3.*t99.*t135.*t137+Ta3_2.*t99.*t137.*t138)-t125.*(Ta3_2.*t441-Ta3_3.*t448)+t126.*(Ta3_3.*t442-Ta3_2.*t447),-t130.*(Ta1_3.*t95.*t135.*t137+Ta1_2.*t95.*t137.*t138)-t125.*(Ta1_2.*t437-Ta1_3.*t440)-t126.*(Ta1_2.*t439-Ta1_3.*t438),-t130.*(Ta2_3.*t95.*t135.*t137+Ta2_2.*t95.*t137.*t138)-t125.*(Ta2_2.*t437-Ta2_3.*t440)-t126.*(Ta2_2.*t439-Ta2_3.*t438),-t130.*(Ta3_3.*t95.*t135.*t137+Ta3_2.*t95.*t137.*t138)-t125.*(Ta3_2.*t437-Ta3_3.*t440)-t126.*(Ta3_2.*t439-Ta3_3.*t438),-t130.*(Ta1_3.*t39.*t135.*t137+Ta1_2.*t39.*t137.*t138)-t125.*(Ta1_2.*t432-Ta1_3.*t435)-t126.*(Ta1_2.*t434-Ta1_3.*t433),-t130.*(Ta2_3.*t39.*t135.*t137+Ta2_2.*t39.*t137.*t138)-t125.*(Ta2_2.*t432-Ta2_3.*t435)-t126.*(Ta2_2.*t434-Ta2_3.*t433),-t130.*(Ta3_3.*t39.*t135.*t137+Ta3_2.*t39.*t137.*t138)-t125.*(Ta3_2.*t432-Ta3_3.*t435)-t126.*(Ta3_2.*t434-Ta3_3.*t433),t126.*(Ta1_3.*t445+Ta1_2.*t452+t101.*t187)-t125.*(Ta1_2.*t446+Ta1_3.*t451+t101.*t199),t126.*(Ta2_3.*t445+Ta2_2.*t452+t101.*t189)-t125.*(Ta2_2.*t446+Ta2_3.*t451+t101.*t201),t126.*(Ta3_3.*t445+Ta3_2.*t452+t101.*t191)-t125.*(Ta3_2.*t446+Ta3_3.*t451+t101.*t203),-t126.*(Ta1_3.*t443+Ta1_2.*t450+t100.*t187)+t125.*(Ta1_2.*t444+Ta1_3.*t449+t100.*t199),-t126.*(Ta2_3.*t443+Ta2_2.*t450+t100.*t189)+t125.*(Ta2_2.*t444+Ta2_3.*t449+t100.*t201),-t126.*(Ta3_3.*t443+Ta3_2.*t450+t100.*t191)+t125.*(Ta3_2.*t444+Ta3_3.*t449+t100.*t203),t126.*(Ta1_3.*t441+Ta1_2.*t448+t99.*t187)-t125.*(Ta1_2.*t442+Ta1_3.*t447+t99.*t199),t126.*(Ta2_3.*t441+Ta2_2.*t448+t99.*t189)-t125.*(Ta2_2.*t442+Ta2_3.*t447+t99.*t201),t126.*(Ta3_3.*t441+Ta3_2.*t448+t99.*t191)-t125.*(Ta3_2.*t442+Ta3_3.*t447+t99.*t203),t126.*(Ta1_3.*t437+Ta1_2.*t440+t95.*t187)-t125.*(Ta1_2.*t438+Ta1_3.*t439+t95.*t199),t126.*(Ta2_3.*t437+Ta2_2.*t440+t95.*t189)-t125.*(Ta2_2.*t438+Ta2_3.*t439+t95.*t201),t126.*(Ta3_3.*t437+Ta3_2.*t440+t95.*t191)-t125.*(Ta3_2.*t438+Ta3_3.*t439+t95.*t203),-t125.*(Ta1_2.*t433+Ta1_3.*t434-(t7.*t193)./2.4e+1)+t126.*(Ta1_3.*t432+Ta1_2.*t435+t39.*t187),-t125.*(Ta2_2.*t433+Ta2_3.*t434-(t7.*t195)./2.4e+1)+t126.*(Ta2_3.*t432+Ta2_2.*t435+t39.*t189),-t125.*(Ta3_2.*t433+Ta3_3.*t434-(t7.*t197)./2.4e+1)+t126.*(Ta3_3.*t432+Ta3_2.*t435+t39.*t191),t125.*(Ta1_2.*t137.*t234-Ta1_3.*t137.*t240+t101.*t136.*t143)-t126.*(Ta1_2.*t137.*t239-Ta1_3.*t137.*t243+t101.*t139.*t143)+t130.*(Ta1_1.*t101.*t137-Ta1_2.*t101.*t135.*t140+Ta1_3.*t101.*t138.*t140),t125.*(Ta2_2.*t137.*t234-Ta2_3.*t137.*t240+t101.*t136.*t144)-t126.*(Ta2_2.*t137.*t239-Ta2_3.*t137.*t243+t101.*t139.*t144)+t130.*(Ta2_1.*t101.*t137-Ta2_2.*t101.*t135.*t140+Ta2_3.*t101.*t138.*t140),t125.*(Ta3_2.*t137.*t234-Ta3_3.*t137.*t240+t101.*t136.*t145)-t126.*(Ta3_2.*t137.*t239-Ta3_3.*t137.*t243+t101.*t139.*t145)+t130.*(Ta3_1.*t101.*t137-Ta3_2.*t101.*t135.*t140+Ta3_3.*t101.*t138.*t140),-t125.*(Ta1_2.*t137.*t233-Ta1_3.*t137.*t238+t100.*t136.*t143)+t126.*(Ta1_2.*t137.*t237-Ta1_3.*t137.*t242+t100.*t139.*t143)-t130.*(Ta1_1.*t100.*t137-Ta1_2.*t100.*t135.*t140+Ta1_3.*t100.*t138.*t140),-t125.*(Ta2_2.*t137.*t233-Ta2_3.*t137.*t238+t100.*t136.*t144)+t126.*(Ta2_2.*t137.*t237-Ta2_3.*t137.*t242+t100.*t139.*t144)-t130.*(Ta2_1.*t100.*t137-Ta2_2.*t100.*t135.*t140+Ta2_3.*t100.*t138.*t140),-t125.*(Ta3_2.*t137.*t233-Ta3_3.*t137.*t238+t100.*t136.*t145)+t126.*(Ta3_2.*t137.*t237-Ta3_3.*t137.*t242+t100.*t139.*t145)-t130.*(Ta3_1.*t100.*t137-Ta3_2.*t100.*t135.*t140+Ta3_3.*t100.*t138.*t140),t125.*(Ta1_2.*t137.*t232-Ta1_3.*t137.*t236+t99.*t136.*t143)-t126.*(Ta1_2.*t137.*t235-Ta1_3.*t137.*t241+t99.*t139.*t143)+t130.*(Ta1_1.*t99.*t137-Ta1_2.*t99.*t135.*t140+Ta1_3.*t99.*t138.*t140),t125.*(Ta2_2.*t137.*t232-Ta2_3.*t137.*t236+t99.*t136.*t144)-t126.*(Ta2_2.*t137.*t235-Ta2_3.*t137.*t241+t99.*t139.*t144)+t130.*(Ta2_1.*t99.*t137-Ta2_2.*t99.*t135.*t140+Ta2_3.*t99.*t138.*t140),t125.*(Ta3_2.*t137.*t232-Ta3_3.*t137.*t236+t99.*t136.*t145)-t126.*(Ta3_2.*t137.*t235-Ta3_3.*t137.*t241+t99.*t139.*t145)+t130.*(Ta3_1.*t99.*t137-Ta3_2.*t99.*t135.*t140+Ta3_3.*t99.*t138.*t140),t125.*(Ta1_2.*t137.*t222-Ta1_3.*t137.*t224+t95.*t136.*t143)-t126.*(Ta1_2.*t137.*t223-Ta1_3.*t137.*t225+t95.*t139.*t143)+t130.*(Ta1_1.*t95.*t137-Ta1_2.*t95.*t135.*t140+Ta1_3.*t95.*t138.*t140),t125.*(Ta2_2.*t137.*t222-Ta2_3.*t137.*t224+t95.*t136.*t144)-t126.*(Ta2_2.*t137.*t223-Ta2_3.*t137.*t225+t95.*t139.*t144)+t130.*(Ta2_1.*t95.*t137-Ta2_2.*t95.*t135.*t140+Ta2_3.*t95.*t138.*t140),t125.*(Ta3_2.*t137.*t222-Ta3_3.*t137.*t224+t95.*t136.*t145)-t126.*(Ta3_2.*t137.*t223-Ta3_3.*t137.*t225+t95.*t139.*t145)+t130.*(Ta3_1.*t95.*t137-Ta3_2.*t95.*t135.*t140+Ta3_3.*t95.*t138.*t140),t125.*(Ta1_2.*t137.*t204+t39.*t136.*t143-(Ta1_3.*t7.*t137.*t178)./2.4e+1)-t126.*(Ta1_2.*t137.*t205+t39.*t139.*t143-(Ta1_3.*t7.*t137.*t179)./2.4e+1)+t130.*(Ta1_1.*t39.*t137-(Ta1_2.*t7.*t135.*t140)./2.4e+1+Ta1_3.*t39.*t138.*t140),t125.*(Ta2_2.*t137.*t204+t39.*t136.*t144-(Ta2_3.*t7.*t137.*t178)./2.4e+1)-t126.*(Ta2_2.*t137.*t205+t39.*t139.*t144-(Ta2_3.*t7.*t137.*t179)./2.4e+1)+t130.*(Ta2_1.*t39.*t137-(Ta2_2.*t7.*t135.*t140)./2.4e+1+Ta2_3.*t39.*t138.*t140),t125.*(Ta3_2.*t137.*t204+t39.*t136.*t145-(Ta3_3.*t7.*t137.*t178)./2.4e+1)-t126.*(Ta3_2.*t137.*t205+t39.*t139.*t145-(Ta3_3.*t7.*t137.*t179)./2.4e+1)+t130.*(Ta3_1.*t39.*t137-(Ta3_2.*t7.*t135.*t140)./2.4e+1+Ta3_3.*t39.*t138.*t140),t10.*t62.*t693,t10.*t62.*t694,t10.*t62.*t695,-t10.*t51.*t693,-t10.*t51.*t694,-t10.*t51.*t695,-t10.*t52.*t693,-t10.*t52.*t694,-t10.*t52.*t695,t10.*t49.*t693,t10.*t49.*t694,t10.*t49.*t695,t10.*t23.*t693,t10.*t23.*t694,t10.*t23.*t695,t10.*t62.*t429,t10.*t62.*t430,t10.*t62.*t431,-t10.*t51.*t429,-t10.*t51.*t430,-t10.*t51.*t431,-t10.*t52.*t429,-t10.*t52.*t430,-t10.*t52.*t431,t10.*t49.*t429,t10.*t49.*t430,t10.*t49.*t431,t10.*t23.*t429,t10.*t23.*t430,t10.*t23.*t431,t10.*t62.*t696,t10.*t62.*t697,t10.*t62.*t698,-t10.*t51.*t696,-t10.*t51.*t697,-t10.*t51.*t698,-t10.*t52.*t696,-t10.*t52.*t697,-t10.*t52.*t698,t10.*t49.*t696,t10.*t49.*t697,t10.*t49.*t698,t10.*t23.*t696,t10.*t23.*t697,t10.*t23.*t698,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,t63,0.0,0.0,t50,0.0,0.0,t31,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t518,0.0,0.0,0.0,t518,0.0,0.0,0.0,t518,t699,0.0,0.0,0.0,t699,0.0,0.0,0.0,t699,t700,0.0,0.0,0.0,t700,0.0,0.0,0.0,t700,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t693+g1.*t116.*t429,-t694+g1.*t116.*t430,-t695+g1.*t116.*t431,t193-t417-t424+g2.*t116.*t429,t195-t419-t426+g2.*t116.*t430,t197-t421-t428+g2.*t116.*t431],[3,71]);
end
