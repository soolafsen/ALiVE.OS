private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: lythium"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 ALiVE_mapCompositionType = "Woodland";
 if(tolower(_worldName) == "lythium") then {
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["jbad_structures\mosque_big\jbad_mosque_big_wall_corner_ruins.p3d","jbad_structures\mosque_big\jbad_mosque_big_wall_ruins.p3d","jbad_structures\afghan_houses\jbad_house3_ruins.p3d","lythiumenv\gbr_civ\panelpueblo13.p3d","jbad_misc\misc_interier\jbad_curtain.p3d","jbad_misc\misc_interier\jbad_curtain_mirrored.p3d","jbad_structures\walls\wall_l\jbad_wall_l_mosque_1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_2_ruins.p3d","ffaa_casas_af\ffaa_cubierto_madera.p3d","jbad_structures\afghan_houses_old\jbad_house_8_old_ruins.p3d","jbad_structures\afghan_houses_old\jbad_house_3_old_ruins.p3d","jbad_structures\afghan_house_a\a_mosque_small\jbad_a_mosque_small_1_ruins.p3d","lythiumenv\gbr_civ\panelpubli2.p3d","lythiumenv\gbr_civ\panelpubli17.p3d","lythiumenv\gbr_civ\panelpubli14.p3d","jbad_structures\afghan_houses\jbad_house6_ruins.p3d","jbad_structures\afghan_houses\jbad_house7_ruins.p3d","jbad_structures\afghan_houses\jbad_house8_ruins.p3d","jbad_structures\afghan_houses\jbad_house5_ruins.p3d","jbad_structures\afghan_houses_old\jbad_house_4_old_ruins.p3d","jbad_structures\afghan_houses_old\jbad_house_7_old_ruins.p3d","jbad_structures\afghan_house_a\a_mosque_small\jbad_a_mosque_small_2_ruins.p3d","jbad_structures\afghan_houses_old\jbad_house_6_old_ruins.p3d","jbad_misc\misc_a_buildingwip\jbad_cihly3.p3d","lythiumenv\gbr_civ\panelciuda1.p3d","jbad_misc\misc_market\jbad_counter.p3d","lythiumenv\gbr_civ\panelpubli4.p3d","lythiumenv\gbr_civ\panelpueblo6.p3d","lythiumenv\gbr_civ\panelpubli5.p3d","a3\structures_f\walls\mil_concretewall_f.p3d","lythiumenv\gbr_civ\panelgenerico13.p3d","lythiumenv\gbr_civ\panelgenerico11.p3d","lythiumenv\gbr_civ\panelpubli6.p3d","lythiumenv\gbr_civ\panelpubli19.p3d","a3\structures_f\ind\windpowerplant\powergenerator_f.p3d","a3\structures_f\training\shoot_house_tunnel_f.p3d","a3\structures_f\training\target_popup_moving_f.p3d","a3\structures_f\households\slum\cargo_house_slum_ruins_f.p3d","jbad_misc\misc_aircondition\jbad_aircond_big.p3d","jbad_misc\misc_roof\antennabigroof\jbad_antenna_big_roof.p3d","a3\structures_f\training\shoot_house_wall_long_f.p3d","a3\structures_f\naval\piers\pier_doubleside_f.p3d","a3\structures_f\households\addons\i_garage_v2_dam_f.p3d","lythiumenv\gbr_civ\panelpubli21.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_main_ruins.p3d","a3\structures_f\households\house_shop02\shop_02_v1_ruins_f.p3d","lythiumenv\gbr_civ\panelpubli23.p3d","a3\structures_f\ind\solarpowerplant\spp_mirror_f.p3d","lythiumenv\gbr_civ\panelpubli18.p3d","a3\structures_f\training\skeetmachine\skeet_clay_part01_orange_f.p3d","lythiumenv\gbr_civ\panelpubli12.p3d","a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d","lythiumenv\gbr_civ\panelpubli8.p3d","lythiumenv\gbr_civ\panelpubli13.p3d","lythiumenv\gbr_civ\panelpubli3.p3d","a3\structures_f\ind\airport\landmark_f.p3d","lythiumenv\gbr_civ\panellugar4.p3d","lythiumenv\gbr_civ\panelpubli9.p3d","lythiumenv\gbr_civ\panelpueblo17.p3d","a3\structures_f\households\stone_big\stone_housebig_v1_ruins_f.p3d","a3\structures_f\households\stone_small\stone_housesmall_v1_ruins_f.p3d","jbad_structures\bridges\jbad_kamenny_most30.p3d","a3\structures_f\households\wip\unfinished_building_01_ruins_f.p3d","a3\structures_f\bridges\bridge_concrete_f.p3d","lythiumenv\gbr_civ\panelgenerico.p3d","lythiumenv\gbr_civ\panelpubli7.p3d","lythiumenv\gbr_civ\panelgenerico7.p3d","lythiumenv\gbr_civ\panelpubli22.p3d","lythiumenv\gbr_civ\panelpubli.p3d","lythiumenv\gbr_civ\panelpubli16.p3d","lythiumenv\gbr_civ\panelgenerico2.p3d","a3\structures_f_epb\items\luggage\luggageheap_05_f.p3d","a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d","a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d","a3\structures_f_epb\items\luggage\luggageheap_02_f.p3d","jbad_misc\misc_a_buildingwip\jbad_koz.p3d","a3\structures_f_bootcamp\civ\sportsgrounds\tyrebarrier_01_black_f.p3d","lythiumenv\gbr_civ\panelpubli15.p3d","a3\structures_f\bridges\bridge_01_f.p3d","jbad_structures\afghan_houses_c\damageproxies\jbad_house_c_5_addon01.p3d","jbad_misc\misc_chairs\kitchen_chair_a\jbad_kitchen_chair_a.p3d","a3\structures_f\dominants\castle\castle_01_wall_09_f.p3d","a3\structures_f\dominants\castle\castle_01_tower_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_03_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_01_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_13_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_11_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_07_f.p3d","a3\structures_f\dominants\castle\castle_01_tower_ruins_f.p3d","a3\structures_f\dominants\castle\castle_01_wall_14_f.p3d","a3\structures_f_epc\civ\camping\sunshade_01_f.p3d","a3\structures_f_bootcamp\civ\sportsgrounds\tyrebarrier_01_line_x4_f.p3d","lythiumenv\gbr_civ\panelbase8.p3d","a3\structures_f_epc\items\electronics\device_assembled_f.p3d","jbad_structures\afghan_houses_c\jbad_house_c_4_ruins.p3d","jbad_structures\afghan_houses_old\jbad_house_9_old_ruins.p3d","jbad_structures\walls\wall_l\jbad_wall_l_mosque_2_dam.p3d","lythiumenv\gbr_civ\panelpueblo16.p3d","lythiumenv\gbr_civ\panelbase1.p3d","a3\structures_f\dominants\castle\castle_01_house_ruin_f.p3d","a3\structures_f\dominants\castle\castle_01_church_b_ruin_f.p3d","a3\structures_f\dominants\castle\castle_01_church_ruin_f.p3d","lythiumenv\gbr_civ\panelpueblo7.p3d","a3\structures_f\training\shoot_house_wall_f.p3d","lythiumenv\gbr_civ\panellugar1.p3d","jbad_structures\walls\wall_l\jbad_wall_l_mosque_2.p3d","lythiumenv\gbr_civ\panelgenerico5.p3d","lythiumenv\gbr_civ\panelgenerico6.p3d","lythiumenv\gbr_civ\panelgenerico4.p3d","lythiumenv\gbr_civ\panellugar.p3d","lythiumenv\gbr_civ\panelpueblo20.p3d","jbad_structures\afghan_houses_old\jbad_house_1_old_ruins.p3d","lythiumenv\gbr_civ\panelpueblo14.p3d","lythiumenv\gbr_civ\panelbase4.p3d","lythiumenv\gbr_civ\panelpueblo12.p3d","jbad_misc\misc_controltower\tv_a\jbad_tv_a.p3d","jbad_misc\misc_interier\jbad_pillow.p3d","jbad_misc\misc_interier\jbad_carpetv2.p3d","jbad_misc\misc_interier\jbad_vase.p3d","jbad_misc\misc_interier\jbad_carpet_2.p3d","jbad_misc\misc_interier\jbad_pillowv2.p3d","jbad_misc\misc_chairs\lobby_chair\jbad_lobby_chair.p3d","jbad_misc\misc_a_buildingwip\jbad_cihly2.p3d","jbad_misc\misc_decorations\flowers\jbad_flower_02.p3d","a3\structures_f\ind\factory\factory_conv2_ruins_f.p3d","jbad_structures\mil\jbad_mil_barracks_ruins.p3d","jbad_structures\walls\wall_l\jbad_wall_l_mosque_1_dam.p3d","a3\structures_f\households\wip\unfinished_building_02_ruins_f.p3d","jbad_misc\misc_interier\jbad_carpet.p3d","jbad_structures\afghan_houses_old\jbad_house_6_old_dam.p3d","lythiumenv\gbr_civ\panelpueblo18.p3d","jbad_misc\misc_a_buildingwip\jbad_cihly4.p3d","jbad_misc\misc_a_buildingwip\jbad_bedna.p3d","lythiumenv\gbr_civ\panellugar3.p3d","a3\structures_f\civ\camping\sleeping_bag_f.p3d","a3\structures_f\civ\camping\sleeping_bag_folded_f.p3d","jbad_misc\misc_roof\antennasmallroof\jbad_antenna_small_roof_1.p3d","a3\structures_f\mil\cargo\cargo_house_v2_f.p3d","jbad_structures\afghan_houses_c\damageproxies\jbad_house_c_5_addon02.p3d","jbad_misc\misc_a_buildingwip\jbad_cihly1.p3d","jbad_misc\misc_furniture\jbad_dkamna_uhli.p3d","lythiumenv\gbr_civ\panelpueblo19.p3d","lythiumenv\gbr_civ\panelbase12.p3d","lythiumenv\gbr_civ\memo2.p3d","lythiumenv\gbr_civ\panelbase.p3d","lythiumenv\gbr_civ\panelpueblo.p3d","jbad_structures\afghan_houses_old\jbad_house_3_old_dam.p3d","lythiumenv\gbr_civ\panelpueblo11.p3d","lythiumenv\gbr_civ\panellugar5.p3d","lythiumenv\gbr_civ\panelciuda.p3d","lythiumenv\gbr_civ\memo.p3d","a3\structures_f\ind\factory\factory_hopper_ruins_f.p3d","a3\structures_f\households\addons\addon_02_v1_ruins_f.p3d","a3\structures_f\ind\shed\shed_ind_ruins_f.p3d","lythiumenv\gbr_civ\hospital2.p3d","a3\structures_f\mil\bunker\bunker_f.p3d","a3\structures_f\households\house_big02\house_big_02_v1_ruins_f.p3d","a3\structures_f\households\house_small01\house_small_01_v1_ruins_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_shed_dam_f.p3d","a3\structures_f\households\house_small02\house_small_02_v1_ruins_f.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["a3\structures_f\mil\fortification\hbarrier_big_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_small_f.p3d","a3\structures_f\mil\fortification\hbarrier_1_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d","a3\structures_f\ind\transmitter_tower\tbox_f.p3d","a3\structures_f\mil\cargo\cargo_house_v3_f.p3d","a3\structures_f\mil\fortification\hbarrier_5_f.p3d","a3\structures_f\mil\fortification\hbarrier_3_f.p3d","a3\structures_f\mil\offices\miloffices_v1_f.p3d","a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d","jbad_misc\misc_com\jbad_com_tower.p3d","jbad_structures\mil\jbad_mil_barracks.p3d","a3\structures_f\ind\transmitter_tower\ttowersmall_2_f.p3d","lythiumenv\gbr_civ\panelgenerico3.p3d","a3\structures_f\mil\shelters\camonet_big_f.p3d","a3\structures_f\training\shoot_house_corner_f.p3d","a3\structures_f\ind\airport\airport_tower_f.p3d","jbad_structures\mil\jbad_mil_controltower.p3d","a3\structures_f\mil\fortification\hbarriertower_f.p3d","a3\structures_f\households\wip\unfinished_building_01_f.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\mil\cargo\cargo_patrol_v3_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v3_f.p3d","a3\structures_f\mil\cargo\medevac_house_v1_f.p3d","a3\structures_f_bootcamp\items\food\foodcontainer_01_f.p3d","a3\structures_f\mil\shelters\camonet_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v1_f.p3d","a3\structures_f\mil\cargo\cargo_patrol_v1_f.p3d","jbad_structures\mil\jbad_mil_house.p3d","lythiumenv\gbr_civ\panelpubli11.p3d","a3\structures_f\mil\fortification\hbarrierwall_corridor_f.p3d","a3\structures_f\research\research_house_v1_f.p3d","a3\structures_f\mil\cargo\medevac_hq_v1_f.p3d","a3\structures_f\mil\radar\radar_small_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_large_f.p3d","a3\structures_f\mil\cargo\cargo_house_v1_f.p3d","a3\structures_f\mil\barracks\u_barracks_v2_f.p3d"];
ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + ["jbad_structures\mil\jbad_mil_barracks.p3d","a3\structures_f\ind\airport\airport_tower_f.p3d","jbad_structures\mil\jbad_mil_controltower.p3d","a3\structures_f\mil\cargo\cargo_hq_v3_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v1_f.p3d","jbad_structures\mil\jbad_mil_house.p3d","a3\structures_f\mil\bagbunker\bagbunker_large_f.p3d","a3\structures_f\mil\barracks\u_barracks_v2_f.p3d"];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["a3\structures_f\mil\bagbunker\bagbunker_small_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_tower_f.p3d","a3\structures_f\mil\cargo\cargo_house_v3_f.p3d","a3\structures_f\mil\offices\miloffices_v1_f.p3d","jbad_structures\mil\jbad_mil_barracks.p3d","a3\structures_f\mil\shelters\camonet_big_f.p3d","a3\structures_f\ind\airport\airport_tower_f.p3d","jbad_structures\mil\jbad_mil_controltower.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\mil\cargo\cargo_patrol_v3_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v3_f.p3d","a3\structures_f\mil\cargo\medevac_house_v1_f.p3d","a3\structures_f_bootcamp\items\food\foodcontainer_01_f.p3d","a3\structures_f\mil\shelters\camonet_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v1_f.p3d","jbad_structures\mil\jbad_mil_house.p3d","a3\structures_f\mil\bagbunker\bagbunker_large_f.p3d","a3\structures_f\mil\barracks\u_barracks_v2_f.p3d"];
ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + ["a3\structures_f\mil\offices\miloffices_v1_f.p3d","jbad_structures\mil\jbad_mil_barracks.p3d","a3\structures_f\ind\airport\airport_tower_f.p3d","jbad_structures\mil\jbad_mil_controltower.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v3_f.p3d","a3\structures_f\mil\cargo\cargo_hq_v1_f.p3d","jbad_structures\mil\jbad_mil_house.p3d","a3\structures_f\mil\bagbunker\bagbunker_large_f.p3d","a3\structures_f\mil\barracks\u_barracks_v2_f.p3d"];
ALIVE_airBuildingTypes = ALIVE_airBuildingTypes + ["a3\structures_f\ind\airport\hangar_f.p3d","a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d","a3\structures_f\mil\tenthangar\tenthangar_v1_dam_f.p3d"];
ALIVE_militaryAirBuildingTypes = ALIVE_militaryAirBuildingTypes + ["a3\structures_f\ind\airport\hangar_f.p3d","a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d","a3\structures_f\mil\tenthangar\tenthangar_v1_dam_f.p3d"];
ALIVE_civilianAirBuildingTypes = ALIVE_civilianAirBuildingTypes + [];
ALIVE_heliBuildingTypes = ALIVE_heliBuildingTypes + ["a3\structures_f\mil\helipads\helipadsquare_f.p3d","a3\structures_f\mil\helipads\helipadcivil_f.p3d","a3\structures_f\mil\helipads\helipadcircle_f.p3d","a3\structures_f\mil\helipads\helipadrescue_f.p3d"];
ALIVE_militaryHeliBuildingTypes = ALIVE_militaryHeliBuildingTypes + ["a3\structures_f\mil\helipads\helipadsquare_f.p3d","a3\structures_f\mil\helipads\helipadcivil_f.p3d","a3\structures_f\mil\helipads\helipadcircle_f.p3d"];
ALIVE_civilianHeliBuildingTypes = ALIVE_civilianHeliBuildingTypes + ["a3\structures_f\mil\helipads\helipadsquare_f.p3d","a3\structures_f\mil\helipads\helipadrescue_f.p3d"];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["ffaa_casas_af\ffaa_casa_af_2.p3d","jbad_structures\afghan_houses\jbad_house6.p3d","jbad_structures\afghan_houses_old\jbad_house_3_old.p3d","jbad_structures\afghan_houses\jbad_house3.p3d","jbad_structures\afghan_houses\jbad_house_1.p3d","jbad_structures\afghan_houses_old\jbad_house_7_old.p3d","ffaa_casas_af\ffaa_casa_af_10.p3d","jbad_structures\afghan_houses_old\jbad_house_8_old.p3d","jbad_structures\afghan_houses\jbad_house2_basehide.p3d","jbad_structures\afghan_houses_old\jbad_house_4_old.p3d","a3\structures_f\households\slum\slum_house02_f.p3d","jbad_structures\afghan_houses\jbad_house8.p3d","jbad_structures\afghan_houses_old\jbad_house_1_old.p3d","jbad_structures\afghan_houses\jbad_house5_dam.p3d","jbad_structures\afghan_houses\jbad_house7.p3d","ffaa_casas_af\ffaa_casa_af_7.p3d","ffaa_casas_af\ffaa_casa_af_4_a.p3d","ffaa_casas_af\ffaa_casa_af_3.p3d","ffaa_casas_af\ffaa_casa_af_5.p3d","ffaa_casas_af\ffaa_casa_af_3_a.p3d","ffaa_casas_af\ffaa_casa_af_1.p3d","ffaa_casas_af\ffaa_casa_af_6.p3d","ffaa_casas_af\ffaa_casa_af_4.p3d","ffaa_casas_af\ffaa_casa_af_11.p3d","ffaa_casas_af\ffaa_casa_af_10_a.p3d","ffaa_casas_af\ffaa_casa_af_9.p3d","jbad_structures\afghan_houses\jbad_house5.p3d","a3\structures_f\households\slum\cargo_house_slum_f.p3d","jbad_structures\afghan_houses\jbad_house3_dam.p3d","ffaa_casas_af\ffaa_casa_urbana_1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v2.p3d","jbad_structures\afghan_houses_c\jbad_house_c_11.p3d","jbad_structures\afghan_houses_old\jbad_house_6_old.p3d","jbad_structures\afghan_houses\jbad_house8_dam.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_12.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v3.p3d","ffaa_casas_af\ffaa_casa_af_8.p3d","jbad_structures\afghan_house_a\a_mosque_small\jbad_a_mosque_small_1.p3d","ffaa_casas_af\ffaa_casa_urbana_5.p3d","jbad_structures\afghan_houses_c\jbad_house_c_4.p3d","jbad_structures\afghan_houses_c\jbad_house_c_3.p3d","jbad_structures\afghan_houses_c\jbad_house_c_2.p3d","jbad_structures\afghan_houses_c\jbad_house_c_10.p3d","jbad_structures\afghan_houses_c\jbad_house_c_9.p3d","jbad_structures\afghan_houses_c\jbad_house_c_1_v2.p3d","ffaa_casas_af\ffaa_casa_urbana_2.p3d","ffaa_casas_af\ffaa_casa_urbana_4.p3d","jbad_structures\afghan_houses\jbad_house7_dam.p3d","jbad_structures\afghan_houses_c\jbad_house_c_12_dam.p3d","ffaa_casas_af\ffaa_casa_urbana_7.p3d","ffaa_casas_af\ffaa_casa_urbana_6.p3d","ffaa_casas_af\ffaa_casa_urbana_7_a.p3d","ffaa_casas_af\ffaa_casa_urbana_8.p3d","ffaa_casas_af\ffaa_casa_sha_3.p3d","jbad_structures\afghan_house_a\a_villa\jbad_a_villa.p3d","ffaa_casas_af\ffaa_casa_sha_2.p3d","ffaa_casas_af\ffaa_casa_sha_1.p3d","jbad_structures\mosque_big\jbad_mosque_big_hq.p3d"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["ffaa_casas_af\ffaa_casa_af_2.p3d","jbad_structures\afghan_houses\jbad_house6.p3d","jbad_structures\afghan_houses\jbad_house3.p3d","ffaa_casas_af\ffaa_casa_af_10.p3d","jbad_structures\afghan_houses_old\jbad_house_8_old.p3d","jbad_structures\afghan_houses\jbad_house8.p3d","jbad_structures\afghan_houses\jbad_house5_dam.p3d","jbad_structures\afghan_houses\jbad_house7.p3d","ffaa_casas_af\ffaa_casa_af_4_a.p3d","ffaa_casas_af\ffaa_casa_af_5.p3d","ffaa_casas_af\ffaa_casa_af_1.p3d","ffaa_casas_af\ffaa_casa_af_10_a.p3d","ffaa_casas_af\ffaa_casa_af_9.p3d","jbad_structures\afghan_houses_old\jbad_house_6_old.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v3.p3d","ffaa_casas_af\ffaa_casa_af_8.p3d","ffaa_casas_af\ffaa_casa_urbana_5.p3d","jbad_structures\afghan_houses_c\jbad_house_c_4.p3d","jbad_structures\afghan_houses_c\jbad_house_c_3.p3d","jbad_structures\afghan_houses\jbad_house7_dam.p3d","a3\structures_f\civ\offices\offices_01_v1_f.p3d","a3\structures_f\ind\airport\airport_left_f.p3d","a3\structures_f\ind\airport\airport_right_f.p3d","jbad_structures\afghan_house_a\a_villa\jbad_a_villa.p3d","ffaa_casas_af\ffaa_casa_sha_2.p3d","jbad_structures\mosque_big\jbad_mosque_big_hq.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["ffaa_casas_af\ffaa_casa_af_2.p3d","jbad_structures\afghan_houses\jbad_house6.p3d","jbad_structures\afghan_houses_old\jbad_house_3_old.p3d","jbad_structures\afghan_houses\jbad_terrace.p3d","a3\structures_f\households\slum\slum_house03_f.p3d","jbad_structures\afghan_houses\jbad_house3.p3d","jbad_structures\afghan_houses_old\jbad_house_9_old.p3d","jbad_structures\afghan_houses\jbad_house_1.p3d","jbad_structures\afghan_houses_old\jbad_house_7_old.p3d","ffaa_casas_af\ffaa_casa_af_10.p3d","jbad_structures\afghan_houses_old\jbad_house_8_old.p3d","jbad_structures\afghan_houses\jbad_house2_basehide.p3d","jbad_structures\afghan_houses_old\jbad_house_4_old.p3d","a3\structures_f\households\slum\slum_house02_f.p3d","jbad_structures\afghan_houses\jbad_house8.p3d","jbad_structures\afghan_houses_old\jbad_house_1_old.p3d","a3\structures_f\dominants\castle\castle_01_step_f.p3d","a3\structures_f\naval\piers\pier_small_f.p3d","jbad_structures\afghan_houses\jbad_house5_dam.p3d","a3\structures_f\households\slum\slum_house01_f.p3d","jbad_structures\afghan_houses\damageproxies\house5_roof_1.p3d","jbad_structures\afghan_houses\jbad_house7.p3d","ffaa_casas_af\ffaa_casa_af_7.p3d","ffaa_casas_af\ffaa_casa_af_4_a.p3d","ffaa_casas_af\ffaa_casa_af_3.p3d","ffaa_casas_af\ffaa_casa_af_5.p3d","ffaa_casas_af\ffaa_casa_af_3_a.p3d","ffaa_casas_af\ffaa_casa_af_1.p3d","ffaa_casas_af\ffaa_casa_af_6.p3d","ffaa_casas_af\ffaa_casa_af_4.p3d","ffaa_casas_af\ffaa_casa_af_11.p3d","jbad_structures\afghan_house_a\a_mosque_small\jbad_a_mosque_small_2.p3d","ffaa_casas_af\ffaa_casa_af_10_a.p3d","ffaa_casas_af\ffaa_casa_af_9.p3d","jbad_structures\afghan_houses\jbad_house5.p3d","a3\structures_f\households\slum\cargo_house_slum_f.p3d","jbad_structures\ind\ind_garage01\jbad_ind_garage01.p3d","jbad_structures\afghan_houses\jbad_house3_dam.p3d","ffaa_casas_af\ffaa_casa_urbana_1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v2.p3d","jbad_structures\afghan_houses_c\jbad_house_c_11.p3d","jbad_structures\afghan_houses_old\jbad_house_6_old.p3d","a3\structures_f\training\shoot_house_panels_f.p3d","jbad_structures\afghan_houses\jbad_house8_dam.p3d","jbad_structures\ind\ind_shed\jbad_ind_shed_02.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_12.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v3.p3d","ffaa_casas_af\ffaa_casa_af_8.p3d","jbad_structures\afghan_house_a\a_mosque_small\jbad_a_mosque_small_1.p3d","ffaa_casas_af\ffaa_casa_urbana_5.p3d","jbad_structures\afghan_houses_c\jbad_house_c_4.p3d","jbad_structures\afghan_houses_c\jbad_house_c_3.p3d","jbad_structures\afghan_houses_c\jbad_house_c_2.p3d","jbad_structures\afghan_houses_c\jbad_house_c_10.p3d","a3\structures_f\households\slum\cargo_addon02_v1_f.p3d","jbad_structures\afghan_houses_c\jbad_house_c_9.p3d","jbad_structures\afghan_houses_c\jbad_house_c_1_v2.p3d","ffaa_casas_af\ffaa_casa_urbana_2.p3d","ffaa_casas_af\ffaa_casa_urbana_3.p3d","ffaa_casas_af\ffaa_casa_urbana_4.p3d","a3\structures_f\households\addons\i_garage_v1_dam_f.p3d","jbad_structures\afghan_house_a\a_minaret\jbad_a_minaret.p3d","jbad_structures\afghan_houses\jbad_house7_dam.p3d","a3\structures_f\households\addons\i_garage_v2_f.p3d","a3\structures_f\ind\carservice\carservice_f.p3d","jbad_structures\mil\jbad_mil_guardhouse.p3d","jbad_structures\afghan_houses_c\jbad_house_c_1.p3d","jbad_structures\afghan_houses_c\jbad_house_c_12_dam.p3d","jbad_structures\afghan_house_a\a_minaret\jbad_a_minaret_dam.p3d","jbad_structures\bridges\jbad_most_stred30.p3d","jbad_structures\ind\ind_fuelstation\jbad_ind_fuelstation_build.p3d","a3\structures_f\dominants\hospital\hospital_side2_f.p3d","lythiumenv\gbr_civ\hospital1.p3d","a3\structures_f\dominants\hospital\hospital_main_f.p3d","a3\structures_f\dominants\hospital\hospital_side1_f.p3d","a3\structures_f\mil\cargo\medevac_hq_v1_f.p3d","ffaa_casas_af\ffaa_casa_urbana_7.p3d","a3\structures_f\civ\offices\offices_01_v1_f.p3d","ffaa_casas_af\ffaa_casa_urbana_6.p3d","jbad_structures\generalstore\jbad_a_generalstore_01a.p3d","ffaa_casas_af\ffaa_casa_urbana_7_a.p3d","ffaa_casas_af\ffaa_casa_urbana_8.p3d","ffaa_casas_af\ffaa_casa_sha_3.p3d","jbad_structures\afghan_house_a\a_stationhouse\jbad_a_stationhouse.p3d","lythiumenv\gbr_civ\cartelaeropuerto1.p3d","a3\structures_f\ind\airport\airport_left_f.p3d","a3\structures_f\ind\airport\airport_right_f.p3d","jbad_structures\afghan_house_a\a_villa\jbad_a_villa.p3d","jbad_structures\afghan_houses_c\jbad_house_c_5_v1_dam.p3d","jbad_misc\misc_generalstore\jbad_icebox.p3d","jbad_structures\afghan_house_a\a_minaret_porto\jbad_a_minaret_porto.p3d","ffaa_casas_af\ffaa_casa_sha_2.p3d","ffaa_casas_af\ffaa_casa_sha_1.p3d","ffaa_casas_af\ffaa_casa_barracon_2.p3d","ffaa_casas_af\ffaa_casa_hangar_2.p3d","ffaa_casas_af\ffaa_casa_caseta_peq.p3d","lythiumenv\gbr_civ\cartelaeropuerto2.p3d","ffaa_casas_af\ffaa_casa_aeropuerto_torre.p3d","jbad_structures\generalstore\jbad_a_generalstore_01.p3d","jbad_structures\mosque_big\jbad_mosque_big_wall_corner.p3d","jbad_structures\mosque_big\jbad_mosque_big_wall.p3d","jbad_structures\mosque_big\jbad_mosque_big_minaret_2.p3d","jbad_structures\mosque_big\jbad_mosque_big_wall_gate.p3d","jbad_structures\mosque_big\jbad_mosque_big_addon.p3d","jbad_structures\mosque_big\jbad_mosque_big_hq.p3d"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + ["a3\structures_f\ind\solarpowerplant\spp_transformer_f.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_conv1_10.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_conv1_main.p3d","a3\structures_f\ind\factory\factory_tunnel_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_tower_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_transformer_f.p3d","a3\structures_f\ind\factory\factory_conv1_10_f.p3d","a3\structures_f\ind\shed\shed_big_f.p3d","a3\structures_f\ind\shed\shed_small_f.p3d","jbad_structures\ind\hangar_2\jbad_hangar_2.p3d","a3\structures_f\ind\shed\u_shed_ind_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_shed_f.p3d","a3\structures_f\naval\piers\pier_f.p3d","a3\structures_f\ind\factory\factory_main_f.p3d","a3\structures_f\ind\transmitter_tower\tbox_f.p3d","jbad_structures\ind\ind_powerstation\jbad_ind_powerstation.p3d","a3\structures_f\ind\shed\i_shed_ind_f.p3d","jbad_structures\ind\ind_shed\jbad_ind_shed_01.p3d","a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_smallfactory_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_addon1_f.p3d","jbad_misc\misc_powerline\jbad_powlineb.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_addon2_f.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_main.p3d","a3\structures_f\ind\factory\factory_conv2_f.p3d","jbad_misc\misc_powerline\jbad_powlines_transformer1.p3d"];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + ["a3\structures_f\ind\transmitter_tower\tbox_f.p3d","a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d","jbad_misc\misc_com\jbad_com_tower.p3d","a3\structures_f\ind\transmitter_tower\ttowersmall_2_f.p3d","a3\structures_f\ind\transmitter_tower\ttowerbig_2_f.p3d","a3\structures_f\ind\transmitter_tower\communication_f.p3d"];
ALIVE_civilianMarineBuildingTypes = ALIVE_civilianMarineBuildingTypes + [];
ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + [];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + ["jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_conv1_10.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_conv1_main.p3d","a3\structures_f\ind\factory\factory_tunnel_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_tower_f.p3d","a3\structures_f\ind\factory\factory_conv1_10_f.p3d","a3\structures_f\ind\shed\shed_big_f.p3d","a3\structures_f\ind\shed\shed_small_f.p3d","jbad_structures\ind\hangar_2\jbad_hangar_2.p3d","a3\structures_f\ind\shed\u_shed_ind_f.p3d","a3\structures_f\naval\piers\pier_f.p3d","a3\structures_f\ind\factory\factory_main_f.p3d","a3\structures_f\ind\shed\i_shed_ind_f.p3d","jbad_structures\ind\ind_shed\jbad_ind_shed_01.p3d","a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d","a3\structures_f\ind\reservoirtank\reservoirtank_v1_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_smallfactory_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_addon1_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_addon2_f.p3d","jbad_structures\ind\ind_fuelstation\jbad_ind_fuelstation_feed.p3d","jbad_structures\ind\ind_fuelstation\jbad_ind_fuelstation_shed.p3d","a3\structures_f\ind\fuelstation\fuelstation_build_f.p3d","a3\structures_f\ind\reservoirtank\reservoirtower_f.p3d","jbad_structures\ind\ind_coltan_mine\jbad_ind_coltan_main.p3d","a3\structures_f\ind\fuelstation\fuelstation_shed_f.p3d","a3\structures_f\ind\factory\factory_conv2_f.p3d","a3\structures_f\ind\fuelstation_small\fs_feed_f.p3d","a3\structures_f\ind\fuelstation\fuelstation_feed_f.p3d"];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + ["a3\structures_f\ind\shed\shed_small_f.p3d","a3\structures_f\ind\shed\u_shed_ind_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_shed_f.p3d","a3\structures_f\ind\shed\i_shed_ind_f.p3d","jbad_structures\ind\ind_shed\jbad_ind_shed_01.p3d","a3\structures_f\households\wip\unfinished_building_01_f.p3d","a3\structures_f\households\wip\unfinished_building_02_f.p3d","a3\structures_f\ind\concretemixingplant\cmp_shed_ruins_f.p3d","jbad_structures\afghan_house_a\a_buildingwip\jbad_a_buildingwip.p3d","a3\structures_f\ind\crane\crane_f.p3d","ffaa_casas_af\ffaa_casa_barrancon_1.p3d","lythiumenv\gbr_civ\cartelaeropuerto2.p3d"];
};
